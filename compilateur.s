	.file	"compilateur.c"
	.text
	.def	_fprintf;	.scl	3;	.type	32;	.endef
_fprintf:
LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	leal	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	___mingw_vfprintf
	movl	%eax, %ebx
	movl	%ebx, %eax
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.def	_printf;	.scl	3;	.type	32;	.endef
_printf:
LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	leal	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	___mingw_vprintf
	movl	%eax, %ebx
	movl	%ebx, %eax
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.globl	_fp
	.bss
	.align 4
_fp:
	.space 4
	.comm	_symbole, 8, 2
	.comm	_ch, 128, 5
	.comm	_lexeme_courant, 128, 5
	.comm	_tab_iden, 38400, 5
	.globl	_nb_id
	.align 4
_nb_id:
	.space 4
	.comm	_table_symboles, 3600, 5
	.globl	_nb_symboles
	.align 4
_nb_symboles:
	.space 4
	.comm	_code, 240000, 5
	.globl	_nb_instructions
	.align 4
_nb_instructions:
	.space 4
	.globl	_numero_etiquette
	.data
	.align 4
_numero_etiquette:
	.long	1
	.globl	_erreur_lexicale
	.bss
	.align 4
_erreur_lexicale:
	.space 4
	.globl	_erreur_syntaxique
	.align 4
_erreur_syntaxique:
	.space 4
	.globl	_erreur_semantique
	.align 4
_erreur_semantique:
	.space 4
	.globl	_erreur_code
	.align 4
_erreur_code:
	.space 4
	.globl	_ligne
	.data
	.align 4
_ligne:
	.long	1
	.globl	_colonne
	.bss
	.align 4
_colonne:
	.space 4
	.globl	_ligne_avant
	.data
	.align 4
_ligne_avant:
	.long	1
	.globl	_colonne_avant
	.bss
	.align 4
_colonne_avant:
	.space 4
	.globl	_dernier_car
	.data
	.align 4
_dernier_car:
	.long	-1
	.globl	_ligne_symbole
	.align 4
_ligne_symbole:
	.long	1
	.globl	_colonne_symbole
	.align 4
_colonne_symbole:
	.long	1
	.text
	.globl	_carsuivant
	.def	_carsuivant;	.scl	2;	.type	32;	.endef
_carsuivant:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	_ligne, %eax
	movl	%eax, _ligne_avant
	movl	_colonne, %eax
	movl	%eax, _colonne_avant
	movl	_fp, %eax
	movl	%eax, (%esp)
	call	_fgetc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, _dernier_car
	cmpl	$10, -12(%ebp)
	jne	L6
	movl	_ligne, %eax
	addl	$1, %eax
	movl	%eax, _ligne
	movl	$0, _colonne
	jmp	L7
L6:
	cmpl	$-1, -12(%ebp)
	je	L7
	movl	_colonne, %eax
	addl	$1, %eax
	movl	%eax, _colonne
L7:
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.globl	_reculer
	.def	_reculer;	.scl	2;	.type	32;	.endef
_reculer:
LFB14:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$1, 8(%ebp)
	jne	L11
	movl	_dernier_car, %eax
	cmpl	$-1, %eax
	je	L11
	movl	_fp, %edx
	movl	_dernier_car, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ungetc
	cmpl	$-1, %eax
	je	L11
	movl	_ligne_avant, %eax
	movl	%eax, _ligne
	movl	_colonne_avant, %eax
	movl	%eax, _colonne
	movl	$-1, _dernier_car
L11:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.globl	_init_chaine
	.def	_init_chaine;	.scl	2;	.type	32;	.endef
_init_chaine:
LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movb	$0, (%eax)
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "Erreur lexicale ligne %d : lexeme trop long.\12\0"
	.text
	.globl	_ajouter
	.def	_ajouter;	.scl	2;	.type	32;	.endef
_ajouter:
LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movb	%al, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	addl	$1, %eax
	cmpl	$127, %eax
	ja	L14
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movzbl	-28(%ebp), %eax
	movb	%al, (%edx)
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	jmp	L16
L14:
	movl	_ligne, %eax
	movl	%eax, 8(%esp)
	movl	$LC0, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, _erreur_lexicale
L16:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.globl	_est_lettre
	.def	_est_lettre;	.scl	2;	.type	32;	.endef
_est_lettre:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	cmpl	$-1, 8(%ebp)
	je	L18
	cmpl	$96, 8(%ebp)
	jle	L19
	cmpl	$122, 8(%ebp)
	jle	L20
L19:
	cmpl	$64, 8(%ebp)
	jle	L18
	cmpl	$90, 8(%ebp)
	jg	L18
L20:
	movl	$1, %eax
	jmp	L22
L18:
	movl	$0, %eax
L22:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.globl	_est_chiffre
	.def	_est_chiffre;	.scl	2;	.type	32;	.endef
_est_chiffre:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	cmpl	$47, 8(%ebp)
	jle	L24
	cmpl	$57, 8(%ebp)
	jg	L24
	movl	$1, %eax
	jmp	L26
L24:
	movl	$0, %eax
L26:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.section .rdata,"dr"
	.align 4
LC1:
	.ascii "Erreur lexicale ligne %d, colonne %d : caractere '%c' non reconnu.\12\0"
	.text
	.globl	_erreur_caractere
	.def	_erreur_caractere;	.scl	2;	.type	32;	.endef
_erreur_caractere:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	cmpl	$-1, 8(%ebp)
	je	L30
	movl	8(%ebp), %eax
	movsbl	%al, %ecx
	movl	_colonne_symbole, %edx
	movl	_ligne_symbole, %eax
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, _erreur_lexicale
	jmp	L27
L30:
	nop
L27:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.globl	_tab_mots_cles
	.section .rdata,"dr"
LC2:
	.ascii "program\0"
LC3:
	.ascii "var\0"
LC4:
	.ascii "Begin\0"
LC5:
	.ascii "End\0"
LC6:
	.ascii "writeln\0"
LC7:
	.ascii "readln\0"
LC8:
	.ascii "int\0"
LC9:
	.ascii "if\0"
LC10:
	.ascii "then\0"
LC11:
	.ascii "Endif\0"
	.data
	.align 32
_tab_mots_cles:
	.long	LC2
	.long	3
	.long	LC3
	.long	4
	.long	LC4
	.long	5
	.long	LC5
	.long	6
	.long	LC6
	.long	7
	.long	LC7
	.long	8
	.long	LC8
	.long	20
	.long	LC9
	.long	21
	.long	LC10
	.long	22
	.long	LC11
	.long	23
	.text
	.globl	_UnilexId
	.def	_UnilexId;	.scl	2;	.type	32;	.endef
_UnilexId:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L32
L35:
	movl	-12(%ebp), %eax
	movl	_tab_mots_cles(,%eax,8), %eax
	movl	$_ch, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L33
	movl	-12(%ebp), %eax
	movl	_tab_mots_cles+4(,%eax,8), %eax
	jmp	L34
L33:
	addl	$1, -12(%ebp)
L32:
	cmpl	$9, -12(%ebp)
	jle	L35
	movl	$2, %eax
L34:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.section .rdata,"dr"
	.align 4
LC12:
	.ascii "Erreur lexicale : table des identificateurs pleine.\12\0"
LC13:
	.ascii "%s\0"
	.text
	.globl	_RangerId
	.def	_RangerId;	.scl	2;	.type	32;	.endef
_RangerId:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	cmpl	$2, 8(%ebp)
	je	L37
	movl	$0, %eax
	jmp	L38
L37:
	movl	$0, -12(%ebp)
	jmp	L39
L41:
	movl	-12(%ebp), %eax
	sall	$7, %eax
	addl	$_tab_iden, %eax
	movl	$_ch, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L40
	movl	-12(%ebp), %eax
	addl	$1, %eax
	jmp	L38
L40:
	addl	$1, -12(%ebp)
L39:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-12(%ebp), %eax
	jg	L41
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$299, %eax
	jle	L42
	movl	$LC12, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, _erreur_lexicale
	movl	$0, %eax
	jmp	L38
L42:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	sall	$7, %eax
	addl	$_tab_iden, %eax
	movl	$_ch, 12(%esp)
	movl	$LC13, 8(%esp)
	movl	$128, 4(%esp)
	movl	%eax, (%esp)
	call	_snprintf
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	12(%ebp), %eax
	movl	(%eax), %eax
L38:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.section .rdata,"dr"
	.align 4
LC14:
	.ascii "Erreur lexicale ligne %d : entier hors limites (%s).\12\0"
	.align 4
LC15:
	.ascii "Erreur lexicale ligne %d, colonne %d : '=' seul interdit, utiliser '=='.\12\0"
	.align 4
LC16:
	.ascii "Erreur lexicale ligne %d : commentaire commence par '(*' mais non termine par '*)'.\12\0"
	.text
	.globl	_AnalLex
	.def	_AnalLex;	.scl	2;	.type	32;	.endef
_AnalLex:
LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	$0, -12(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$_ch, (%esp)
	call	_init_chaine
	movl	$_lexeme_courant, (%esp)
	call	_init_chaine
L101:
	cmpl	$30, -12(%ebp)
	ja	L44
	movl	-12(%ebp), %eax
	sall	$2, %eax
	addl	$L46, %eax
	movl	(%eax), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L46:
	.long	L45
	.long	L47
	.long	L48
	.long	L49
	.long	L50
	.long	L51
	.long	L52
	.long	L53
	.long	L54
	.long	L44
	.long	L55
	.long	L56
	.long	L57
	.long	L58
	.long	L44
	.long	L59
	.long	L44
	.long	L44
	.long	L44
	.long	L44
	.long	L44
	.long	L44
	.long	L44
	.long	L44
	.long	L44
	.long	L44
	.long	L44
	.long	L44
	.long	L44
	.long	L44
	.long	L60
	.text
L45:
	movl	$_ch, (%esp)
	call	_init_chaine
	call	_carsuivant
	movl	%eax, -20(%ebp)
	cmpl	$-1, -20(%ebp)
	jne	L61
	movl	_ligne, %eax
	movl	%eax, _ligne_symbole
	movl	_colonne, %eax
	addl	$1, %eax
	movl	%eax, _colonne_symbole
	movl	$19, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L61:
	movl	_ligne_avant, %eax
	movl	%eax, _ligne_symbole
	movl	_colonne_avant, %eax
	addl	$1, %eax
	movl	%eax, _colonne_symbole
	cmpl	$32, -20(%ebp)
	je	L63
	cmpl	$9, -20(%ebp)
	je	L63
	cmpl	$10, -20(%ebp)
	je	L63
	cmpl	$13, -20(%ebp)
	jne	L64
L63:
	movl	$0, -12(%ebp)
	jmp	L65
L64:
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_est_lettre
	testl	%eax, %eax
	je	L66
	movl	-20(%ebp), %eax
	movsbl	%al, %eax
	movl	$_ch, 4(%esp)
	movl	%eax, (%esp)
	call	_ajouter
	movl	$1, -12(%ebp)
	jmp	L65
L66:
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_est_chiffre
	testl	%eax, %eax
	je	L67
	movl	-20(%ebp), %eax
	movsbl	%al, %eax
	movl	$_ch, 4(%esp)
	movl	%eax, (%esp)
	call	_ajouter
	movl	$3, -12(%ebp)
	jmp	L65
L67:
	cmpl	$60, -20(%ebp)
	jne	L68
	movl	$5, -12(%ebp)
	jmp	L65
L68:
	cmpl	$62, -20(%ebp)
	jne	L69
	movl	$10, -12(%ebp)
	jmp	L65
L69:
	cmpl	$61, -20(%ebp)
	jne	L70
	movl	$13, -12(%ebp)
	jmp	L65
L70:
	cmpl	$58, -20(%ebp)
	jne	L71
	movl	$15, -12(%ebp)
	jmp	L65
L71:
	cmpl	$40, -20(%ebp)
	jne	L72
	call	_carsuivant
	movl	%eax, -24(%ebp)
	cmpl	$42, -24(%ebp)
	jne	L73
	movl	$30, -12(%ebp)
	jmp	L65
L73:
	movl	$1, (%esp)
	call	_reculer
	movl	$14, -40(%ebp)
	movl	$0, -36(%ebp)
	movw	$40, _lexeme_courant
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L72:
	cmpl	$41, -20(%ebp)
	jne	L74
	movl	$17, -40(%ebp)
	movl	$0, -36(%ebp)
	movw	$41, _lexeme_courant
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L74:
	cmpl	$59, -20(%ebp)
	jne	L75
	movl	$11, -40(%ebp)
	movl	$0, -36(%ebp)
	movw	$59, _lexeme_courant
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L75:
	cmpl	$46, -20(%ebp)
	jne	L76
	movl	$9, -40(%ebp)
	movl	$0, -36(%ebp)
	movw	$46, _lexeme_courant
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L76:
	cmpl	$44, -20(%ebp)
	jne	L77
	movl	$12, -40(%ebp)
	movl	$0, -36(%ebp)
	movw	$44, _lexeme_courant
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L77:
	cmpl	$43, -20(%ebp)
	jne	L78
	movl	$16, -40(%ebp)
	movl	$1, -36(%ebp)
	movw	$43, _lexeme_courant
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L78:
	cmpl	$42, -20(%ebp)
	jne	L79
	movl	$16, -40(%ebp)
	movl	$2, -36(%ebp)
	movw	$42, _lexeme_courant
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L79:
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_erreur_caractere
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L47:
	call	_carsuivant
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_est_lettre
	testl	%eax, %eax
	jne	L80
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_est_chiffre
	testl	%eax, %eax
	je	L81
L80:
	movl	-20(%ebp), %eax
	movsbl	%al, %eax
	movl	$_ch, 4(%esp)
	movl	%eax, (%esp)
	call	_ajouter
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	je	L82
	movl	$0, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L82:
	movl	$1, -12(%ebp)
	jmp	L65
L81:
	movl	$1, (%esp)
	call	_reculer
	movl	$2, -12(%ebp)
	jmp	L65
L48:
	movl	$_ch, 12(%esp)
	movl	$LC13, 8(%esp)
	movl	$128, 4(%esp)
	movl	$_lexeme_courant, (%esp)
	call	_snprintf
	call	_UnilexId
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	$_nb_id, 4(%esp)
	movl	%eax, (%esp)
	call	_RangerId
	movl	%eax, -36(%ebp)
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	je	L84
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
L84:
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L49:
	call	_carsuivant
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_est_chiffre
	testl	%eax, %eax
	je	L85
	movl	-20(%ebp), %eax
	movsbl	%al, %eax
	movl	$_ch, 4(%esp)
	movl	%eax, (%esp)
	call	_ajouter
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	je	L86
	movl	$0, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L86:
	movl	$3, -12(%ebp)
	jmp	L65
L85:
	movl	$1, (%esp)
	call	_reculer
	movl	$4, -12(%ebp)
	jmp	L65
L50:
	movl	$_ch, 12(%esp)
	movl	$LC13, 8(%esp)
	movl	$128, 4(%esp)
	movl	$_lexeme_courant, (%esp)
	call	_snprintf
	call	__errno
	movl	$0, (%eax)
	movl	$10, 8(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_ch, (%esp)
	call	_strtol
	movl	%eax, -28(%ebp)
	call	__errno
	movl	(%eax), %eax
	cmpl	$34, %eax
	je	L88
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L88
	cmpl	$0, -28(%ebp)
	jns	L89
L88:
	movl	_ligne_symbole, %eax
	movl	$_ch, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC14, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, _erreur_lexicale
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L89:
	movl	$15, -40(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L51:
	call	_carsuivant
	movl	%eax, -20(%ebp)
	cmpl	$61, -20(%ebp)
	jne	L90
	movl	$6, -12(%ebp)
	jmp	L65
L90:
	cmpl	$62, -20(%ebp)
	jne	L92
	movl	$7, -12(%ebp)
	jmp	L65
L92:
	movl	$1, (%esp)
	call	_reculer
	movl	$8, -12(%ebp)
	jmp	L65
L52:
	movl	$18, -40(%ebp)
	movl	$1, -36(%ebp)
	movw	$15676, _lexeme_courant
	movb	$0, _lexeme_courant+2
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L53:
	movl	$18, -40(%ebp)
	movl	$2, -36(%ebp)
	movw	$15932, _lexeme_courant
	movb	$0, _lexeme_courant+2
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L54:
	movl	$18, -40(%ebp)
	movl	$3, -36(%ebp)
	movw	$60, _lexeme_courant
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L55:
	call	_carsuivant
	movl	%eax, -20(%ebp)
	cmpl	$61, -20(%ebp)
	jne	L93
	movl	$11, -12(%ebp)
	jmp	L65
L93:
	movl	$1, (%esp)
	call	_reculer
	movl	$12, -12(%ebp)
	jmp	L65
L56:
	movl	$18, -40(%ebp)
	movl	$4, -36(%ebp)
	movw	$15678, _lexeme_courant
	movb	$0, _lexeme_courant+2
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L57:
	movl	$18, -40(%ebp)
	movl	$5, -36(%ebp)
	movw	$62, _lexeme_courant
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L58:
	call	_carsuivant
	movl	%eax, -20(%ebp)
	cmpl	$61, -20(%ebp)
	jne	L95
	movl	$18, -40(%ebp)
	movl	$6, -36(%ebp)
	movw	$15677, _lexeme_courant
	movb	$0, _lexeme_courant+2
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L95:
	movl	$1, (%esp)
	call	_reculer
	movl	_colonne_symbole, %edx
	movl	_ligne_symbole, %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC15, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, _erreur_lexicale
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L59:
	call	_carsuivant
	movl	%eax, -20(%ebp)
	cmpl	$61, -20(%ebp)
	jne	L96
	movl	$13, -40(%ebp)
	movl	$0, -36(%ebp)
	movw	$15674, _lexeme_courant
	movb	$0, _lexeme_courant+2
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L96:
	movl	$1, (%esp)
	call	_reculer
	movl	$10, -40(%ebp)
	movl	$0, -36(%ebp)
	movw	$58, _lexeme_courant
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L60:
	movl	$0, -16(%ebp)
L100:
	call	_carsuivant
	movl	%eax, -20(%ebp)
	cmpl	$-1, -20(%ebp)
	jne	L97
	movl	_ligne_symbole, %eax
	movl	%eax, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, _erreur_lexicale
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L97:
	cmpl	$0, -16(%ebp)
	je	L98
	cmpl	$41, -20(%ebp)
	je	L104
L98:
	cmpl	$42, -20(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%ebp)
	jmp	L100
L104:
	nop
	movl	$0, -12(%ebp)
	jmp	L65
L44:
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$1, _erreur_lexicale
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	jmp	L102
L65:
	jmp	L101
L102:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.globl	_rechercher_symbole
	.def	_rechercher_symbole;	.scl	2;	.type	32;	.endef
_rechercher_symbole:
LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	$0, -4(%ebp)
	jmp	L106
L109:
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_table_symboles, %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	L107
	movl	-4(%ebp), %eax
	jmp	L108
L107:
	addl	$1, -4(%ebp)
L106:
	movl	_nb_symboles, %eax
	cmpl	%eax, -4(%ebp)
	jl	L109
	movl	$-1, %eax
L108:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE23:
	.section .rdata,"dr"
LC17:
	.ascii "identificateur\0"
	.align 4
LC18:
	.ascii "Erreur semantique ligne %d : l'identificateur '%s' n'est pas declare.\12\0"
	.text
	.globl	_chercher_type
	.def	_chercher_type;	.scl	2;	.type	32;	.endef
_chercher_type:
LFB24:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_rechercher_symbole
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	L111
	cmpl	$0, 8(%ebp)
	jle	L112
	movl	_nb_id, %eax
	cmpl	%eax, 8(%ebp)
	jg	L112
	movl	8(%ebp), %eax
	subl	$1, %eax
	sall	$7, %eax
	addl	$_tab_iden, %eax
	jmp	L113
L112:
	movl	$LC17, %eax
L113:
	movl	%eax, -16(%ebp)
	movl	_ligne_symbole, %eax
	movl	-16(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, _erreur_semantique
	movl	$0, %eax
	jmp	L114
L111:
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_table_symboles+4, %eax
	movl	(%eax), %eax
L114:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE24:
	.section .rdata,"dr"
	.align 4
LC19:
	.ascii "Erreur semantique ligne %d : declaration multiple de '%s'.\12\0"
	.align 4
LC20:
	.ascii "Erreur semantique : table des symboles pleine.\12\0"
	.text
	.globl	_ajouter_type
	.def	_ajouter_type;	.scl	2;	.type	32;	.endef
_ajouter_type:
LFB25:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	cmpl	$0, 8(%ebp)
	jle	L116
	movl	_nb_id, %eax
	cmpl	%eax, 8(%ebp)
	jle	L117
L116:
	movl	$1, _erreur_semantique
	jmp	L115
L117:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_rechercher_symbole
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	js	L119
	movl	8(%ebp), %eax
	subl	$1, %eax
	sall	$7, %eax
	leal	_tab_iden(%eax), %edx
	movl	_ligne_symbole, %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC19, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, _erreur_semantique
	jmp	L115
L119:
	movl	_nb_symboles, %eax
	cmpl	$299, %eax
	jle	L120
	movl	$LC20, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, _erreur_semantique
	jmp	L115
L120:
	movl	_nb_symboles, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	_table_symboles(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%edx)
	movl	_nb_symboles, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	leal	_table_symboles+4(%eax), %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	movl	_nb_symboles, %edx
	movl	_nb_symboles, %eax
	leal	1(%eax), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_table_symboles+8, %eax
	movl	%ecx, (%eax)
	movl	_nb_symboles, %eax
	addl	$1, %eax
	movl	%eax, _nb_symboles
L115:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE25:
	.globl	_compatible
	.def	_compatible;	.scl	2;	.type	32;	.endef
_compatible:
LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	cmpl	$0, 8(%ebp)
	je	L122
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jne	L122
	movl	$1, %eax
	jmp	L124
L122:
	movl	$0, %eax
L124:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE26:
	.section .rdata,"dr"
	.align 4
LC21:
	.ascii "Erreur : zone du code intermediaire pleine.\12\0"
LC22:
	.ascii "\0"
	.text
	.globl	_Emettre
	.def	_Emettre;	.scl	2;	.type	32;	.endef
_Emettre:
LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	_nb_instructions, %eax
	cmpl	$1999, %eax
	jle	L126
	movl	_erreur_code, %eax
	testl	%eax, %eax
	jne	L127
	movl	$LC21, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, _erreur_code
L127:
	movl	$1, _erreur_semantique
	jmp	L125
L126:
	movl	_nb_instructions, %eax
	imull	$120, %eax, %eax
	leal	_code(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$LC13, 8(%esp)
	movl	$40, 4(%esp)
	movl	%edx, (%esp)
	call	_snprintf
	cmpl	$0, 12(%ebp)
	je	L129
	movl	12(%ebp), %eax
	jmp	L130
L129:
	movl	$LC22, %eax
L130:
	movl	_nb_instructions, %edx
	imull	$120, %edx, %edx
	addl	$32, %edx
	addl	$_code, %edx
	addl	$8, %edx
	movl	%eax, 12(%esp)
	movl	$LC13, 8(%esp)
	movl	$80, 4(%esp)
	movl	%edx, (%esp)
	call	_snprintf
	movl	_nb_instructions, %eax
	addl	$1, %eax
	movl	%eax, _nb_instructions
L125:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE27:
	.globl	_creer_etiquette
	.def	_creer_etiquette;	.scl	2;	.type	32;	.endef
_creer_etiquette:
LFB28:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	_numero_etiquette, %eax
	leal	1(%eax), %edx
	movl	%edx, _numero_etiquette
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE28:
	.section .rdata,"dr"
LC23:
	.ascii "@?\0"
LC24:
	.ascii "@%s\0"
	.text
	.globl	_adresse_id
	.def	_adresse_id;	.scl	2;	.type	32;	.endef
_adresse_id:
LFB29:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_rechercher_symbole
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jns	L134
	movl	$LC23, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_snprintf
	jmp	L136
L134:
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_table_symboles, %eax
	movl	(%eax), %eax
	subl	$1, %eax
	sall	$7, %eax
	addl	$_tab_iden, %eax
	movl	%eax, 12(%esp)
	movl	$LC24, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_snprintf
L136:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE29:
	.section .rdata,"dr"
LC25:
	.ascii "<=\0"
LC26:
	.ascii "<>\0"
LC27:
	.ascii "<\0"
LC28:
	.ascii ">=\0"
LC29:
	.ascii ">\0"
LC30:
	.ascii "==\0"
LC31:
	.ascii "?\0"
	.text
	.globl	_nom_oprel
	.def	_nom_oprel;	.scl	2;	.type	32;	.endef
_nom_oprel:
LFB30:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	cmpl	$6, 8(%ebp)
	ja	L138
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	$L140, %eax
	movl	(%eax), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L140:
	.long	L138
	.long	L139
	.long	L141
	.long	L142
	.long	L143
	.long	L144
	.long	L145
	.text
L139:
	movl	$LC25, %eax
	jmp	L146
L141:
	movl	$LC26, %eax
	jmp	L146
L142:
	movl	$LC27, %eax
	jmp	L146
L143:
	movl	$LC28, %eax
	jmp	L146
L144:
	movl	$LC29, %eax
	jmp	L146
L145:
	movl	$LC30, %eax
	jmp	L146
L138:
	movl	$LC31, %eax
L146:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE30:
	.section .rdata,"dr"
LC32:
	.ascii "Comparer-si-inf\0"
LC33:
	.ascii "Comparer-si-sup\0"
LC34:
	.ascii "Comparer-si-egal\0"
	.text
	.globl	_EmettreComparaison
	.def	_EmettreComparaison;	.scl	2;	.type	32;	.endef
_EmettreComparaison:
LFB31:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$6, 8(%ebp)
	ja	L157
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	$L150, %eax
	movl	(%eax), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L150:
	.long	L157
	.long	L149
	.long	L151
	.long	L152
	.long	L153
	.long	L154
	.long	L155
	.text
L152:
	movl	$LC22, 4(%esp)
	movl	$LC32, (%esp)
	call	_Emettre
	jmp	L156
L154:
	movl	$LC22, 4(%esp)
	movl	$LC33, (%esp)
	call	_Emettre
	jmp	L156
L155:
	movl	$LC22, 4(%esp)
	movl	$LC34, (%esp)
	call	_Emettre
	jmp	L156
L151:
	movl	$LC22, 4(%esp)
	movl	$LC34, (%esp)
	call	_Emettre
	jmp	L156
L149:
	movl	$LC22, 4(%esp)
	movl	$LC33, (%esp)
	call	_Emettre
	jmp	L156
L153:
	movl	$LC22, 4(%esp)
	movl	$LC32, (%esp)
	call	_Emettre
	jmp	L156
L157:
	nop
L156:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE31:
	.section .rdata,"dr"
LC35:
	.ascii "L%d\0"
LC36:
	.ascii "Aller-si-vrai\0"
LC37:
	.ascii "Aller-si-faux\0"
	.text
	.globl	_EmettreSautSiConditionFausse
	.def	_EmettreSautSiConditionFausse;	.scl	2;	.type	32;	.endef
_EmettreSautSiConditionFausse:
LFB32:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$LC35, 8(%esp)
	movl	$32, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_snprintf
	cmpl	$2, 8(%ebp)
	je	L159
	cmpl	$1, 8(%ebp)
	je	L159
	cmpl	$4, 8(%ebp)
	jne	L160
L159:
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC36, (%esp)
	call	_Emettre
	jmp	L161
L160:
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC37, (%esp)
	call	_Emettre
L161:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE32:
	.section .rdata,"dr"
	.align 4
LC38:
	.ascii "\12CODE INTERMEDIAIRE POUR LA MACHINE ABSTRAITE A PILE\12\0"
	.align 4
LC39:
	.ascii "---------------------------------------------------\12\0"
LC40:
	.ascii "%3d  %-20s %s\12\0"
	.text
	.globl	_afficher_code
	.def	_afficher_code;	.scl	2;	.type	32;	.endef
_afficher_code:
LFB33:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$LC38, (%esp)
	call	_printf
	movl	$LC39, (%esp)
	call	_printf
	movl	$0, -12(%ebp)
	jmp	L163
L164:
	movl	-12(%ebp), %eax
	imull	$120, %eax, %eax
	addl	$32, %eax
	addl	$_code, %eax
	leal	8(%eax), %ecx
	movl	-12(%ebp), %eax
	imull	$120, %eax, %eax
	leal	_code(%eax), %edx
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC40, (%esp)
	call	_printf
	addl	$1, -12(%ebp)
L163:
	movl	_nb_instructions, %eax
	cmpl	%eax, -12(%ebp)
	jl	L164
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE33:
	.section .rdata,"dr"
LC41:
	.ascii "id\0"
LC42:
	.ascii ".\0"
LC43:
	.ascii ":\0"
LC44:
	.ascii ";\0"
LC45:
	.ascii ",\0"
LC46:
	.ascii ":=\0"
LC47:
	.ascii "(\0"
LC48:
	.ascii "nb\0"
LC49:
	.ascii "oparith\0"
LC50:
	.ascii ")\0"
LC51:
	.ascii "oprel\0"
LC52:
	.ascii "EOF\0"
LC53:
	.ascii "erreur\0"
	.text
	.globl	_nom_ul
	.def	_nom_ul;	.scl	2;	.type	32;	.endef
_nom_ul:
LFB34:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	cmpl	$23, 8(%ebp)
	ja	L166
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	$L168, %eax
	movl	(%eax), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L168:
	.long	L166
	.long	L166
	.long	L167
	.long	L169
	.long	L170
	.long	L171
	.long	L172
	.long	L173
	.long	L174
	.long	L175
	.long	L176
	.long	L177
	.long	L178
	.long	L179
	.long	L180
	.long	L181
	.long	L182
	.long	L183
	.long	L184
	.long	L185
	.long	L186
	.long	L187
	.long	L188
	.long	L189
	.text
L167:
	movl	$LC41, %eax
	jmp	L190
L169:
	movl	$LC2, %eax
	jmp	L190
L170:
	movl	$LC3, %eax
	jmp	L190
L171:
	movl	$LC4, %eax
	jmp	L190
L172:
	movl	$LC5, %eax
	jmp	L190
L173:
	movl	$LC6, %eax
	jmp	L190
L174:
	movl	$LC7, %eax
	jmp	L190
L175:
	movl	$LC42, %eax
	jmp	L190
L176:
	movl	$LC43, %eax
	jmp	L190
L177:
	movl	$LC44, %eax
	jmp	L190
L178:
	movl	$LC45, %eax
	jmp	L190
L179:
	movl	$LC46, %eax
	jmp	L190
L180:
	movl	$LC47, %eax
	jmp	L190
L181:
	movl	$LC48, %eax
	jmp	L190
L182:
	movl	$LC49, %eax
	jmp	L190
L183:
	movl	$LC50, %eax
	jmp	L190
L184:
	movl	$LC51, %eax
	jmp	L190
L185:
	movl	$LC52, %eax
	jmp	L190
L186:
	movl	$LC8, %eax
	jmp	L190
L187:
	movl	$LC9, %eax
	jmp	L190
L188:
	movl	$LC10, %eax
	jmp	L190
L189:
	movl	$LC11, %eax
	jmp	L190
L166:
	movl	$LC53, %eax
L190:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE34:
	.section .rdata,"dr"
	.align 4
LC54:
	.ascii "Erreur syntaxique ligne %d, colonne %d : '%s' attendu, '%s' rencontre.\12\0"
	.text
	.globl	_erreur_syntaxe_attendue
	.def	_erreur_syntaxe_attendue;	.scl	2;	.type	32;	.endef
_erreur_syntaxe_attendue:
LFB35:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	jne	L195
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	jne	L195
	movl	_symbole, %eax
	movl	%eax, (%esp)
	call	_nom_ul
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_nom_ul
	movl	%eax, %ecx
	movl	_colonne_symbole, %edx
	movl	_ligne_symbole, %eax
	movl	%ebx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC54, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, _erreur_syntaxique
	jmp	L191
L195:
	nop
L191:
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE35:
	.globl	_accepter
	.def	_accepter;	.scl	2;	.type	32;	.endef
_accepter:
LFB36:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	jne	L201
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	jne	L201
	movl	_symbole, %eax
	cmpl	8(%ebp), %eax
	jne	L200
	call	_AnalLex
	movl	%eax, _symbole
	movl	%edx, _symbole+4
	jmp	L196
L200:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_erreur_syntaxe_attendue
	jmp	L196
L201:
	nop
L196:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE36:
	.section .rdata,"dr"
LC55:
	.ascii "Halte\0"
	.text
	.globl	_P
	.def	_P;	.scl	2;	.type	32;	.endef
_P:
LFB37:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	jne	L209
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	jne	L209
	movl	_symbole, %eax
	cmpl	$3, %eax
	jne	L206
	movl	$3, (%esp)
	call	_accepter
	movl	$2, (%esp)
	call	_accepter
	movl	$11, (%esp)
	call	_accepter
	call	_Dcl
	movl	$5, (%esp)
	call	_accepter
	call	_Liste_inst
	movl	$6, (%esp)
	call	_accepter
	movl	$9, (%esp)
	call	_accepter
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	jne	L207
	movl	_symbole, %eax
	cmpl	$19, %eax
	je	L207
	movl	$19, (%esp)
	call	_erreur_syntaxe_attendue
L207:
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	jne	L202
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	jne	L202
	movl	_erreur_semantique, %eax
	testl	%eax, %eax
	jne	L202
	movl	$LC22, 4(%esp)
	movl	$LC55, (%esp)
	call	_Emettre
	jmp	L202
L206:
	movl	$3, (%esp)
	call	_erreur_syntaxe_attendue
	jmp	L202
L209:
	nop
L202:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE37:
	.globl	_Dcl
	.def	_Dcl;	.scl	2;	.type	32;	.endef
_Dcl:
LFB38:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	jne	L215
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	jne	L215
	movl	_symbole, %eax
	cmpl	$4, %eax
	jne	L214
	movl	$4, (%esp)
	call	_accepter
	call	_Liste_id
	movl	$10, (%esp)
	call	_accepter
	movl	$20, (%esp)
	call	_accepter
	movl	$11, (%esp)
	call	_accepter
	jmp	L210
L214:
	movl	$4, (%esp)
	call	_erreur_syntaxe_attendue
	jmp	L210
L215:
	nop
L210:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE38:
	.globl	_Liste_id
	.def	_Liste_id;	.scl	2;	.type	32;	.endef
_Liste_id:
LFB39:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	jne	L221
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	jne	L221
	movl	_symbole, %eax
	cmpl	$2, %eax
	jne	L220
	movl	_symbole+4, %eax
	movl	%eax, -12(%ebp)
	movl	$2, (%esp)
	call	_accepter
	movl	$1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ajouter_type
	call	_L1
	jmp	L216
L220:
	movl	$2, (%esp)
	call	_erreur_syntaxe_attendue
	jmp	L216
L221:
	nop
L216:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE39:
	.globl	_L1
	.def	_L1;	.scl	2;	.type	32;	.endef
_L1:
LFB40:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	jne	L227
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	jne	L227
	movl	_symbole, %eax
	cmpl	$12, %eax
	jne	L226
	movl	$12, (%esp)
	call	_accepter
	call	_Liste_id
	jmp	L222
L226:
	movl	_symbole, %eax
	cmpl	$10, %eax
	je	L222
	movl	$12, (%esp)
	call	_erreur_syntaxe_attendue
	jmp	L222
L227:
	nop
L222:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE40:
	.globl	_Liste_inst
	.def	_Liste_inst;	.scl	2;	.type	32;	.endef
_Liste_inst:
LFB41:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	jne	L232
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	jne	L232
	call	_I
	call	_I1
	jmp	L228
L232:
	nop
L228:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE41:
	.globl	_I1
	.def	_I1;	.scl	2;	.type	32;	.endef
_I1:
LFB42:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	jne	L239
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	jne	L239
	movl	_symbole, %eax
	cmpl	$2, %eax
	je	L237
	movl	_symbole, %eax
	cmpl	$7, %eax
	je	L237
	movl	_symbole, %eax
	cmpl	$8, %eax
	je	L237
	movl	_symbole, %eax
	cmpl	$21, %eax
	jne	L238
L237:
	call	_Liste_inst
	jmp	L233
L238:
	movl	_symbole, %eax
	cmpl	$6, %eax
	je	L233
	movl	_symbole, %eax
	cmpl	$23, %eax
	je	L233
	movl	$2, (%esp)
	call	_erreur_syntaxe_attendue
	jmp	L233
L239:
	nop
L233:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE42:
	.section .rdata,"dr"
LC56:
	.ascii "Valeurg\0"
	.align 4
LC57:
	.ascii "Erreur semantique ligne %d : type incompatible dans l'affectation.\12\0"
LC58:
	.ascii "Valeurd\0"
LC59:
	.ascii "Ecrire\0"
LC60:
	.ascii "Lire\0"
	.align 4
LC61:
	.ascii "Erreur semantique ligne %d : condition de type booleen attendue.\12\0"
LC62:
	.ascii "Etiq\0"
	.text
	.globl	_I
	.def	_I;	.scl	2;	.type	32;	.endef
_I:
LFB43:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$136, %esp
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	jne	L254
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	jne	L254
	movl	_symbole, %eax
	cmpl	$2, %eax
	jne	L244
	movl	_symbole+4, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_chercher_type
	movl	%eax, -16(%ebp)
	movl	$0, -32(%ebp)
	movl	$80, 8(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_adresse_id
	leal	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC56, (%esp)
	call	_Emettre
	movl	$2, (%esp)
	call	_accepter
	movl	$13, (%esp)
	call	_accepter
	leal	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	_Exp
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	jne	L245
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	jne	L245
	cmpl	$0, -16(%ebp)
	je	L245
	movl	-32(%ebp), %eax
	testl	%eax, %eax
	je	L245
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_compatible
	testl	%eax, %eax
	jne	L245
	movl	_ligne_symbole, %eax
	movl	%eax, 8(%esp)
	movl	$LC57, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, _erreur_semantique
L245:
	movl	$11, (%esp)
	call	_accepter
	movl	$LC22, 4(%esp)
	movl	$LC46, (%esp)
	call	_Emettre
	jmp	L240
L244:
	movl	_symbole, %eax
	cmpl	$7, %eax
	jne	L246
	movl	$7, (%esp)
	call	_accepter
	movl	$14, (%esp)
	call	_accepter
	movl	_symbole, %eax
	cmpl	$2, %eax
	jne	L247
	movl	_symbole+4, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_chercher_type
	movl	$80, 8(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_adresse_id
	leal	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC58, (%esp)
	call	_Emettre
	movl	$2, (%esp)
	call	_accepter
	jmp	L248
L247:
	movl	$2, (%esp)
	call	_erreur_syntaxe_attendue
L248:
	movl	$17, (%esp)
	call	_accepter
	movl	$11, (%esp)
	call	_accepter
	movl	$LC22, 4(%esp)
	movl	$LC59, (%esp)
	call	_Emettre
	jmp	L240
L246:
	movl	_symbole, %eax
	cmpl	$8, %eax
	jne	L249
	movl	$8, (%esp)
	call	_accepter
	movl	$14, (%esp)
	call	_accepter
	movl	_symbole, %eax
	cmpl	$2, %eax
	jne	L250
	movl	_symbole+4, %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_chercher_type
	movl	$80, 8(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_adresse_id
	leal	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC56, (%esp)
	call	_Emettre
	movl	$2, (%esp)
	call	_accepter
	jmp	L251
L250:
	movl	$2, (%esp)
	call	_erreur_syntaxe_attendue
L251:
	movl	$17, (%esp)
	call	_accepter
	movl	$11, (%esp)
	call	_accepter
	movl	$LC22, 4(%esp)
	movl	$LC60, (%esp)
	call	_Emettre
	movl	$LC22, 4(%esp)
	movl	$LC46, (%esp)
	call	_Emettre
	jmp	L240
L249:
	movl	_symbole, %eax
	cmpl	$21, %eax
	jne	L252
	movl	$0, -36(%ebp)
	movl	$0, -40(%ebp)
	call	_creer_etiquette
	movl	%eax, -28(%ebp)
	movl	$21, (%esp)
	call	_accepter
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_C
	movl	-36(%ebp), %eax
	cmpl	$2, %eax
	je	L253
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L253
	movl	_ligne_symbole, %eax
	movl	%eax, 8(%esp)
	movl	$LC61, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, _erreur_semantique
L253:
	movl	-40(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_EmettreSautSiConditionFausse
	movl	$22, (%esp)
	call	_accepter
	call	_Liste_inst
	movl	$23, (%esp)
	call	_accepter
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$LC35, 8(%esp)
	movl	$32, 4(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	_snprintf
	leal	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC62, (%esp)
	call	_Emettre
	jmp	L240
L252:
	movl	$2, (%esp)
	call	_erreur_syntaxe_attendue
	jmp	L240
L254:
	nop
L240:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE43:
	.section .rdata,"dr"
	.align 4
LC63:
	.ascii "Erreur semantique ligne %d : les deux operandes de '%s' doivent etre entiers.\12\0"
	.text
	.globl	_C
	.def	_C;	.scl	2;	.type	32;	.endef
_C:
LFB44:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	jne	L256
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	je	L257
L256:
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	12(%ebp), %eax
	movl	$0, (%eax)
	jmp	L255
L257:
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Exp
	movl	_symbole, %eax
	cmpl	$18, %eax
	jne	L259
	movl	_symbole+4, %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	movl	$18, (%esp)
	call	_accepter
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Exp
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	je	L261
	jmp	L267
L259:
	movl	$18, (%esp)
	call	_erreur_syntaxe_attendue
	jmp	L255
L267:
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	jne	L262
L261:
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	jmp	L263
L262:
	movl	-12(%ebp), %eax
	cmpl	$1, %eax
	jne	L264
	movl	-16(%ebp), %eax
	cmpl	$1, %eax
	je	L265
L264:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_nom_oprel
	movl	%eax, %edx
	movl	_ligne_symbole, %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC63, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, _erreur_semantique
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	jmp	L263
L265:
	movl	8(%ebp), %eax
	movl	$2, (%eax)
L263:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_EmettreComparaison
L255:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE44:
	.section .rdata,"dr"
LC64:
	.ascii "%d\0"
LC65:
	.ascii "Empiler\0"
	.text
	.globl	_Exp
	.def	_Exp;	.scl	2;	.type	32;	.endef
_Exp:
LFB45:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$120, %esp
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	jne	L269
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	je	L270
L269:
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	jmp	L268
L270:
	movl	_symbole, %eax
	cmpl	$2, %eax
	jne	L272
	movl	_symbole+4, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_chercher_type
	movl	%eax, -16(%ebp)
	movl	$80, 8(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_adresse_id
	leal	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC58, (%esp)
	call	_Emettre
	movl	$2, (%esp)
	call	_accepter
	movl	8(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_E1
	jmp	L268
L272:
	movl	_symbole, %eax
	cmpl	$15, %eax
	jne	L273
	movl	_symbole+4, %eax
	movl	%eax, 12(%esp)
	movl	$LC64, 8(%esp)
	movl	$40, 4(%esp)
	leal	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_snprintf
	leal	-96(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC65, (%esp)
	call	_Emettre
	movl	$15, (%esp)
	call	_accepter
	movl	8(%ebp), %eax
	movl	$1, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_E1
	jmp	L268
L273:
	movl	_symbole, %eax
	cmpl	$14, %eax
	jne	L274
	movl	$14, (%esp)
	call	_accepter
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Exp
	movl	$17, (%esp)
	call	_accepter
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_E1
	jmp	L268
L274:
	movl	$2, (%esp)
	call	_erreur_syntaxe_attendue
	movl	8(%ebp), %eax
	movl	$0, (%eax)
L268:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE45:
	.section .rdata,"dr"
LC66:
	.ascii "+\0"
LC67:
	.ascii "*\0"
	.align 4
LC68:
	.ascii "Erreur semantique ligne %d : les operandes de '%s' doivent etre entiers.\12\0"
	.text
	.globl	_E1
	.def	_E1;	.scl	2;	.type	32;	.endef
_E1:
LFB46:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	jne	L289
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	jne	L289
	movl	_symbole, %eax
	cmpl	$16, %eax
	jne	L279
	movl	_symbole+4, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$16, (%esp)
	call	_accepter
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Exp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L280
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	jne	L281
L280:
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	jmp	L282
L281:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	L283
	movl	-16(%ebp), %eax
	cmpl	$1, %eax
	je	L284
L283:
	cmpl	$1, -12(%ebp)
	jne	L285
	movl	$LC66, %edx
	jmp	L286
L285:
	movl	$LC67, %edx
L286:
	movl	_ligne_symbole, %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC68, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, _erreur_semantique
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	jmp	L282
L284:
	movl	8(%ebp), %eax
	movl	$1, (%eax)
L282:
	cmpl	$1, -12(%ebp)
	jne	L287
	movl	$LC66, %eax
	jmp	L288
L287:
	movl	$LC67, %eax
L288:
	movl	$LC22, 4(%esp)
	movl	%eax, (%esp)
	call	_Emettre
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_E1
	jmp	L275
L279:
	movl	_symbole, %eax
	cmpl	$11, %eax
	je	L275
	movl	_symbole, %eax
	cmpl	$17, %eax
	je	L275
	movl	_symbole, %eax
	cmpl	$18, %eax
	je	L275
	movl	_symbole, %eax
	cmpl	$22, %eax
	je	L275
	movl	$16, (%esp)
	call	_erreur_syntaxe_attendue
	jmp	L275
L289:
	nop
L275:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE46:
	.section .rdata,"dr"
LC69:
	.ascii "UL=%-10s code=%2d\0"
LC70:
	.ascii " att=%d lexeme=%s\0"
LC71:
	.ascii " att=%d\0"
LC72:
	.ascii " att=%s\0"
LC73:
	.ascii "\12\0"
	.text
	.globl	_afficher_unite
	.def	_afficher_unite;	.scl	2;	.type	32;	.endef
_afficher_unite:
LFB47:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_nom_ul
	movl	%ebx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC69, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	cmpl	$2, %eax
	jne	L291
	movl	12(%ebp), %eax
	testl	%eax, %eax
	jle	L292
	movl	12(%ebp), %edx
	movl	_nb_id, %eax
	cmpl	%eax, %edx
	jg	L292
	movl	12(%ebp), %eax
	subl	$1, %eax
	sall	$7, %eax
	leal	_tab_iden(%eax), %edx
	jmp	L293
L292:
	movl	$LC31, %edx
L293:
	movl	12(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC70, (%esp)
	call	_printf
	jmp	L294
L291:
	movl	8(%ebp), %eax
	cmpl	$15, %eax
	jne	L295
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC71, (%esp)
	call	_printf
	jmp	L294
L295:
	movl	8(%ebp), %eax
	cmpl	$16, %eax
	jne	L296
	movl	12(%ebp), %eax
	cmpl	$1, %eax
	jne	L297
	movl	$LC66, %eax
	jmp	L298
L297:
	movl	$LC67, %eax
L298:
	movl	%eax, 4(%esp)
	movl	$LC72, (%esp)
	call	_printf
	jmp	L294
L296:
	movl	8(%ebp), %eax
	cmpl	$18, %eax
	jne	L294
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_nom_oprel
	movl	%eax, 4(%esp)
	movl	$LC72, (%esp)
	call	_printf
L294:
	movl	$LC73, (%esp)
	call	_printf
	nop
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE47:
	.section .rdata,"dr"
LC74:
	.ascii "\12TABLE DES IDENTIFICATEURS\12\0"
LC75:
	.ascii "--------------------------\12\0"
LC76:
	.ascii "Lexeme\0"
LC77:
	.ascii "Numero\0"
LC78:
	.ascii "%-8s %-24s\12\0"
LC79:
	.ascii "%-8d %-24s\12\0"
	.text
	.globl	_afficher_table_identificateurs
	.def	_afficher_table_identificateurs;	.scl	2;	.type	32;	.endef
_afficher_table_identificateurs:
LFB48:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$LC74, (%esp)
	call	_printf
	movl	$LC75, (%esp)
	call	_printf
	movl	$LC76, 8(%esp)
	movl	$LC77, 4(%esp)
	movl	$LC78, (%esp)
	call	_printf
	movl	$0, -12(%ebp)
	jmp	L300
L301:
	movl	-12(%ebp), %eax
	sall	$7, %eax
	leal	_tab_iden(%eax), %edx
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC79, (%esp)
	call	_printf
	addl	$1, -12(%ebp)
L300:
	movl	_nb_id, %eax
	cmpl	%eax, -12(%ebp)
	jl	L301
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE48:
	.section .rdata,"dr"
LC80:
	.ascii "\12TABLE DES SYMBOLES\12\0"
LC81:
	.ascii "-------------------\12\0"
LC82:
	.ascii "Adresse\0"
LC83:
	.ascii "Type\0"
LC84:
	.ascii "%-8s %-20s %-12s %-10s\12\0"
LC85:
	.ascii "inconnu\0"
LC86:
	.ascii "%-8d %-20s %-12s @%s\12\0"
	.text
	.globl	_afficher_table_symboles
	.def	_afficher_table_symboles;	.scl	2;	.type	32;	.endef
_afficher_table_symboles:
LFB49:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	$LC80, (%esp)
	call	_printf
	movl	$LC81, (%esp)
	call	_printf
	movl	$LC82, 16(%esp)
	movl	$LC83, 12(%esp)
	movl	$LC76, 8(%esp)
	movl	$LC77, 4(%esp)
	movl	$LC84, (%esp)
	call	_printf
	movl	$0, -12(%ebp)
	jmp	L303
L306:
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_table_symboles, %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	subl	$1, %eax
	sall	$7, %eax
	leal	_tab_iden(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_table_symboles+4, %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	jne	L304
	movl	$LC8, %edx
	jmp	L305
L304:
	movl	$LC85, %edx
L305:
	movl	-16(%ebp), %eax
	subl	$1, %eax
	sall	$7, %eax
	addl	$_tab_iden, %eax
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC86, (%esp)
	call	_printf
	addl	$1, -12(%ebp)
L303:
	movl	_nb_symboles, %eax
	cmpl	%eax, -12(%ebp)
	jl	L306
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE49:
	.section .rdata,"dr"
	.align 4
LC87:
	.ascii "\12Nombre d'unites lexicales (hors EOF) : %d\12\0"
	.text
	.globl	_analyser_tous_les_symboles
	.def	_analyser_tous_les_symboles;	.scl	2;	.type	32;	.endef
_analyser_tous_les_symboles:
LFB50:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	call	_AnalLex
	movl	%eax, _symbole
	movl	%edx, _symbole+4
	jmp	L308
L310:
	movl	_symbole, %eax
	movl	_symbole+4, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_afficher_unite
	addl	$1, -12(%ebp)
	call	_AnalLex
	movl	%eax, _symbole
	movl	%edx, _symbole+4
L308:
	movl	_symbole, %eax
	cmpl	$19, %eax
	je	L309
	movl	_symbole, %eax
	testl	%eax, %eax
	jne	L310
L309:
	movl	_symbole, %eax
	testl	%eax, %eax
	je	L311
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	je	L312
L311:
	movl	$0, %eax
	jmp	L313
L312:
	movl	_symbole, %eax
	movl	_symbole+4, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_afficher_unite
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC87, (%esp)
	call	_printf
	call	_afficher_table_identificateurs
	movl	$1, %eax
L313:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE50:
	.section .rdata,"dr"
	.align 4
LC88:
	.ascii "Utilisation : %s [--tokens] fichier_source\12\0"
	.align 4
LC89:
	.ascii "  sans argument : demander le chemin du fichier source dans la console\12\0"
	.align 4
LC90:
	.ascii "  sans option : AL + AS predictif descendant recursif + controle semantique + code a pile\12\0"
	.align 4
LC91:
	.ascii "  --tokens    : afficher les unites lexicales retournees par AnalLex()\12\0"
	.text
	.globl	_afficher_aide
	.def	_afficher_aide;	.scl	2;	.type	32;	.endef
_afficher_aide:
LFB51:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC88, (%esp)
	call	_printf
	movl	$LC89, (%esp)
	call	_printf
	movl	$LC90, (%esp)
	call	_printf
	movl	$LC91, (%esp)
	call	_printf
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE51:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC92:
	.ascii "-h\0"
LC93:
	.ascii "--help\0"
LC94:
	.ascii "--tokens\0"
LC95:
	.ascii "Chemin du fichier source : \0"
	.align 4
LC96:
	.ascii "Erreur : aucun chemin de fichier source fourni.\12\0"
LC97:
	.ascii "\15\12\0"
	.align 4
LC98:
	.ascii "Erreur : le chemin du fichier source est vide.\12\0"
LC99:
	.ascii "r\0"
	.align 4
LC100:
	.ascii "Impossible d'ouvrir le fichier source\0"
LC101:
	.ascii "Analyse du fichier : %s\12\0"
	.align 4
LC102:
	.ascii "\12Analyse lexicale : correcte.\12\0"
	.align 4
LC103:
	.ascii "Analyse syntaxique : correcte (grammaire G').\12\0"
	.align 4
LC104:
	.ascii "Controle semantique : correct (identificateurs declares, type int).\12\0"
LC105:
	.ascii "\12Programme accepte.\12\0"
LC106:
	.ascii "\12Programme refuse :\0"
LC107:
	.ascii " erreur lexicale\0"
LC108:
	.ascii " erreur syntaxique\0"
LC109:
	.ascii " erreur semantique\0"
LC110:
	.ascii ".\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB52:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$1056, %esp
	call	___main
	movl	$0, 1048(%esp)
	cmpl	$2, 8(%ebp)
	jne	L316
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	$LC92, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L317
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	$LC93, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L316
L317:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_afficher_aide
	movl	$0, %eax
	jmp	L337
L316:
	cmpl	$3, 8(%ebp)
	jne	L319
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	$LC94, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L319
	movl	$1, 1048(%esp)
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 1052(%esp)
	jmp	L320
L319:
	cmpl	$2, 8(%ebp)
	jne	L321
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 1052(%esp)
	jmp	L320
L321:
	cmpl	$1, 8(%ebp)
	jne	L322
	movl	$LC95, (%esp)
	call	_printf
	movl	__imp___iob, %eax
	addl	$32, %eax
	movl	%eax, (%esp)
	call	_fflush
	movl	__imp___iob, %eax
	movl	%eax, 8(%esp)
	movl	$1024, 4(%esp)
	leal	16(%esp), %eax
	movl	%eax, (%esp)
	call	_fgets
	testl	%eax, %eax
	jne	L323
	movl	$LC96, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, %eax
	jmp	L337
L323:
	movl	$LC97, 4(%esp)
	leal	16(%esp), %eax
	movl	%eax, (%esp)
	call	_strcspn
	movl	%eax, 1044(%esp)
	leal	16(%esp), %edx
	movl	1044(%esp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	cmpl	$0, 1044(%esp)
	jne	L324
	movl	$LC98, 4(%esp)
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	$1, %eax
	jmp	L337
L324:
	leal	16(%esp), %eax
	movl	%eax, 1052(%esp)
	jmp	L320
L322:
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_afficher_aide
	movl	$1, %eax
	jmp	L337
L320:
	movl	$LC99, 4(%esp)
	movl	1052(%esp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, _fp
	movl	_fp, %eax
	testl	%eax, %eax
	jne	L325
	movl	$LC100, (%esp)
	call	_perror
	movl	$1, %eax
	jmp	L337
L325:
	cmpl	$0, 1048(%esp)
	je	L326
	call	_analyser_tous_les_symboles
	movl	%eax, 1040(%esp)
	movl	_fp, %eax
	movl	%eax, (%esp)
	call	_fclose
	cmpl	$0, 1040(%esp)
	sete	%al
	movzbl	%al, %eax
	jmp	L337
L326:
	movl	1052(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC101, (%esp)
	call	_printf
	call	_AnalLex
	movl	%eax, _symbole
	movl	%edx, _symbole+4
	movl	_symbole, %eax
	testl	%eax, %eax
	je	L327
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	je	L328
L327:
	movl	_fp, %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	$1, %eax
	jmp	L337
L328:
	call	_P
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	jne	L329
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	jne	L329
	movl	_erreur_semantique, %eax
	testl	%eax, %eax
	jne	L329
	movl	$LC102, (%esp)
	call	_printf
	movl	$LC103, (%esp)
	call	_printf
	movl	$LC104, (%esp)
	call	_printf
	call	_afficher_table_identificateurs
	call	_afficher_table_symboles
	call	_afficher_code
	movl	$LC105, (%esp)
	call	_printf
	jmp	L330
L329:
	movl	$LC106, (%esp)
	call	_printf
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	je	L331
	movl	$LC107, (%esp)
	call	_printf
L331:
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	je	L332
	movl	$LC108, (%esp)
	call	_printf
L332:
	movl	_erreur_semantique, %eax
	testl	%eax, %eax
	je	L333
	movl	$LC109, (%esp)
	call	_printf
L333:
	movl	$LC110, (%esp)
	call	_printf
L330:
	movl	_fp, %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	_erreur_lexicale, %eax
	testl	%eax, %eax
	jne	L334
	movl	_erreur_syntaxique, %eax
	testl	%eax, %eax
	jne	L334
	movl	_erreur_semantique, %eax
	testl	%eax, %eax
	je	L335
L334:
	movl	$1, %eax
	jmp	L337
L335:
	movl	$0, %eax
L337:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE52:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	___mingw_vprintf;	.scl	2;	.type	32;	.endef
	.def	_fgetc;	.scl	2;	.type	32;	.endef
	.def	_ungetc;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_snprintf;	.scl	2;	.type	32;	.endef
	.def	__errno;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
	.def	_fflush;	.scl	2;	.type	32;	.endef
	.def	_fgets;	.scl	2;	.type	32;	.endef
	.def	_strcspn;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_perror;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
