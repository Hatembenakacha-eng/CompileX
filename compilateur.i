# 1 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
# 1 "c:\\mingw\\include\\ctype.h" 1 3
# 33 "c:\\mingw\\include\\ctype.h" 3
       
# 34 "c:\\mingw\\include\\ctype.h" 3




# 1 "c:\\mingw\\include\\_mingw.h" 1 3
# 55 "c:\\mingw\\include\\_mingw.h" 3
       
# 56 "c:\\mingw\\include\\_mingw.h" 3
# 66 "c:\\mingw\\include\\_mingw.h" 3
# 1 "c:\\mingw\\include\\msvcrtver.h" 1 3
# 35 "c:\\mingw\\include\\msvcrtver.h" 3
       
# 36 "c:\\mingw\\include\\msvcrtver.h" 3
# 67 "c:\\mingw\\include\\_mingw.h" 2 3






# 1 "c:\\mingw\\include\\w32api.h" 1 3
# 35 "c:\\mingw\\include\\w32api.h" 3
       
# 36 "c:\\mingw\\include\\w32api.h" 3
# 59 "c:\\mingw\\include\\w32api.h" 3
# 1 "c:\\mingw\\include\\sdkddkver.h" 1 3
# 35 "c:\\mingw\\include\\sdkddkver.h" 3
       
# 36 "c:\\mingw\\include\\sdkddkver.h" 3
# 60 "c:\\mingw\\include\\w32api.h" 2 3
# 74 "c:\\mingw\\include\\_mingw.h" 2 3
# 39 "c:\\mingw\\include\\ctype.h" 2 3
# 59 "c:\\mingw\\include\\ctype.h" 3
# 1 "c:\\mingw\\include\\wctype.h" 1 3
# 33 "c:\\mingw\\include\\wctype.h" 3
       
# 34 "c:\\mingw\\include\\wctype.h" 3
# 87 "c:\\mingw\\include\\wctype.h" 3
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stddef.h" 1 3 4
# 328 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stddef.h" 3 4

# 328 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stddef.h" 3 4
typedef short unsigned int wchar_t;
# 357 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stddef.h" 3 4
typedef short unsigned int wint_t;
# 88 "c:\\mingw\\include\\wctype.h" 2 3

typedef wchar_t wctype_t;










 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int iswalnum (wint_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int iswalpha (wint_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int iswascii (wint_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int iswcntrl (wint_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int iswctype (wint_t, wctype_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int iswdigit (wint_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int iswgraph (wint_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int iswlower (wint_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int iswprint (wint_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int iswpunct (wint_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int iswspace (wint_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int iswupper (wint_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int iswxdigit (wint_t);

__attribute__((__deprecated__))





 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int is_wctype (wint_t, wctype_t);


__attribute__((__cdecl__)) __attribute__((__nothrow__)) int iswblank (wint_t);







 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t towlower (wint_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t towupper (wint_t);
# 182 "c:\\mingw\\include\\wctype.h" 3

# 60 "c:\\mingw\\include\\ctype.h" 2 3
# 68 "c:\\mingw\\include\\ctype.h" 3


 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int isalnum(int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int isalpha(int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int iscntrl(int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int isdigit(int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int isgraph(int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int islower(int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int isleadbyte (int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int isprint(int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int ispunct(int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int isspace(int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int isupper(int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int isxdigit(int);


__attribute__((__cdecl__)) __attribute__((__nothrow__)) int isblank (int);
# 95 "c:\\mingw\\include\\ctype.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int tolower (int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int toupper (int);
# 119 "c:\\mingw\\include\\ctype.h" 3
    extern __attribute__((__dllimport__)) int __mb_cur_max;
# 140 "c:\\mingw\\include\\ctype.h" 3
  extern __attribute__((__dllimport__)) unsigned short _ctype[];



  extern __attribute__((__dllimport__)) unsigned short *_pctype;
# 240 "c:\\mingw\\include\\ctype.h" 3
extern inline __attribute__((__gnu_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__)) int isleadbyte (int c)
{ return (_pctype[(unsigned char)(c)] & 0x8000); }
# 275 "c:\\mingw\\include\\ctype.h" 3

# 2 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 2
# 1 "c:\\mingw\\include\\errno.h" 1 3
# 103 "c:\\mingw\\include\\errno.h" 3

# 112 "c:\\mingw\\include\\errno.h" 3
 int* __attribute__((__cdecl__)) __attribute__((__nothrow__)) _errno(void);




# 3 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 2
# 1 "c:\\mingw\\include\\limits.h" 1 3
# 34 "c:\\mingw\\include\\limits.h" 3
       
# 35 "c:\\mingw\\include\\limits.h" 3
# 4 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 2
# 1 "c:\\mingw\\include\\stdio.h" 1 3
# 38 "c:\\mingw\\include\\stdio.h" 3
       
# 39 "c:\\mingw\\include\\stdio.h" 3
# 69 "c:\\mingw\\include\\stdio.h" 3
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stddef.h" 1 3 4
# 216 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 70 "c:\\mingw\\include\\stdio.h" 2 3
# 102 "c:\\mingw\\include\\stdio.h" 3
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stdarg.h" 1 3 4
# 40 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 103 "c:\\mingw\\include\\stdio.h" 2 3
# 210 "c:\\mingw\\include\\stdio.h" 3
typedef struct _iobuf
{
  char *_ptr;
  int _cnt;
  char *_base;
  int _flag;
  int _file;
  int _charbuf;
  int _bufsiz;
  char *_tmpfname;
} FILE;
# 239 "c:\\mingw\\include\\stdio.h" 3
extern __attribute__((__dllimport__)) FILE _iob[];
# 252 "c:\\mingw\\include\\stdio.h" 3








 __attribute__((__cdecl__)) __attribute__((__nothrow__)) FILE * fopen (const char *, const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) FILE * freopen (const char *, const char *, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fflush (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fclose (FILE *);






 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int remove (const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int rename (const char *, const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) FILE * tmpfile (void);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char * tmpnam (char *);
# 295 "c:\\mingw\\include\\stdio.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int setvbuf (FILE *, char *, int, size_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void setbuf (FILE *, char *);
# 342 "c:\\mingw\\include\\stdio.h" 3
extern int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,2,3))) __mingw_fprintf(FILE*, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,1,2))) __mingw_printf(const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,2,3))) __mingw_sprintf(char*, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,3,4))) __mingw_snprintf(char*, size_t, const char*, ...);
extern int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,2,0))) __mingw_vfprintf(FILE*, const char*, __builtin_va_list);
extern int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,1,0))) __mingw_vprintf(const char*, __builtin_va_list);
extern int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,2,0))) __mingw_vsprintf(char*, const char*, __builtin_va_list);
extern int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,3,0))) __mingw_vsnprintf(char*, size_t, const char*, __builtin_va_list);
# 376 "c:\\mingw\\include\\stdio.h" 3
extern unsigned int _mingw_output_format_control( unsigned int, unsigned int );
# 402 "c:\\mingw\\include\\stdio.h" 3
static __inline__ __attribute__((__cdecl__)) __attribute__((__nothrow__))
int fprintf (FILE *__stream, const char *__format, ...)
{
  register int __retval;
  __builtin_va_list __local_argv; __builtin_va_start( __local_argv, __format );
  __retval = __mingw_vfprintf( __stream, __format, __local_argv );
  __builtin_va_end( __local_argv );
  return __retval;
}

static __inline__ __attribute__((__cdecl__)) __attribute__((__nothrow__))
int printf (const char *__format, ...)
{
  register int __retval;
  __builtin_va_list __local_argv; __builtin_va_start( __local_argv, __format );
  __retval = __mingw_vprintf( __format, __local_argv );
  __builtin_va_end( __local_argv );
  return __retval;
}

static __inline__ __attribute__((__cdecl__)) __attribute__((__nothrow__))
int sprintf (char *__stream, const char *__format, ...)
{
  register int __retval;
  __builtin_va_list __local_argv; __builtin_va_start( __local_argv, __format );
  __retval = __mingw_vsprintf( __stream, __format, __local_argv );
  __builtin_va_end( __local_argv );
  return __retval;
}

static __inline__ __attribute__((__cdecl__)) __attribute__((__nothrow__))
int vfprintf (FILE *__stream, const char *__format, __builtin_va_list __local_argv)
{
  return __mingw_vfprintf( __stream, __format, __local_argv );
}

static __inline__ __attribute__((__cdecl__)) __attribute__((__nothrow__))
int vprintf (const char *__format, __builtin_va_list __local_argv)
{
  return __mingw_vprintf( __format, __local_argv );
}

static __inline__ __attribute__((__cdecl__)) __attribute__((__nothrow__))
int vsprintf (char *__stream, const char *__format, __builtin_va_list __local_argv)
{
  return __mingw_vsprintf( __stream, __format, __local_argv );
}
# 478 "c:\\mingw\\include\\stdio.h" 3
 int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__ms_printf__,2,3))) __msvcrt_fprintf(FILE *, const char *, ...);
 int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__ms_printf__,1,2))) __msvcrt_printf(const char *, ...);
 int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__ms_printf__,2,3))) __msvcrt_sprintf(char *, const char *, ...);
 int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__ms_printf__,2,0))) __msvcrt_vfprintf(FILE *, const char *, __builtin_va_list);
 int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__ms_printf__,1,0))) __msvcrt_vprintf(const char *, __builtin_va_list);
 int __attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__ms_printf__,2,0))) __msvcrt_vsprintf(char *, const char *, __builtin_va_list);






 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _snprintf (char *, size_t, const char *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _vsnprintf (char *, size_t, const char *, __builtin_va_list);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _vscprintf (const char *, __builtin_va_list);
# 501 "c:\\mingw\\include\\stdio.h" 3
__attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,3,4)))
int snprintf (char *, size_t, const char *, ...);

__attribute__((__cdecl__)) __attribute__((__nothrow__)) __attribute__((__format__(__mingw_printf__,3,0)))
int vsnprintf (char *, size_t, const char *, __builtin_va_list);

__attribute__((__cdecl__)) __attribute__((__nothrow__))
int vscanf (const char * __restrict__, __builtin_va_list);

__attribute__((__cdecl__)) __attribute__((__nothrow__))
int vfscanf (FILE * __restrict__, const char * __restrict__, __builtin_va_list);

__attribute__((__cdecl__)) __attribute__((__nothrow__))
int vsscanf (const char * __restrict__, const char * __restrict__, __builtin_va_list);
# 666 "c:\\mingw\\include\\stdio.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fscanf (FILE *, const char *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int scanf (const char *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int sscanf (const char *, const char *, ...);



 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fgetc (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char * fgets (char *, int, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fputc (int, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fputs (const char *, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char * gets (char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int puts (const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int ungetc (int, FILE *);
# 687 "c:\\mingw\\include\\stdio.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _filbuf (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _flsbuf (int, FILE *);



extern inline __attribute__((__gnu_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__)) int getc (FILE *);
extern inline __attribute__((__gnu_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__)) int getc (FILE * __F)
{
  return (--__F->_cnt >= 0)
    ? (int) (unsigned char) *__F->_ptr++
    : _filbuf (__F);
}

extern inline __attribute__((__gnu_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__)) int putc (int, FILE *);
extern inline __attribute__((__gnu_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__)) int putc (int __c, FILE * __F)
{
  return (--__F->_cnt >= 0)
    ? (int) (unsigned char) (*__F->_ptr++ = (char)__c)
    : _flsbuf (__c, __F);
}

extern inline __attribute__((__gnu_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__)) int getchar (void);
extern inline __attribute__((__gnu_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__)) int getchar (void)
{
  return (--(&_iob[0])->_cnt >= 0)
    ? (int) (unsigned char) *(&_iob[0])->_ptr++
    : _filbuf ((&_iob[0]));
}

extern inline __attribute__((__gnu_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__)) int putchar(int);
extern inline __attribute__((__gnu_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__)) int putchar(int __c)
{
  return (--(&_iob[1])->_cnt >= 0)
    ? (int) (unsigned char) (*(&_iob[1])->_ptr++ = (char)__c)
    : _flsbuf (__c, (&_iob[1]));}
# 734 "c:\\mingw\\include\\stdio.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) size_t fread (void *, size_t, size_t, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) size_t fwrite (const void *, size_t, size_t, FILE *);



 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fseek (FILE *, long, int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) long ftell (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void rewind (FILE *);
# 787 "c:\\mingw\\include\\stdio.h" 3
typedef long long fpos_t;




 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fgetpos (FILE *, fpos_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fsetpos (FILE *, const fpos_t *);



 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int feof (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int ferror (FILE *);
# 808 "c:\\mingw\\include\\stdio.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void clearerr (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void perror (const char *);
# 958 "c:\\mingw\\include\\stdio.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fwprintf (FILE *, const wchar_t *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int wprintf (const wchar_t *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int vfwprintf (FILE *, const wchar_t *, __builtin_va_list);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int vwprintf (const wchar_t *, __builtin_va_list);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _snwprintf (wchar_t *, size_t, const wchar_t *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _vscwprintf (const wchar_t *, __builtin_va_list);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _vsnwprintf (wchar_t *, size_t, const wchar_t *, __builtin_va_list);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fwscanf (FILE *, const wchar_t *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int wscanf (const wchar_t *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int swscanf (const wchar_t *, const wchar_t *, ...);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t fgetwc (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t fputwc (wchar_t, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t ungetwc (wchar_t, FILE *);
# 980 "c:\\mingw\\include\\stdio.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t * fgetws (wchar_t *, int, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int fputws (const wchar_t *, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t getwc (FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t getwchar (void);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t putwc (wint_t, FILE *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wint_t putwchar (wint_t);
# 1005 "c:\\mingw\\include\\stdio.h" 3

__attribute__((__cdecl__)) __attribute__((__nothrow__)) int snwprintf (wchar_t *, size_t, const wchar_t *, ...);
__attribute__((__cdecl__)) __attribute__((__nothrow__)) int vsnwprintf (wchar_t *, size_t, const wchar_t *, __builtin_va_list);
# 1016 "c:\\mingw\\include\\stdio.h" 3
__attribute__((__cdecl__)) __attribute__((__nothrow__)) int vwscanf (const wchar_t *__restrict__, __builtin_va_list);
__attribute__((__cdecl__)) __attribute__((__nothrow__))
int vfwscanf (FILE *__restrict__, const wchar_t *__restrict__, __builtin_va_list);
__attribute__((__cdecl__)) __attribute__((__nothrow__))
int vswscanf (const wchar_t *__restrict__, const wchar_t * __restrict__, __builtin_va_list);
# 1048 "c:\\mingw\\include\\stdio.h" 3

# 5 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 2
# 1 "c:\\mingw\\include\\stdlib.h" 1 3
# 34 "c:\\mingw\\include\\stdlib.h" 3
       
# 35 "c:\\mingw\\include\\stdlib.h" 3
# 55 "c:\\mingw\\include\\stdlib.h" 3
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stddef.h" 1 3 4
# 56 "c:\\mingw\\include\\stdlib.h" 2 3
# 90 "c:\\mingw\\include\\stdlib.h" 3

# 166 "c:\\mingw\\include\\stdlib.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int *_errno(void);


 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int *__doserrno(void);
# 335 "c:\\mingw\\include\\stdlib.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int atoi (const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) long atol (const char *);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) double strtod (const char *, char **);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) double atof (const char *);
# 360 "c:\\mingw\\include\\stdlib.h" 3
extern __attribute__((__cdecl__)) __attribute__((__nothrow__))
double __strtod (const char *__restrict__, char **__restrict__);

extern inline __attribute__((__gnu_inline__)) __attribute__((__always_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__))
double strtod (const char *__restrict__ __nptr, char **__restrict__ __endptr)
{ return __strtod( __nptr, __endptr ); }

extern inline __attribute__((__gnu_inline__)) __attribute__((__always_inline__)) __attribute__((__cdecl__)) __attribute__((__nothrow__))
double atof (const char *__nptr) { return __strtod( __nptr, ((void *)0) ); }
# 378 "c:\\mingw\\include\\stdlib.h" 3
__attribute__((__cdecl__)) __attribute__((__nothrow__))
float strtof (const char *__restrict__, char **__restrict__);

__attribute__((__cdecl__)) __attribute__((__nothrow__))
long double strtold (const char *__restrict__, char **__restrict__);


 __attribute__((__cdecl__)) __attribute__((__nothrow__)) long strtol (const char *, char **, int);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) unsigned long strtoul (const char *, char **, int);







 __attribute__((__cdecl__)) __attribute__((__nothrow__))
long wcstol (const wchar_t *, wchar_t **, int);

 __attribute__((__cdecl__)) __attribute__((__nothrow__))
unsigned long wcstoul (const wchar_t *, wchar_t **, int);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) double wcstod (const wchar_t *, wchar_t **);





__attribute__((__cdecl__)) __attribute__((__nothrow__))
float wcstof (const wchar_t *__restrict__, wchar_t **__restrict__);

__attribute__((__cdecl__)) __attribute__((__nothrow__))
long double wcstold (const wchar_t *__restrict__, wchar_t **__restrict__);
# 451 "c:\\mingw\\include\\stdlib.h" 3
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) wchar_t *_wgetenv (const wchar_t *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _wputenv (const wchar_t *);

 __attribute__((__cdecl__)) __attribute__((__nothrow__))
void _wsearchenv (const wchar_t *, const wchar_t *, wchar_t *);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int _wsystem (const wchar_t *);

 __attribute__((__cdecl__)) __attribute__((__nothrow__))
void _wmakepath (wchar_t *, const wchar_t *, const wchar_t *, const wchar_t *,
    const wchar_t *
  );

 __attribute__((__cdecl__)) __attribute__((__nothrow__))
void _wsplitpath (const wchar_t *, wchar_t *, wchar_t *, wchar_t *, wchar_t *);

 __attribute__((__cdecl__)) __attribute__((__nothrow__))
wchar_t *_wfullpath (wchar_t *, const wchar_t *, size_t);





 __attribute__((__cdecl__)) __attribute__((__nothrow__)) size_t wcstombs (char *, const wchar_t *, size_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int wctomb (char *, wchar_t);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int mblen (const char *, size_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) size_t mbstowcs (wchar_t *, const char *, size_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int mbtowc (wchar_t *, const char *, size_t);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int rand (void);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void srand (unsigned int);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void *calloc (size_t, size_t) __attribute__((__malloc__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void *malloc (size_t) __attribute__((__malloc__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void *realloc (void *, size_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void free (void *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void abort (void) __attribute__((__noreturn__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void exit (int) __attribute__((__noreturn__));



int __attribute__((__cdecl__)) __attribute__((__nothrow__)) atexit (void (*)(void));

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int system (const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *getenv (const char *);






 __attribute__((__cdecl__)) void *bsearch
(const void *, const void *, size_t, size_t, int (*)(const void *, const void *));

 __attribute__((__cdecl__)) void qsort
(void *, size_t, size_t, int (*)(const void *, const void *));

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int abs (int) __attribute__((__const__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) long labs (long) __attribute__((__const__));
# 519 "c:\\mingw\\include\\stdlib.h" 3
typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) div_t div (int, int) __attribute__((__const__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) ldiv_t ldiv (long, long) __attribute__((__const__));
# 649 "c:\\mingw\\include\\stdlib.h" 3
__attribute__((__cdecl__)) __attribute__((__nothrow__)) void _Exit(int) __attribute__((__noreturn__));






typedef struct { long long quot, rem; } lldiv_t;
__attribute__((__cdecl__)) __attribute__((__nothrow__)) lldiv_t lldiv (long long, long long) __attribute__((__const__));

__attribute__((__cdecl__)) __attribute__((__nothrow__)) long long llabs (long long);
# 670 "c:\\mingw\\include\\stdlib.h" 3
__attribute__((__cdecl__)) __attribute__((__nothrow__))
long long strtoll (const char *__restrict__, char **__restrict, int);

__attribute__((__cdecl__)) __attribute__((__nothrow__))
unsigned long long strtoull (const char *__restrict__, char **__restrict__, int);





__attribute__((__cdecl__)) __attribute__((__nothrow__)) long long atoll (const char *);
# 847 "c:\\mingw\\include\\stdlib.h" 3

# 6 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 2
# 1 "c:\\mingw\\include\\string.h" 1 3
# 34 "c:\\mingw\\include\\string.h" 3
       
# 35 "c:\\mingw\\include\\string.h" 3
# 53 "c:\\mingw\\include\\string.h" 3
# 1 "c:\\mingw\\lib\\gcc\\mingw32\\6.3.0\\include\\stddef.h" 1 3 4
# 54 "c:\\mingw\\include\\string.h" 2 3
# 65 "c:\\mingw\\include\\string.h" 3





 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void *memchr (const void *, int, size_t) __attribute__((__pure__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int memcmp (const void *, const void *, size_t) __attribute__((__pure__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void *memcpy (void *, const void *, size_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void *memmove (void *, const void *, size_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) void *memset (void *, int, size_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *strcat (char *, const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *strchr (const char *, int) __attribute__((__pure__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int strcmp (const char *, const char *) __attribute__((__pure__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int strcoll (const char *, const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *strcpy (char *, const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) size_t strcspn (const char *, const char *) __attribute__((__pure__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *strerror (int);

 __attribute__((__cdecl__)) __attribute__((__nothrow__)) size_t strlen (const char *) __attribute__((__pure__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *strncat (char *, const char *, size_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) int strncmp (const char *, const char *, size_t) __attribute__((__pure__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *strncpy (char *, const char *, size_t);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *strpbrk (const char *, const char *) __attribute__((__pure__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *strrchr (const char *, int) __attribute__((__pure__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) size_t strspn (const char *, const char *) __attribute__((__pure__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *strstr (const char *, const char *) __attribute__((__pure__));
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) char *strtok (char *, const char *);
 __attribute__((__cdecl__)) __attribute__((__nothrow__)) size_t strxfrm (char *, const char *, size_t);
# 233 "c:\\mingw\\include\\string.h" 3

# 7 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 2
# 57 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"

# 57 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
typedef struct unilex {
    int ul;
    int att;
} unilex;


typedef struct entree_id {
    char lexeme[128];
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

FILE *fp = 
# 80 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3 4
          ((void *)0)
# 80 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
              ;
unilex symbole;
char ch[128];
char lexeme_courant[128];

entree_id tab_iden[300];
int nb_id = 0;
entree_symbole table_symboles[300];
int nb_symboles = 0;
instruction code[2000];
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
int dernier_car = 
# 101 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                 (-1)
# 101 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                    ;
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
    } else if (c != 
# 119 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                   (-1)
# 119 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                      ) {
        colonne++;
    }
    return c;
}

void reculer(int k)
{
    if (k == 1 && dernier_car != 
# 127 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                                (-1)
# 127 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                                   ) {
        if (ungetc(dernier_car, fp) != 
# 128 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                                      (-1)
# 128 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                                         ) {
            ligne = ligne_avant;
            colonne = colonne_avant;
            dernier_car = 
# 131 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                         (-1)
# 131 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                            ;
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
    if (n + 1 < 128) {
        chaine[n] = c;
        chaine[n + 1] = '\0';
    } else {
        fprintf(
# 148 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
               (&_iob[2])
# 148 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                     , "Erreur lexicale ligne %d : lexeme trop long.\n", ligne);
        erreur_lexicale = 1;
    }
}

int est_lettre(int c)
{
    return c != 
# 155 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
               (-1) 
# 155 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                   && ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'));
}

int est_chiffre(int c)
{
    return c >= '0' && c <= '9';
}

void erreur_caractere(int c)
{
    if (c == 
# 165 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
            (-1)
# 165 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
               ) return;
    fprintf(
# 166 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
           (&_iob[2])
# 166 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                 , "Erreur lexicale ligne %d, colonne %d : caractere '%c' non reconnu.\n",
            ligne_symbole, colonne_symbole, (char)c);
    erreur_lexicale = 1;
}





typedef struct mot_cle {
    const char *lexeme;
    int code;
} mot_cle;

mot_cle tab_mots_cles[] = {
    {"program", 3},
    {"var", 4},
    {"Begin", 5},
    {"End", 6},
    {"writeln", 7},
    {"readln", 8},
    {"int", 20},
    {"if", 21},
    {"then", 22},
    {"Endif", 23}
};



int UnilexId(void)
{
    int i;
    for (i = 0; i < ((int)(sizeof(tab_mots_cles) / sizeof(tab_mots_cles[0]))); i++) {
        if (strcmp(tab_mots_cles[i].lexeme, ch) == 0)
            return tab_mots_cles[i].code;
    }
    return 2;
}

int RangerId(int k, int *c)
{
    int i;
    if (k != 2) return 0;
    for (i = 0; i < *c; i++) {
        if (strcmp(tab_iden[i].lexeme, ch) == 0)
            return i + 1;
    }
    if (*c >= 300) {
        fprintf(
# 214 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
               (&_iob[2])
# 214 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                     , "Erreur lexicale : table des identificateurs pleine.\n");
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

    s.ul = 0;
    s.att = 0;
    init_chaine(ch);
    init_chaine(lexeme_courant);

    while (1) {
        switch (etat) {
        case 0:
            init_chaine(ch);
            car = carsuivant();
            if (car == 
# 246 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                      (-1)
# 246 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                         ) {
                ligne_symbole = ligne;
                colonne_symbole = colonne + 1;
                s.ul = 19;
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
                s.ul = 14;
                s.att = 0;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), "(");
                return s;
            }
            if (car == ')') {
                s.ul = 17; s.att = 0;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), ")");
                return s;
            }
            if (car == ';') {
                s.ul = 11; s.att = 0;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), ";");
                return s;
            }
            if (car == '.') {
                s.ul = 9; s.att = 0;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), ".");
                return s;
            }
            if (car == ',') {
                s.ul = 12; s.att = 0;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), ",");
                return s;
            }
            if (car == '+') {
                s.ul = 16; s.att = 1;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), "+");
                return s;
            }
            if (car == '*') {
                s.ul = 16; s.att = 2;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), "*");
                return s;
            }
            erreur_caractere(car);
            s.ul = 0; s.att = 0;
            return s;

        case 1:
            car = carsuivant();
            if (est_lettre(car) || est_chiffre(car)) {
                ajouter((char)car, ch);
                if (erreur_lexicale) { s.ul = 0; return s; }
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
                s.ul = 0;
                s.att = 0;
            }
            return s;

        case 3:
            car = carsuivant();
            if (est_chiffre(car)) {
                ajouter((char)car, ch);
                if (erreur_lexicale) { s.ul = 0; return s; }
                etat = 3;
            } else {
                reculer(1);
                etat = 4;
            }
            break;

        case 4:
            (void)snprintf(lexeme_courant, sizeof(lexeme_courant), "%s", ch);
            
# 356 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
           (*_errno()) 
# 356 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                 = 0;
            valeur = strtol(ch, &fin, 10);
            if (
# 358 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
               (*_errno()) 
# 358 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                     == 
# 358 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                        34 
# 358 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                               || *fin != '\0' ||
                valeur > 
# 359 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                        2147483647 
# 359 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                                || valeur < 0) {
                fprintf(
# 360 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                       (&_iob[2])
# 360 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                             , "Erreur lexicale ligne %d : entier hors limites (%s).\n",
                        ligne_symbole, ch);
                erreur_lexicale = 1;
                s.ul = 0; s.att = 0;
                return s;
            }
            s.ul = 15;
            s.att = (int)valeur;
            return s;

        case 5:
            car = carsuivant();
            if (car == '=') etat = 6;
            else if (car == '>') etat = 7;
            else { reculer(1); etat = 8; }
            break;
        case 6:
            s.ul = 18; s.att = 1;
            (void)snprintf(lexeme_courant, sizeof(lexeme_courant), "<=");
            return s;
        case 7:
            s.ul = 18; s.att = 2;
            (void)snprintf(lexeme_courant, sizeof(lexeme_courant), "<>");
            return s;
        case 8:
            s.ul = 18; s.att = 3;
            (void)snprintf(lexeme_courant, sizeof(lexeme_courant), "<");
            return s;

        case 10:
            car = carsuivant();
            if (car == '=') etat = 11;
            else { reculer(1); etat = 12; }
            break;
        case 11:
            s.ul = 18; s.att = 4;
            (void)snprintf(lexeme_courant, sizeof(lexeme_courant), ">=");
            return s;
        case 12:
            s.ul = 18; s.att = 5;
            (void)snprintf(lexeme_courant, sizeof(lexeme_courant), ">");
            return s;

        case 13:
            car = carsuivant();
            if (car == '=') {
                s.ul = 18; s.att = 6;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), "==");
                return s;
            }
            reculer(1);
            fprintf(
# 411 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                   (&_iob[2])
# 411 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                         , "Erreur lexicale ligne %d, colonne %d : '=' seul interdit, utiliser '=='.\n",
                    ligne_symbole, colonne_symbole);
            erreur_lexicale = 1;
            s.ul = 0; s.att = 0;
            return s;

        case 15:
            car = carsuivant();
            if (car == '=') {
                s.ul = 13; s.att = 0;
                (void)snprintf(lexeme_courant, sizeof(lexeme_courant), ":=");
                return s;
            }
            reculer(1);
            s.ul = 10; s.att = 0;
            (void)snprintf(lexeme_courant, sizeof(lexeme_courant), ":");
            return s;

        case 30:
        {
            int etoile = 0;
            while (1) {
                car = carsuivant();
                if (car == 
# 434 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                          (-1)
# 434 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                             ) {
                    fprintf(
# 435 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                           (&_iob[2])
# 435 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                                 ,
                            "Erreur lexicale ligne %d : commentaire commence par '(*' mais non termine par '*)'.\n",
                            ligne_symbole);
                    erreur_lexicale = 1;
                    s.ul = 0; s.att = 0;
                    return s;
                }
                if (etoile && car == ')') break;
                etoile = (car == '*');
            }
            etat = 0;
            break;
        }

        default:
            s.ul = 0; s.att = 0;
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
        fprintf(
# 477 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
               (&_iob[2])
# 477 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                     , "Erreur semantique ligne %d : l'identificateur '%s' n'est pas declare.\n",
                ligne_symbole, nom);
        erreur_semantique = 1;
        return 0;
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
        fprintf(
# 494 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
               (&_iob[2])
# 494 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                     , "Erreur semantique ligne %d : declaration multiple de '%s'.\n",
                ligne_symbole, tab_iden[numero_id - 1].lexeme);
        erreur_semantique = 1;
        return;
    }
    if (nb_symboles >= 300) {
        fprintf(
# 500 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
               (&_iob[2])
# 500 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                     , "Erreur semantique : table des symboles pleine.\n");
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
    return type1 != 0 && type1 == type2;
}





void Emettre(const char *operation, const char *argument)
{
    if (nb_instructions >= 2000) {
        if (!erreur_code) {
            fprintf(
# 523 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                   (&_iob[2])
# 523 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                         , "Erreur : zone du code intermediaire pleine.\n");
            erreur_code = 1;
        }
        erreur_semantique = 1;
        return;
    }
    (void)snprintf(code[nb_instructions].operation,
                   sizeof(code[nb_instructions].operation), "%s", operation);
    (void)snprintf(code[nb_instructions].argument,
                   sizeof(code[nb_instructions].argument), "%s",
                   argument != 
# 533 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3 4
                              ((void *)0) 
# 533 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                                   ? argument : "");
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
        case 1: return "<=";
        case 2: return "<>";
        case 3: return "<";
        case 4: return ">=";
        case 5: return ">";
        case 6: return "==";
        default: return "?";
    }
}



void EmettreComparaison(int attribut)
{
    switch (attribut) {
        case 3: Emettre("Comparer-si-inf", ""); break;
        case 5: Emettre("Comparer-si-sup", ""); break;
        case 6: Emettre("Comparer-si-egal", ""); break;
        case 2: Emettre("Comparer-si-egal", ""); break;
        case 1: Emettre("Comparer-si-sup", ""); break;
        case 4: Emettre("Comparer-si-inf", ""); break;
        default: break;
    }
}

void EmettreSautSiConditionFausse(int attribut, int etiquette)
{
    char argument[32];
    (void)snprintf(argument, sizeof(argument), "L%d", etiquette);
    if (attribut == 2 || attribut == 1 || attribut == 4)
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
        case 2: return "id";
        case 3: return "program";
        case 4: return "var";
        case 5: return "Begin";
        case 6: return "End";
        case 7: return "writeln";
        case 8: return "readln";
        case 9: return ".";
        case 10: return ":";
        case 11: return ";";
        case 12: return ",";
        case 13: return ":=";
        case 14: return "(";
        case 15: return "nb";
        case 16: return "oparith";
        case 17: return ")";
        case 18: return "oprel";
        case 19: return "EOF";
        case 20: return "int";
        case 21: return "if";
        case 22: return "then";
        case 23: return "Endif";
        default: return "erreur";
    }
}

void erreur_syntaxe_attendue(int T)
{
    if (erreur_lexicale || erreur_syntaxique) return;
    fprintf(
# 650 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
           (&_iob[2])
# 650 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                 ,
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
    if (symbole.ul == 3) {
        accepter(3);
        accepter(2);
        accepter(11);
        Dcl();
        accepter(5);
        Liste_inst();
        accepter(6);
        accepter(9);
        if (!erreur_syntaxique && symbole.ul != 19)
            erreur_syntaxe_attendue(19);
        if (!erreur_syntaxique && !erreur_lexicale && !erreur_semantique)
            Emettre("Halte", "");
    } else {
        erreur_syntaxe_attendue(3);
    }
}


void Dcl(void)
{
    if (erreur_lexicale || erreur_syntaxique) return;
    if (symbole.ul == 4) {
        accepter(4);
        Liste_id();
        accepter(10);
        accepter(20);
        accepter(11);
    } else {
        erreur_syntaxe_attendue(4);
    }
}


void Liste_id(void)
{
    if (erreur_lexicale || erreur_syntaxique) return;
    if (symbole.ul == 2) {
        int numero = symbole.att;
        accepter(2);
        ajouter_type(numero, 1);
        L1();
    } else {
        erreur_syntaxe_attendue(2);
    }
}


void L1(void)
{
    if (erreur_lexicale || erreur_syntaxique) return;
    if (symbole.ul == 12) {
        accepter(12);
        Liste_id();
    } else if (symbole.ul == 10) {

    } else {
        erreur_syntaxe_attendue(12);
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
    if (symbole.ul == 2 || symbole.ul == 7 ||
        symbole.ul == 8 || symbole.ul == 21) {
        Liste_inst();
    } else if (symbole.ul == 6 || symbole.ul == 23) {

    } else {
        erreur_syntaxe_attendue(2);
    }
}


void I(void)
{
    if (erreur_lexicale || erreur_syntaxique) return;
    if (symbole.ul == 2) {
        int numero = symbole.att;
        int type_id = chercher_type(numero);
        int type_exp = 0;
        char adresse[80];

        adresse_id(numero, adresse, sizeof(adresse));
        Emettre("Valeurg", adresse);
        accepter(2);
        accepter(13);
        Exp(&type_exp);
        if (!erreur_lexicale && !erreur_syntaxique &&
            type_id != 0 && type_exp != 0 &&
            !compatible(type_id, type_exp)) {
            fprintf(
# 771 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                   (&_iob[2])
# 771 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                         , "Erreur semantique ligne %d : type incompatible dans l'affectation.\n",
                    ligne_symbole);
            erreur_semantique = 1;
        }
        accepter(11);
        Emettre(":=", "");
    }
    else if (symbole.ul == 7) {
        int numero;
        char adresse[80];
        accepter(7);
        accepter(14);
        if (symbole.ul == 2) {
            numero = symbole.att;
            (void)chercher_type(numero);
            adresse_id(numero, adresse, sizeof(adresse));
            Emettre("Valeurd", adresse);
            accepter(2);
        } else {
            erreur_syntaxe_attendue(2);
        }
        accepter(17);
        accepter(11);

        Emettre("Ecrire", "");
    }
    else if (symbole.ul == 8) {
        int numero;
        char adresse[80];
        accepter(8);
        accepter(14);
        if (symbole.ul == 2) {
            numero = symbole.att;
            (void)chercher_type(numero);
            adresse_id(numero, adresse, sizeof(adresse));
            Emettre("Valeurg", adresse);
            accepter(2);
        } else {
            erreur_syntaxe_attendue(2);
        }
        accepter(17);
        accepter(11);

        Emettre("Lire", "");
        Emettre(":=", "");
    }
    else if (symbole.ul == 21) {
        int type_condition = 0;
        int operateur = 0;
        int etiquette = creer_etiquette();
        char nom_etiquette[32];

        accepter(21);
        C(&type_condition, &operateur);
        if (type_condition != 2 && type_condition != 0) {
            fprintf(
# 826 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                   (&_iob[2])
# 826 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                         , "Erreur semantique ligne %d : condition de type booleen attendue.\n",
                    ligne_symbole);
            erreur_semantique = 1;
        }
        EmettreSautSiConditionFausse(operateur, etiquette);
        accepter(22);
        Liste_inst();
        accepter(23);
        (void)snprintf(nom_etiquette, sizeof(nom_etiquette), "L%d", etiquette);
        Emettre("Etiq", nom_etiquette);
    }
    else {
        erreur_syntaxe_attendue(2);
    }
}


void C(int *type_condition, int *operateur)
{
    if (erreur_lexicale || erreur_syntaxique) {
        *type_condition = 0;
        *operateur = 0;
        return;
    }
    int type1 = 0;
    int type2 = 0;

    Exp(&type1);
    if (symbole.ul == 18) {
        *operateur = symbole.att;
        accepter(18);
    } else {
        erreur_syntaxe_attendue(18);
        return;
    }
    Exp(&type2);

    if (type1 == 0 || type2 == 0) {
        *type_condition = 0;
    } else if (type1 != 1 || type2 != 1) {
        fprintf(
# 866 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
               (&_iob[2])
# 866 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                     , "Erreur semantique ligne %d : les deux operandes de '%s' doivent etre entiers.\n",
                ligne_symbole, nom_oprel(*operateur));
        erreur_semantique = 1;
        *type_condition = 0;
    } else {
        *type_condition = 2;
    }
    EmettreComparaison(*operateur);
}


void Exp(int *type_expression)
{
    if (erreur_lexicale || erreur_syntaxique) {
        *type_expression = 0;
        return;
    }
    if (symbole.ul == 2) {
        int numero = symbole.att;
        int type_id = chercher_type(numero);
        char adresse[80];
        adresse_id(numero, adresse, sizeof(adresse));
        Emettre("Valeurd", adresse);
        accepter(2);
        *type_expression = type_id;
        E1(type_expression);
    }
    else if (symbole.ul == 15) {
        char valeur[40];
        (void)snprintf(valeur, sizeof(valeur), "%d", symbole.att);
        Emettre("Empiler", valeur);
        accepter(15);
        *type_expression = 1;
        E1(type_expression);
    }
    else if (symbole.ul == 14) {
        accepter(14);
        Exp(type_expression);
        accepter(17);
        E1(type_expression);
    }
    else {
        erreur_syntaxe_attendue(2);
        *type_expression = 0;
    }
}


void E1(int *type_expression)
{
    if (erreur_lexicale || erreur_syntaxique) return;
    if (symbole.ul == 16) {
        int operateur = symbole.att;
        int type_droit = 0;
        accepter(16);
        Exp(&type_droit);

        if (*type_expression == 0 || type_droit == 0) {
            *type_expression = 0;
        } else if (*type_expression != 1 || type_droit != 1) {
            fprintf(
# 926 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                   (&_iob[2])
# 926 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                         , "Erreur semantique ligne %d : les operandes de '%s' doivent etre entiers.\n",
                    ligne_symbole, operateur == 1 ? "+" : "*");
            erreur_semantique = 1;
            *type_expression = 0;
        } else {
            *type_expression = 1;
        }
        Emettre(operateur == 1 ? "+" : "*", "");
        E1(type_expression);
    }
    else if (symbole.ul == 11 || symbole.ul == 17 ||
             symbole.ul == 18 || symbole.ul == 22) {

    }
    else {
        erreur_syntaxe_attendue(16);
    }
}





void afficher_unite(unilex s)
{
    printf("UL=%-10s code=%2d", nom_ul(s.ul), s.ul);
    if (s.ul == 2) {
        printf(" att=%d lexeme=%s", s.att,
               (s.att > 0 && s.att <= nb_id) ? tab_iden[s.att - 1].lexeme : "?");
    } else if (s.ul == 15) {
        printf(" att=%d", s.att);
    } else if (s.ul == 16) {
        printf(" att=%s", s.att == 1 ? "+" : "*");
    } else if (s.ul == 18) {
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
               table_symboles[i].type == 1 ? "int" : "inconnu",
               tab_iden[n - 1].lexeme);
    }
}

int analyser_tous_les_symboles(void)
{
    int nombre = 0;
    symbole = AnalLex();
    while (symbole.ul != 19 && symbole.ul != 0) {
        afficher_unite(symbole);
        nombre++;
        symbole = AnalLex();
    }
    if (symbole.ul == 0 || erreur_lexicale) return 0;
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
        (void)fflush(
# 1032 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                    (&_iob[1])
# 1032 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                          );
        if (fgets(nom_fichier_saisi, sizeof(nom_fichier_saisi), 
# 1033 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                                                               (&_iob[0])
# 1033 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                                                                    ) == 
# 1033 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3 4
                                                                         ((void *)0)
# 1033 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                                                                             ) {
            fprintf(
# 1034 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                   (&_iob[2])
# 1034 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                         , "Erreur : aucun chemin de fichier source fourni.\n");
            return 1;
        }
        longueur = strcspn(nom_fichier_saisi, "\r\n");
        nom_fichier_saisi[longueur] = '\0';
        if (longueur == 0) {
            fprintf(
# 1040 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3
                   (&_iob[2])
# 1040 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                         , "Erreur : le chemin du fichier source est vide.\n");
            return 1;
        }
        nom_fichier = nom_fichier_saisi;
    } else {
        afficher_aide(argv[0]);
        return 1;
    }

    fp = fopen(nom_fichier, "r");
    if (fp == 
# 1050 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c" 3 4
             ((void *)0)
# 1050 "C:\\Users\\User\\Desktop\\COURS ENSI\\Projet TC\\compilateur.c"
                 ) {
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
    if (symbole.ul == 0 || erreur_lexicale) {
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
