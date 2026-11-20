#include <ctype.h>
#include <errno.h>
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_ID          300
#define MAX_SYMBOLES    300
#define MAX_CODE        2000
#define MAX_LEXEME      128

                                                                        
#define erreur      0
#define id          2
#define program     3
#define var         4
#define begin       5
#define end         6
#define writeln     7
#define readln      8
#define pp          9          
#define dp          10         
#define pv          11         
#define v           12         
#define aff         13          
#define po          14         
#define nb          15
#define oparith     16
#define pf          17         
#define oprel       18
#define eof         19
                                                                          
#define intt        20
#define iff         21
#define then        22
#define endif       23

                                            
#define plus        1
#define fois        2

                                          
#define ppe         1           
#define dif         2           
#define ppq         3           
#define pge         4           
#define pgq         5           
#define ega         6           

                                                          
#define TYPE_ERREUR 0
#define TYPE_ENTIER 1
#define TYPE_BOOLEEN 2

                                                                            
typedef struct unilex {
    int ul;
    int att;
} unilex;

                                                                         
typedef struct entree_id {
    char lexeme[MAX_LEXEME];
} entree_id;

                                                                          
typedef struct entree_symbole {
    int num_id;
    int type;
    int adresse;
} entree_symbole;

                                                                         
typedef struct instruction {
    char operation[40];
    char argument[80];
} instruction;

FILE *fp = NULL;
unilex symbole;
char ch[MAX_LEXEME];
char lexeme_courant[MAX_LEXEME];

entree_id tab_iden[MAX_ID];
int nb_id = 0;
entree_symbole table_symboles[MAX_SYMBOLES];
int nb_symboles = 0;
instruction code[MAX_CODE];
int nb_instructions = 0;
int numero_etiquette = 1;

int erreur_lexicale = 0;
int erreur_syntaxique = 0;
int erreur_semantique = 0;
int erreur_code = 0;
int ligne = 1;
int colonne = 0;
int ligne_avant = 1;
int colonne_avant = 0;
int dernier_car = EOF;
int ligne_symbole = 1;
int colonne_symbole = 1;

                                                                               
                                                                                
                                                                               

int carsuivant(void)
{
    int c;
    ligne_avant = ligne;
    colonne_avant = colonne;
    c = fgetc(fp);
    dernier_car = c;
    if (c == '\n') {
        ligne++;
        colonne = 0;
    } else if (c != EOF) {
        colonne++;
    }
    return c;
}

void reculer(int k)
{
    if (k == 1 && dernier_car != EOF) {
        if (ungetc(dernier_car, fp) != EOF) {
            ligne = ligne_avant;
            colonne = colonne_avant;
            dernier_car = EOF;
        }
    }
}

void init_chaine(char chaine[])
{
    chaine[0] = '\0';
}

void ajouter(char c, char chaine[])
{
    size_t n = strlen(chaine);
    if (n + 1 < MAX_LEXEME) {
        chaine[n] = c;
        chaine[n + 1] = '\0';
    } else {
        fprintf(stderr, "Erreur lexicale ligne %d : lexeme trop long.\n", ligne);
        erreur_lexicale = 1;
    }
}

int est_lettre(int c)
{
    return c != EOF && ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'));
}

int est_chiffre(int c)
{
    return c >= '0' && c <= '9';
}

void erreur_caractere(int c)
{
    if (c == EOF) return;
    fprintf(stderr, "Erreur lexicale ligne %d, colonne %d : caractere '%c' non reconnu.\n",
            ligne_symbole, colonne_symbole, (char)c);
    erreur_lexicale = 1;
}

                                                                               
                                                                               
                                                                               

typedef struct mot_cle {
    const char *lexeme;
    int code;
} mot_cle;

mot_cle tab_mots_cles[] = {
    {"program", program},
    {"var", var},
    {"Begin", begin},
    {"End", end},
    {"writeln", writeln},
    {"readln", readln},
    {"int", intt},
    {"if", iff},
    {"then", then},
    {"Endif", endif}
};

#define NB_MOTS_CLES ((int)(sizeof(tab_mots_cles) / sizeof(tab_mots_cles[0])))

int UnilexId(void)
{
    int i;
    for (i = 0; i < NB_MOTS_CLES; i++) {
        if (strcmp(tab_mots_cles[i].lexeme, ch) == 0)
            return tab_mots_cles[i].code;
    }
    return id;
}

int RangerId(int k, int *c)
{
    int i;
    if (k != id) return 0;
    for (i = 0; i < *c; i++) {
        if (strcmp(tab_iden[i].lexeme, ch) == 0)
            return i + 1;
    }
    if (*c >= MAX_ID) {
        fprintf(stderr, "Erreur lexicale : table des identificateurs pleine.\n");
        erreur_lexicale = 1;
        return 0;
    }
    (void)snprintf(tab_iden[*c].lexeme, sizeof(tab_iden[*c].lexeme), "%s", ch);
    (*c)++;
    return *c;
}

                                                                               
                                                                              
                                                                               

unilex AnalLex(void)
{
    int etat = 0;
    int car;
    int car2;
    long valeur;
    char *fin;
    unilex s;

    s.ul = erreur;
    s.att = 0;
    init_chaine(ch);
    init_chaine(lexeme_courant);

    while (1) {
        switch (etat) {
        case 0:                                                         
            init_chaine(ch);
            car = carsuivant();
            if (car == EOF) {
                ligne_symbole = ligne;
                colonne_symbole = colonne + 1;
                s.ul = eof;
                s.att = 0;
                return s;
            }
            ligne_symbole = ligne_avant;
            colonne_symbole = colonne_avant + 1;

            if (car == ' ' || car == '\t' || car == '\n' || car == '\r') {
                etat = 0;
                break;
            }
            if (est_lettre(car)) {
                ajouter((char)car, ch);
                etat = 1;
                break;
            }
            if (est_chiffre(car)) {
                ajouter((char)car, ch);
                etat = 3;
                break;
            }
            if (car == '<') { etat = 5; break; }
            if (car == '>') { etat = 10; break; }
            if (car == '=') { etat = 13; break; }
            if (car == ':') { etat = 15; break; }
            if (car == '(') {
                car2 = carsuivant();
                if (car2 == '*') {
                    etat = 30;                                       
                    break;
                }
                reculer(1);
                s.ul = po;
                s.att = 0;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), "(");
                return s;
            }
            if (car == ')') {
                s.ul = pf; s.att = 0;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), ")");
                return s;
            }
            if (car == ';') {
                s.ul = pv; s.att = 0;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), ";");
                return s;
            }
            if (car == '.') {
                s.ul = pp; s.att = 0;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), ".");
                return s;
            }
            if (car == ',') {
                s.ul = v; s.att = 0;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), ",");
                return s;
            }
            if (car == '+') {
                s.ul = oparith; s.att = plus;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), "+");
                return s;
            }
            if (car == '*') {
                s.ul = oparith; s.att = fois;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), "*");
                return s;
            }
            erreur_caractere(car);
            s.ul = erreur; s.att = 0;
            return s;

        case 1:                                                
            car = carsuivant();
            if (est_lettre(car) || est_chiffre(car)) {
                ajouter((char)car, ch);
                if (erreur_lexicale) { s.ul = erreur; return s; }
                etat = 1;
            } else {
                reculer(1);
                etat = 2;
            }
            break;

        case 2:                                 
            (void)snprintf(lexeme_courant, sizeof(lexeme_courant), "%s", ch);
            s.ul = UnilexId();
            s.att = RangerId(s.ul, &nb_id);
            if (erreur_lexicale) {
                s.ul = erreur;
                s.att = 0;
            }
            return s;

        case 3:                         
            car = carsuivant();
            if (est_chiffre(car)) {
                ajouter((char)car, ch);
                if (erreur_lexicale) { s.ul = erreur; return s; }
                etat = 3;
            } else {
                reculer(1);
                etat = 4;
            }
            break;

        case 4:
            (void)snprintf(lexeme_courant, sizeof(lexeme_courant), "%s", ch);
            errno = 0;
            valeur = strtol(ch, &fin, 10);
            if (errno == ERANGE || *fin != '\0' ||
                valeur > INT_MAX || valeur < 0) {
                fprintf(stderr, "Erreur lexicale ligne %d : entier hors limites (%s).\n",
                        ligne_symbole, ch);
                erreur_lexicale = 1;
                s.ul = erreur; s.att = 0;
                return s;
            }
            s.ul = nb;
            s.att = (int)valeur;
            return s;

        case 5:                                     
            car = carsuivant();
            if (car == '=') etat = 6;
            else if (car == '>') etat = 7;
            else { reculer(1); etat = 8; }
            break;
        case 6:
            s.ul = oprel; s.att = ppe;
            (void)snprintf(lexeme_courant, sizeof(lexeme_courant), "<=");
            return s;
        case 7:
            s.ul = oprel; s.att = dif;
            (void)snprintf(lexeme_courant, sizeof(lexeme_courant), "<>");
            return s;
        case 8:
            s.ul = oprel; s.att = ppq;
            (void)snprintf(lexeme_courant, sizeof(lexeme_courant), "<");
            return s;

        case 10:                                 
            car = carsuivant();
            if (car == '=') etat = 11;
            else { reculer(1); etat = 12; }
            break;
        case 11:
            s.ul = oprel; s.att = pge;
            (void)snprintf(lexeme_courant, sizeof(lexeme_courant), ">=");
            return s;
        case 12:
            s.ul = oprel; s.att = pgq;
            (void)snprintf(lexeme_courant, sizeof(lexeme_courant), ">");
            return s;

        case 13:                                                        
            car = carsuivant();
            if (car == '=') {
                s.ul = oprel; s.att = ega;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), "==");
                return s;
            }
            reculer(1);
            fprintf(stderr, "Erreur lexicale ligne %d, colonne %d : '=' seul interdit, utiliser '=='.\n",
                    ligne_symbole, colonne_symbole);
            erreur_lexicale = 1;
            s.ul = erreur; s.att = 0;
            return s;

        case 15:                   
            car = carsuivant();
            if (car == '=') {
                s.ul = aff; s.att = 0;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), ":=");
                return s;
            }
            reculer(1);
            s.ul = dp; s.att = 0;
            (void)snprintf(lexeme_courant, sizeof(lexeme_courant), ":");
            return s;

        case 30:                                                           
        {
            int etoile = 0;
            while (1) {
                car = carsuivant();
                if (car == EOF) {
                    fprintf(stderr,
                            "Erreur lexicale ligne %d : commentaire commence par '(*' mais non termine par '*)'.\n",
                            ligne_symbole);
                    erreur_lexicale = 1;
                    s.ul = erreur; s.att = 0;
                    return s;
                }
                if (etoile && car == ')') break;
                etoile = (car == '*');
            }
            etat = 0;
            break;
        }

        default:
            s.ul = erreur; s.att = 0;
            erreur_lexicale = 1;
            return s;
        }
    }
}

                                                                               
                                                                              
                                                                               

int rechercher_symbole(int numero_id)
{
    int i;
    for (i = 0; i < nb_symboles; i++) {
        if (table_symboles[i].num_id == numero_id)
            return i;
    }
    return -1;
}

int chercher_type(int numero_id)
{
    int position = rechercher_symbole(numero_id);
    if (position < 0) {
        const char *nom = (numero_id > 0 && numero_id <= nb_id)
                          ? tab_iden[numero_id - 1].lexeme : "identificateur";
        fprintf(stderr, "Erreur semantique ligne %d : l'identificateur '%s' n'est pas declare.\n",
                ligne_symbole, nom);
        erreur_semantique = 1;
        return TYPE_ERREUR;
    }
    return table_symboles[position].type;
}

void ajouter_type(int numero_id, int type)
{
    int position;
    if (numero_id <= 0 || numero_id > nb_id) {
        erreur_semantique = 1;
        return;
    }
    position = rechercher_symbole(numero_id);
    if (position >= 0) {
        fprintf(stderr, "Erreur semantique ligne %d : declaration multiple de '%s'.\n",
                ligne_symbole, tab_iden[numero_id - 1].lexeme);
        erreur_semantique = 1;
        return;
    }
    if (nb_symboles >= MAX_SYMBOLES) {
        fprintf(stderr, "Erreur semantique : table des symboles pleine.\n");
        erreur_semantique = 1;
        return;
    }
    table_symboles[nb_symboles].num_id = numero_id;
    table_symboles[nb_symboles].type = type;
    table_symboles[nb_symboles].adresse = nb_symboles + 1;
    nb_symboles++;
}

int compatible(int type1, int type2)
{
    return type1 != TYPE_ERREUR && type1 == type2;
}

                                                                               
                                                                               
                                                                               

void Emettre(const char *operation, const char *argument)
{
    if (nb_instructions >= MAX_CODE) {
        if (!erreur_code) {
            fprintf(stderr, "Erreur : zone du code intermediaire pleine.\n");
            erreur_code = 1;
        }
        erreur_semantique = 1;
        return;
    }
    (void)snprintf(code[nb_instructions].operation,
                   sizeof(code[nb_instructions].operation), "%s", operation);
    (void)snprintf(code[nb_instructions].argument,
                   sizeof(code[nb_instructions].argument), "%s",
                   argument != NULL ? argument : "");
    nb_instructions++;
}

int creer_etiquette(void)
{
    return numero_etiquette++;
}

void adresse_id(int numero_id, char resultat[], size_t taille)
{
    int position = rechercher_symbole(numero_id);
    if (position < 0) {
        (void)snprintf(resultat, taille, "@?");
    } else {
        (void)snprintf(resultat, taille, "@%s",
                       tab_iden[table_symboles[position].num_id - 1].lexeme);
    }
}

const char *nom_oprel(int attribut)
{
    switch (attribut) {
        case ppe: return "<=";
        case dif: return "<>";
        case ppq: return "<";
        case pge: return ">=";
        case pgq: return ">";
        case ega: return "==";
        default: return "?";
    }
}

                                                                             
                                                                             
void EmettreComparaison(int attribut)
{
    switch (attribut) {
        case ppq: Emettre("Comparer-si-inf", ""); break;
        case pgq: Emettre("Comparer-si-sup", ""); break;
        case ega: Emettre("Comparer-si-egal", ""); break;
        case dif: Emettre("Comparer-si-egal", ""); break;
        case ppe: Emettre("Comparer-si-sup", ""); break;
        case pge: Emettre("Comparer-si-inf", ""); break;
        default: break;
    }
}

void EmettreSautSiConditionFausse(int attribut, int etiquette)
{
    char argument[32];
    (void)snprintf(argument, sizeof(argument), "L%d", etiquette);
    if (attribut == dif || attribut == ppe || attribut == pge)
        Emettre("Aller-si-vrai", argument);
    else
        Emettre("Aller-si-faux", argument);
}

void afficher_code(void)
{
    int i;
    printf("\nCODE INTERMEDIAIRE POUR LA MACHINE ABSTRAITE A PILE\n");
    printf("---------------------------------------------------\n");
    for (i = 0; i < nb_instructions; i++) {
        printf("%3d  %-20s %s\n", i + 1,
               code[i].operation, code[i].argument);
    }
}

                                                                               
                                                                             
                                                                               

void accepter(int T);
void P(void);
void Dcl(void);
void Liste_id(void);
void L1(void);
void Liste_inst(void);
void I1(void);
void I(void);
void C(int *type_condition, int *operateur);
void Exp(int *type_expression);
void E1(int *type_expression);

const char *nom_ul(int ul)
{
    switch (ul) {
        case id: return "id";
        case program: return "program";
        case var: return "var";
        case begin: return "Begin";
        case end: return "End";
        case writeln: return "writeln";
        case readln: return "readln";
        case pp: return ".";
        case dp: return ":";
        case pv: return ";";
        case v: return ",";
        case aff: return ":=";
        case po: return "(";
        case nb: return "nb";
        case oparith: return "oparith";
        case pf: return ")";
        case oprel: return "oprel";
        case eof: return "EOF";
        case intt: return "int";
        case iff: return "if";
        case then: return "then";
        case endif: return "Endif";
        default: return "erreur";
    }
}

void erreur_syntaxe_attendue(int T)
{
    if (erreur_lexicale || erreur_syntaxique) return;
    fprintf(stderr,
            "Erreur syntaxique ligne %d, colonne %d : '%s' attendu, '%s' rencontre.\n",
            ligne_symbole, colonne_symbole, nom_ul(T), nom_ul(symbole.ul));
    erreur_syntaxique = 1;
}

void accepter(int T)
{
    if (erreur_syntaxique || erreur_lexicale) return;
    if (symbole.ul == T) {
        symbole = AnalLex();
    } else {
        erreur_syntaxe_attendue(T);
    }
}

                                                  
void P(void)
{
    if (erreur_lexicale || erreur_syntaxique) return;
    if (symbole.ul == program) {
        accepter(program);
        accepter(id);
        accepter(pv);
        Dcl();
        accepter(begin);
        Liste_inst();
        accepter(end);
        accepter(pp);
        if (!erreur_syntaxique && symbole.ul != eof)
            erreur_syntaxe_attendue(eof);
        if (!erreur_syntaxique && !erreur_lexicale && !erreur_semantique)
            Emettre("Halte", "");
    } else {
        erreur_syntaxe_attendue(program);
    }
}

                                 
void Dcl(void)
{
    if (erreur_lexicale || erreur_syntaxique) return;
    if (symbole.ul == var) {
        accepter(var);
        Liste_id();
        accepter(dp);
        accepter(intt);
        accepter(pv);
    } else {
        erreur_syntaxe_attendue(var);
    }
}

                       
void Liste_id(void)
{
    if (erreur_lexicale || erreur_syntaxique) return;
    if (symbole.ul == id) {
        int numero = symbole.att;
        accepter(id);
        ajouter_type(numero, TYPE_ENTIER);
        L1();
    } else {
        erreur_syntaxe_attendue(id);
    }
}

                                
void L1(void)
{
    if (erreur_lexicale || erreur_syntaxique) return;
    if (symbole.ul == v) {
        accepter(v);
        Liste_id();
    } else if (symbole.ul == dp) {
                                                     
    } else {
        erreur_syntaxe_attendue(v);
    }
}

                        
void Liste_inst(void)
{
    if (erreur_lexicale || erreur_syntaxique) return;
    I();
    I1();
}

                                
void I1(void)
{
    if (erreur_lexicale || erreur_syntaxique) return;
    if (symbole.ul == id || symbole.ul == writeln ||
        symbole.ul == readln || symbole.ul == iff) {
        Liste_inst();
    } else if (symbole.ul == end || symbole.ul == endif) {
                                                       
    } else {
        erreur_syntaxe_attendue(id);
    }
}

                                                                               
void I(void)
{
    if (erreur_lexicale || erreur_syntaxique) return;
    if (symbole.ul == id) {
        int numero = symbole.att;
        int type_id = chercher_type(numero);
        int type_exp = TYPE_ERREUR;
        char adresse[80];

        adresse_id(numero, adresse, sizeof(adresse));
        Emettre("Valeurg", adresse);
        accepter(id);
        accepter(aff);
        Exp(&type_exp);
        if (!erreur_lexicale && !erreur_syntaxique &&
            type_id != TYPE_ERREUR && type_exp != TYPE_ERREUR &&
            !compatible(type_id, type_exp)) {
            fprintf(stderr, "Erreur semantique ligne %d : type incompatible dans l'affectation.\n",
                    ligne_symbole);
            erreur_semantique = 1;
        }
        accepter(pv);
        Emettre(":=", "");
    }
    else if (symbole.ul == writeln) {
        int numero;
        char adresse[80];
        accepter(writeln);
        accepter(po);
        if (symbole.ul == id) {
            numero = symbole.att;
            (void)chercher_type(numero);
            adresse_id(numero, adresse, sizeof(adresse));
            Emettre("Valeurd", adresse);
            accepter(id);
        } else {
            erreur_syntaxe_attendue(id);
        }
        accepter(pf);
        accepter(pv);
                                                                             
        Emettre("Ecrire", "");
    }
    else if (symbole.ul == readln) {
        int numero;
        char adresse[80];
        accepter(readln);
        accepter(po);
        if (symbole.ul == id) {
            numero = symbole.att;
            (void)chercher_type(numero);
            adresse_id(numero, adresse, sizeof(adresse));
            Emettre("Valeurg", adresse);
            accepter(id);
        } else {
            erreur_syntaxe_attendue(id);
        }
        accepter(pf);
        accepter(pv);
                                                                               
        Emettre("Lire", "");
        Emettre(":=", "");
    }
    else if (symbole.ul == iff) {
        int type_condition = TYPE_ERREUR;
        int operateur = 0;
        int etiquette = creer_etiquette();
        char nom_etiquette[32];

        accepter(iff);
        C(&type_condition, &operateur);
        if (type_condition != TYPE_BOOLEEN && type_condition != TYPE_ERREUR) {
            fprintf(stderr, "Erreur semantique ligne %d : condition de type booleen attendue.\n",
                    ligne_symbole);
            erreur_semantique = 1;
        }
        EmettreSautSiConditionFausse(operateur, etiquette);
        accepter(then);
        Liste_inst();
        accepter(endif);
        (void)snprintf(nom_etiquette, sizeof(nom_etiquette), "L%d", etiquette);
        Emettre("Etiq", nom_etiquette);
    }
    else {
        erreur_syntaxe_attendue(id);
    }
}

                                                                               
void C(int *type_condition, int *operateur)
{
    if (erreur_lexicale || erreur_syntaxique) {
        *type_condition = TYPE_ERREUR;
        *operateur = 0;
        return;
    }
    int type1 = TYPE_ERREUR;
    int type2 = TYPE_ERREUR;

    Exp(&type1);
    if (symbole.ul == oprel) {
        *operateur = symbole.att;
        accepter(oprel);
    } else {
        erreur_syntaxe_attendue(oprel);
        return;
    }
    Exp(&type2);

    if (type1 == TYPE_ERREUR || type2 == TYPE_ERREUR) {
        *type_condition = TYPE_ERREUR;
    } else if (type1 != TYPE_ENTIER || type2 != TYPE_ENTIER) {
        fprintf(stderr, "Erreur semantique ligne %d : les deux operandes de '%s' doivent etre entiers.\n",
                ligne_symbole, nom_oprel(*operateur));
        erreur_semantique = 1;
        *type_condition = TYPE_ERREUR;
    } else {
        *type_condition = TYPE_BOOLEEN;
    }
    EmettreComparaison(*operateur);
}

                                     
void Exp(int *type_expression)
{
    if (erreur_lexicale || erreur_syntaxique) {
        *type_expression = TYPE_ERREUR;
        return;
    }
    if (symbole.ul == id) {
        int numero = symbole.att;
        int type_id = chercher_type(numero);
        char adresse[80];
        adresse_id(numero, adresse, sizeof(adresse));
        Emettre("Valeurd", adresse);
        accepter(id);
        *type_expression = type_id;
        E1(type_expression);
    }
    else if (symbole.ul == nb) {
        char valeur[40];
        (void)snprintf(valeur, sizeof(valeur), "%d", symbole.att);
        Emettre("Empiler", valeur);
        accepter(nb);
        *type_expression = TYPE_ENTIER;
        E1(type_expression);
    }
    else if (symbole.ul == po) {
        accepter(po);
        Exp(type_expression);
        accepter(pf);
        E1(type_expression);
    }
    else {
        erreur_syntaxe_attendue(id);
        *type_expression = TYPE_ERREUR;
    }
}

                                    
void E1(int *type_expression)
{
    if (erreur_lexicale || erreur_syntaxique) return;
    if (symbole.ul == oparith) {
        int operateur = symbole.att;
        int type_droit = TYPE_ERREUR;
        accepter(oparith);
        Exp(&type_droit);

        if (*type_expression == TYPE_ERREUR || type_droit == TYPE_ERREUR) {
            *type_expression = TYPE_ERREUR;
        } else if (*type_expression != TYPE_ENTIER || type_droit != TYPE_ENTIER) {
            fprintf(stderr, "Erreur semantique ligne %d : les operandes de '%s' doivent etre entiers.\n",
                    ligne_symbole, operateur == plus ? "+" : "*");
            erreur_semantique = 1;
            *type_expression = TYPE_ERREUR;
        } else {
            *type_expression = TYPE_ENTIER;
        }
        Emettre(operateur == plus ? "+" : "*", "");
        E1(type_expression);
    }
    else if (symbole.ul == pv || symbole.ul == pf ||
             symbole.ul == oprel || symbole.ul == then) {
                                                                               
    }
    else {
        erreur_syntaxe_attendue(oparith);
    }
}

                                                                               
                                                                                
                                                                               

void afficher_unite(unilex s)
{
    printf("UL=%-10s code=%2d", nom_ul(s.ul), s.ul);
    if (s.ul == id) {
        printf(" att=%d lexeme=%s", s.att,
               (s.att > 0 && s.att <= nb_id) ? tab_iden[s.att - 1].lexeme : "?");
    } else if (s.ul == nb) {
        printf(" att=%d", s.att);
    } else if (s.ul == oparith) {
        printf(" att=%s", s.att == plus ? "+" : "*");
    } else if (s.ul == oprel) {
        printf(" att=%s", nom_oprel(s.att));
    }
    printf("\n");
}

void afficher_table_identificateurs(void)
{
    int i;
    printf("\nTABLE DES IDENTIFICATEURS\n");
    printf("--------------------------\n");
    printf("%-8s %-24s\n", "Numero", "Lexeme");
    for (i = 0; i < nb_id; i++)
        printf("%-8d %-24s\n", i + 1, tab_iden[i].lexeme);
}

void afficher_table_symboles(void)
{
    int i;
    printf("\nTABLE DES SYMBOLES\n");
    printf("-------------------\n");
    printf("%-8s %-20s %-12s %-10s\n", "Numero", "Lexeme", "Type", "Adresse");
    for (i = 0; i < nb_symboles; i++) {
        int n = table_symboles[i].num_id;
        printf("%-8d %-20s %-12s @%s\n", n,
               tab_iden[n - 1].lexeme,
               table_symboles[i].type == TYPE_ENTIER ? "int" : "inconnu",
               tab_iden[n - 1].lexeme);
    }
}

int analyser_tous_les_symboles(void)
{
    int nombre = 0;
    symbole = AnalLex();
    while (symbole.ul != eof && symbole.ul != erreur) {
        afficher_unite(symbole);
        nombre++;
        symbole = AnalLex();
    }
    if (symbole.ul == erreur || erreur_lexicale) return 0;
    afficher_unite(symbole);
    printf("\nNombre d'unites lexicales (hors EOF) : %d\n", nombre);
    afficher_table_identificateurs();
    return 1;
}

void afficher_aide(const char *nom_programme)
{
    printf("Utilisation : %s [--tokens] fichier_source\n", nom_programme);
    printf("  sans argument : demander le chemin du fichier source dans la console\n");
    printf("  sans option : AL + AS predictif descendant recursif + controle semantique + code a pile\n");
    printf("  --tokens    : afficher les unites lexicales retournees par AnalLex()\n");
}

int main(int argc, char *argv[])
{
    char nom_fichier_saisi[1024];
    const char *nom_fichier;
    int mode_tokens = 0;

    if (argc == 2 && (strcmp(argv[1], "-h") == 0 || strcmp(argv[1], "--help") == 0)) {
        afficher_aide(argv[0]);
        return 0;
    }
    if (argc == 3 && strcmp(argv[1], "--tokens") == 0) {
        mode_tokens = 1;
        nom_fichier = argv[2];
    } else if (argc == 2) {
        nom_fichier = argv[1];
    } else if (argc == 1) {
        size_t longueur;
        printf("Chemin du fichier source : ");
        (void)fflush(stdout);
        if (fgets(nom_fichier_saisi, sizeof(nom_fichier_saisi), stdin) == NULL) {
            fprintf(stderr, "Erreur : aucun chemin de fichier source fourni.\n");
            return 1;
        }
        longueur = strcspn(nom_fichier_saisi, "\r\n");
        nom_fichier_saisi[longueur] = '\0';
        if (longueur == 0) {
            fprintf(stderr, "Erreur : le chemin du fichier source est vide.\n");
            return 1;
        }
        nom_fichier = nom_fichier_saisi;
    } else {
        afficher_aide(argv[0]);
        return 1;
    }

    fp = fopen(nom_fichier, "r");
    if (fp == NULL) {
        perror("Impossible d'ouvrir le fichier source");
        return 1;
    }

    if (mode_tokens) {
        int ok = analyser_tous_les_symboles();
        fclose(fp);
        return ok ? 0 : 1;
    }

    printf("Analyse du fichier : %s\n", nom_fichier);
    symbole = AnalLex();
    if (symbole.ul == erreur || erreur_lexicale) {
        fclose(fp);
        return 1;
    }

    P();

    if (!erreur_lexicale && !erreur_syntaxique && !erreur_semantique) {
        printf("\nAnalyse lexicale : correcte.\n");
        printf("Analyse syntaxique : correcte (grammaire G').\n");
        printf("Controle semantique : correct (identificateurs declares, type int).\n");
        afficher_table_identificateurs();
        afficher_table_symboles();
        afficher_code();
        printf("\nProgramme accepte.\n");
    } else {
        printf("\nProgramme refuse :");
        if (erreur_lexicale) printf(" erreur lexicale");
        if (erreur_syntaxique) printf(" erreur syntaxique");
        if (erreur_semantique) printf(" erreur semantique");
        printf(".\n");
    }

    fclose(fp);
    return (erreur_lexicale || erreur_syntaxique || erreur_semantique) ? 1 : 0;
}
