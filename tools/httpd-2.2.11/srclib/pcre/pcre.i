# 1 "pcre.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "pcre.c"
# 60 "pcre.c"
# 1 "internal.h" 1
# 48 "internal.h"
# 1 "config.h" 1
# 49 "internal.h" 2




# 1 "/usr/include/ctype.h" 1 3 4
# 25 "/usr/include/ctype.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 365 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 402 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 403 "/usr/include/sys/cdefs.h" 2 3 4
# 366 "/usr/include/features.h" 2 3 4
# 389 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4
# 10 "/usr/include/gnu/stubs.h" 3 4
# 1 "/usr/include/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/gnu/stubs.h" 2 3 4
# 390 "/usr/include/features.h" 2 3 4
# 26 "/usr/include/ctype.h" 2 3 4
# 1 "/usr/include/bits/types.h" 1 3 4
# 27 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;







typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
# 121 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 122 "/usr/include/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;
# 27 "/usr/include/ctype.h" 2 3 4


# 39 "/usr/include/ctype.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 36 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 2 3 4
# 60 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/byteswap.h" 1 3 4
# 28 "/usr/include/bits/byteswap.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/bits/byteswap.h" 2 3 4






# 1 "/usr/include/bits/byteswap-16.h" 1 3 4
# 36 "/usr/include/bits/byteswap.h" 2 3 4
# 44 "/usr/include/bits/byteswap.h" 3 4
static __inline unsigned int
__bswap_32 (unsigned int __bsx)
{
  return __builtin_bswap32 (__bsx);
}
# 108 "/usr/include/bits/byteswap.h" 3 4
static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return __builtin_bswap64 (__bsx);
}
# 61 "/usr/include/endian.h" 2 3 4
# 40 "/usr/include/ctype.h" 2 3 4






enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};
# 79 "/usr/include/ctype.h" 3 4
extern const unsigned short int **__ctype_b_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_tolower_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_toupper_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 104 "/usr/include/ctype.h" 3 4






extern int isalnum (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isalpha (int) __attribute__ ((__nothrow__ , __leaf__));
extern int iscntrl (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isdigit (int) __attribute__ ((__nothrow__ , __leaf__));
extern int islower (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isgraph (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isprint (int) __attribute__ ((__nothrow__ , __leaf__));
extern int ispunct (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isspace (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isupper (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isxdigit (int) __attribute__ ((__nothrow__ , __leaf__));



extern int tolower (int __c) __attribute__ ((__nothrow__ , __leaf__));


extern int toupper (int __c) __attribute__ ((__nothrow__ , __leaf__));








extern int isblank (int) __attribute__ ((__nothrow__ , __leaf__));






extern int isctype (int __c, int __mask) __attribute__ ((__nothrow__ , __leaf__));






extern int isascii (int __c) __attribute__ ((__nothrow__ , __leaf__));



extern int toascii (int __c) __attribute__ ((__nothrow__ , __leaf__));



extern int _toupper (int) __attribute__ ((__nothrow__ , __leaf__));
extern int _tolower (int) __attribute__ ((__nothrow__ , __leaf__));
# 257 "/usr/include/ctype.h" 3 4
# 1 "/usr/include/xlocale.h" 1 3 4
# 27 "/usr/include/xlocale.h" 3 4
typedef struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
} *__locale_t;


typedef __locale_t locale_t;
# 258 "/usr/include/ctype.h" 2 3 4
# 271 "/usr/include/ctype.h" 3 4
extern int isalnum_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isalpha_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int iscntrl_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isdigit_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int islower_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isgraph_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isprint_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int ispunct_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isspace_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isupper_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isxdigit_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));

extern int isblank_l (int, __locale_t) __attribute__ ((__nothrow__ , __leaf__));



extern int __tolower_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern int tolower_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));


extern int __toupper_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern int toupper_l (int __c, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
# 347 "/usr/include/ctype.h" 3 4

# 54 "internal.h" 2
# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include-fixed/limits.h" 1 3 4
# 34 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include-fixed/limits.h" 3 4
# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include-fixed/syslimits.h" 1 3 4






# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include-fixed/limits.h" 1 3 4
# 168 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include-fixed/limits.h" 3 4
# 1 "/usr/include/limits.h" 1 3 4
# 143 "/usr/include/limits.h" 3 4
# 1 "/usr/include/bits/posix1_lim.h" 1 3 4
# 160 "/usr/include/bits/posix1_lim.h" 3 4
# 1 "/usr/include/bits/local_lim.h" 1 3 4
# 38 "/usr/include/bits/local_lim.h" 3 4
# 1 "/usr/include/linux/limits.h" 1 3 4
# 39 "/usr/include/bits/local_lim.h" 2 3 4
# 161 "/usr/include/bits/posix1_lim.h" 2 3 4
# 144 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/bits/posix2_lim.h" 1 3 4
# 148 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/bits/xopen_lim.h" 1 3 4
# 33 "/usr/include/bits/xopen_lim.h" 3 4
# 1 "/usr/include/bits/stdio_lim.h" 1 3 4
# 34 "/usr/include/bits/xopen_lim.h" 2 3 4
# 152 "/usr/include/limits.h" 2 3 4
# 169 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include-fixed/limits.h" 2 3 4
# 8 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include-fixed/syslimits.h" 2 3 4
# 35 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include-fixed/limits.h" 2 3 4
# 55 "internal.h" 2
# 1 "/usr/include/setjmp.h" 1 3 4
# 27 "/usr/include/setjmp.h" 3 4


# 1 "/usr/include/bits/setjmp.h" 1 3 4
# 26 "/usr/include/bits/setjmp.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 27 "/usr/include/bits/setjmp.h" 2 3 4




typedef long int __jmp_buf[8];
# 30 "/usr/include/setjmp.h" 2 3 4
# 1 "/usr/include/bits/sigset.h" 1 3 4
# 22 "/usr/include/bits/sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 31 "/usr/include/setjmp.h" 2 3 4



struct __jmp_buf_tag
  {




    __jmp_buf __jmpbuf;
    int __mask_was_saved;
    __sigset_t __saved_mask;
  };




typedef struct __jmp_buf_tag jmp_buf[1];



extern int setjmp (jmp_buf __env) __attribute__ ((__nothrow__));






extern int __sigsetjmp (struct __jmp_buf_tag __env[1], int __savemask) __attribute__ ((__nothrow__));



extern int _setjmp (struct __jmp_buf_tag __env[1]) __attribute__ ((__nothrow__));










extern void longjmp (struct __jmp_buf_tag __env[1], int __val)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));







extern void _longjmp (struct __jmp_buf_tag __env[1], int __val)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));







typedef struct __jmp_buf_tag sigjmp_buf[1];
# 102 "/usr/include/setjmp.h" 3 4
extern void siglongjmp (sigjmp_buf __env, int __val)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));
# 112 "/usr/include/setjmp.h" 3 4

# 56 "internal.h" 2
# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 98 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 57 "internal.h" 2
# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 1 3 4
# 147 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 212 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 324 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 3 4
typedef int wchar_t;
# 58 "internal.h" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 29 "/usr/include/stdio.h" 3 4




# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 1 3 4
# 34 "/usr/include/stdio.h" 2 3 4
# 44 "/usr/include/stdio.h" 3 4
struct _IO_FILE;



typedef struct _IO_FILE FILE;





# 64 "/usr/include/stdio.h" 3 4
typedef struct _IO_FILE __FILE;
# 74 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/libio.h" 1 3 4
# 31 "/usr/include/libio.h" 3 4
# 1 "/usr/include/_G_config.h" 1 3 4
# 15 "/usr/include/_G_config.h" 3 4
# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 1 3 4
# 16 "/usr/include/_G_config.h" 2 3 4




# 1 "/usr/include/wchar.h" 1 3 4
# 82 "/usr/include/wchar.h" 3 4
typedef struct
{
  int __count;
  union
  {

    unsigned int __wch;



    char __wchb[4];
  } __value;
} __mbstate_t;
# 21 "/usr/include/_G_config.h" 2 3 4
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
# 32 "/usr/include/libio.h" 2 3 4
# 144 "/usr/include/libio.h" 3 4
struct _IO_jump_t; struct _IO_FILE;
# 154 "/usr/include/libio.h" 3 4
typedef void _IO_lock_t;





struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;



  int _pos;
# 177 "/usr/include/libio.h" 3 4
};


enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
# 245 "/usr/include/libio.h" 3 4
struct _IO_FILE {
  int _flags;




  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;



  int _flags2;

  __off_t _old_offset;



  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];



  _IO_lock_t *_lock;
# 293 "/usr/include/libio.h" 3 4
  __off64_t _offset;
# 302 "/usr/include/libio.h" 3 4
  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;
  size_t __pad5;

  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];

};


typedef struct _IO_FILE _IO_FILE;


struct _IO_FILE_plus;

extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
# 338 "/usr/include/libio.h" 3 4
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);







typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);







typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);


typedef int __io_close_fn (void *__cookie);




typedef __io_read_fn cookie_read_function_t;
typedef __io_write_fn cookie_write_function_t;
typedef __io_seek_fn cookie_seek_function_t;
typedef __io_close_fn cookie_close_function_t;


typedef struct
{
  __io_read_fn *read;
  __io_write_fn *write;
  __io_seek_fn *seek;
  __io_close_fn *close;
} _IO_cookie_io_functions_t;
typedef _IO_cookie_io_functions_t cookie_io_functions_t;

struct _IO_cookie_file;


extern void _IO_cookie_init (struct _IO_cookie_file *__cfile, int __read_write,
        void *__cookie, _IO_cookie_io_functions_t __fns);







extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
# 434 "/usr/include/libio.h" 3 4
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));

extern int _IO_peekc_locked (_IO_FILE *__fp);





extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 464 "/usr/include/libio.h" 3 4
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);

extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);

extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
# 75 "/usr/include/stdio.h" 2 3 4
# 90 "/usr/include/stdio.h" 3 4
typedef __off_t off_t;






typedef __off64_t off64_t;




typedef __ssize_t ssize_t;







typedef _G_fpos_t fpos_t;





typedef _G_fpos64_t fpos64_t;
# 164 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/stdio_lim.h" 1 3 4
# 165 "/usr/include/stdio.h" 2 3 4



extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;







extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));




extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));








extern FILE *tmpfile (void) ;
# 205 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile64 (void) ;



extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;





extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;
# 227 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;








extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);

# 252 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 262 "/usr/include/stdio.h" 3 4
extern int fcloseall (void);









extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 295 "/usr/include/stdio.h" 3 4


extern FILE *fopen64 (const char *__restrict __filename,
        const char *__restrict __modes) ;
extern FILE *freopen64 (const char *__restrict __filename,
   const char *__restrict __modes,
   FILE *__restrict __stream) ;




extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) ;





extern FILE *fopencookie (void *__restrict __magic_cookie,
     const char *__restrict __modes,
     _IO_cookie_io_functions_t __io_funcs) __attribute__ ((__nothrow__ , __leaf__)) ;




extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) ;




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) ;






extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));





extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));








extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));





extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));






extern int vasprintf (char **__restrict __ptr, const char *__restrict __f,
        __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 0))) ;
extern int __asprintf (char **__restrict __ptr,
         const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3))) ;
extern int asprintf (char **__restrict __ptr,
       const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3))) ;




extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));








extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
# 463 "/usr/include/stdio.h" 3 4








extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 522 "/usr/include/stdio.h" 3 4









extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);

# 550 "/usr/include/stdio.h" 3 4
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 561 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);











extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);

# 594 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);








extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
# 640 "/usr/include/stdio.h" 3 4

# 649 "/usr/include/stdio.h" 3 4
extern char *fgets_unlocked (char *__restrict __s, int __n,
        FILE *__restrict __stream) ;
# 665 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) ;







extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) ;








extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);

# 726 "/usr/include/stdio.h" 3 4
extern int fputs_unlocked (const char *__restrict __s,
      FILE *__restrict __stream);
# 737 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);








extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);

# 773 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) ;
# 792 "/usr/include/stdio.h" 3 4






extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 815 "/usr/include/stdio.h" 3 4



extern int fseeko64 (FILE *__stream, __off64_t __off, int __whence);
extern __off64_t ftello64 (FILE *__stream) ;
extern int fgetpos64 (FILE *__restrict __stream, fpos64_t *__restrict __pos);
extern int fsetpos64 (FILE *__stream, const fpos64_t *__pos);




extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;








extern void perror (const char *__s);






# 1 "/usr/include/bits/sys_errlist.h" 1 3 4
# 26 "/usr/include/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern const char *const sys_errlist[];


extern int _sys_nerr;
extern const char *const _sys_errlist[];
# 854 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
# 872 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));





extern char *cuserid (char *__s);




struct obstack;


extern int obstack_printf (struct obstack *__restrict __obstack,
      const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3)));
extern int obstack_vprintf (struct obstack *__restrict __obstack,
       const char *__restrict __format,
       __gnuc_va_list __args)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 0)));







extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
# 942 "/usr/include/stdio.h" 3 4

# 59 "internal.h" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 1 3 4
# 33 "/usr/include/stdlib.h" 2 3 4








# 1 "/usr/include/bits/waitflags.h" 1 3 4
# 42 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/bits/waitstatus.h" 1 3 4
# 66 "/usr/include/bits/waitstatus.h" 3 4
union wait
  {
    int w_status;
    struct
      {

 unsigned int __w_termsig:7;
 unsigned int __w_coredump:1;
 unsigned int __w_retcode:8;
 unsigned int:16;







      } __wait_terminated;
    struct
      {

 unsigned int __w_stopval:8;
 unsigned int __w_stopsig:8;
 unsigned int:16;






      } __wait_stopped;
  };
# 43 "/usr/include/stdlib.h" 2 3 4
# 67 "/usr/include/stdlib.h" 3 4
typedef union
  {
    union wait *__uptr;
    int *__iptr;
  } __WAIT_STATUS __attribute__ ((__transparent_union__));
# 95 "/usr/include/stdlib.h" 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;







__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;


# 139 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) ;




extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

# 239 "/usr/include/stdlib.h" 3 4
extern long int strtol_l (const char *__restrict __nptr,
     char **__restrict __endptr, int __base,
     __locale_t __loc) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 4)));

extern unsigned long int strtoul_l (const char *__restrict __nptr,
        char **__restrict __endptr,
        int __base, __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 4)));

__extension__
extern long long int strtoll_l (const char *__restrict __nptr,
    char **__restrict __endptr, int __base,
    __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 4)));

__extension__
extern unsigned long long int strtoull_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       int __base, __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 4)));

extern double strtod_l (const char *__restrict __nptr,
   char **__restrict __endptr, __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));

extern float strtof_l (const char *__restrict __nptr,
         char **__restrict __endptr, __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));

extern long double strtold_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
# 305 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) ;


extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;




# 1 "/usr/include/sys/types.h" 1 3 4
# 27 "/usr/include/sys/types.h" 3 4






typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;



typedef __ino_t ino_t;






typedef __ino64_t ino64_t;




typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;
# 98 "/usr/include/sys/types.h" 3 4
typedef __pid_t pid_t;





typedef __id_t id_t;
# 115 "/usr/include/sys/types.h" 3 4
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;
# 132 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 57 "/usr/include/time.h" 3 4


typedef __clock_t clock_t;



# 73 "/usr/include/time.h" 3 4


typedef __time_t time_t;



# 91 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 103 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 133 "/usr/include/sys/types.h" 2 3 4



typedef __useconds_t useconds_t;



typedef __suseconds_t suseconds_t;





# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 1 3 4
# 147 "/usr/include/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
# 194 "/usr/include/sys/types.h" 3 4
typedef int int8_t __attribute__ ((__mode__ (__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef int int64_t __attribute__ ((__mode__ (__DI__)));


typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));
# 219 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/sys/select.h" 1 3 4
# 30 "/usr/include/sys/select.h" 3 4
# 1 "/usr/include/bits/select.h" 1 3 4
# 22 "/usr/include/bits/select.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 23 "/usr/include/bits/select.h" 2 3 4
# 31 "/usr/include/sys/select.h" 2 3 4


# 1 "/usr/include/bits/sigset.h" 1 3 4
# 34 "/usr/include/sys/select.h" 2 3 4



typedef __sigset_t sigset_t;





# 1 "/usr/include/time.h" 1 3 4
# 120 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
# 44 "/usr/include/sys/select.h" 2 3 4

# 1 "/usr/include/bits/time.h" 1 3 4
# 30 "/usr/include/bits/time.h" 3 4
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
# 46 "/usr/include/sys/select.h" 2 3 4
# 54 "/usr/include/sys/select.h" 3 4
typedef long int __fd_mask;
# 64 "/usr/include/sys/select.h" 3 4
typedef struct
  {



    __fd_mask fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];





  } fd_set;






typedef __fd_mask fd_mask;
# 96 "/usr/include/sys/select.h" 3 4

# 106 "/usr/include/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 118 "/usr/include/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 131 "/usr/include/sys/select.h" 3 4

# 220 "/usr/include/sys/types.h" 2 3 4


# 1 "/usr/include/sys/sysmacros.h" 1 3 4
# 24 "/usr/include/sys/sysmacros.h" 3 4


__extension__
extern unsigned int gnu_dev_major (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned int gnu_dev_minor (unsigned long long int __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__
extern unsigned long long int gnu_dev_makedev (unsigned int __major,
            unsigned int __minor)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 58 "/usr/include/sys/sysmacros.h" 3 4

# 223 "/usr/include/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 262 "/usr/include/sys/types.h" 3 4
typedef __blkcnt64_t blkcnt64_t;
typedef __fsblkcnt64_t fsblkcnt64_t;
typedef __fsfilcnt64_t fsfilcnt64_t;





# 1 "/usr/include/bits/pthreadtypes.h" 1 3 4
# 21 "/usr/include/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 22 "/usr/include/bits/pthreadtypes.h" 2 3 4
# 60 "/usr/include/bits/pthreadtypes.h" 3 4
typedef unsigned long int pthread_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;





typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
# 90 "/usr/include/bits/pthreadtypes.h" 3 4
typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;

    unsigned int __nusers;



    int __kind;

    short __spins;
    short __elision;
    __pthread_list_t __list;
# 125 "/usr/include/bits/pthreadtypes.h" 3 4
  } __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;





typedef union
{

  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;
    int __writer;
    int __shared;
    signed char __rwelision;




    unsigned char __pad1[7];


    unsigned long int __pad2;


    unsigned int __flags;

  } __data;
# 220 "/usr/include/bits/pthreadtypes.h" 3 4
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 271 "/usr/include/sys/types.h" 2 3 4



# 315 "/usr/include/stdlib.h" 2 3 4






extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));






extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));




extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));







extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;

  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));









extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;










extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));




extern void cfree (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));



# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 1 3 4
# 25 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));






# 493 "/usr/include/stdlib.h" 2 3 4





extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;




extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (2))) ;




extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));





extern void quick_exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));







extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));






extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;





extern char *secure_getenv (const char *__name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;






extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));
# 606 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 619 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 629 "/usr/include/stdlib.h" 3 4
extern int mkstemp64 (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 641 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 651 "/usr/include/stdlib.h" 3 4
extern int mkstemps64 (char *__template, int __suffixlen)
     __attribute__ ((__nonnull__ (1))) ;
# 662 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 673 "/usr/include/stdlib.h" 3 4
extern int mkostemp (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) ;
# 683 "/usr/include/stdlib.h" 3 4
extern int mkostemp64 (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) ;
# 693 "/usr/include/stdlib.h" 3 4
extern int mkostemps (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) ;
# 705 "/usr/include/stdlib.h" 3 4
extern int mkostemps64 (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) ;









extern int system (const char *__command) ;






extern char *canonicalize_file_name (const char *__name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 733 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) ;






typedef int (*__compar_fn_t) (const void *, const void *);


typedef __compar_fn_t comparison_fn_t;



typedef int (*__compar_d_fn_t) (const void *, const void *, void *);





extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));

extern void qsort_r (void *__base, size_t __nmemb, size_t __size,
       __compar_d_fn_t __compar, void *__arg)
  __attribute__ ((__nonnull__ (1, 4)));




extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;



__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;







extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;




__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;

# 811 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));






extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));








extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 898 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) ;





extern void setkey (const char *__key) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int posix_openpt (int __oflag) ;







extern int grantpt (int __fd) __attribute__ ((__nothrow__ , __leaf__));



extern int unlockpt (int __fd) __attribute__ ((__nothrow__ , __leaf__));




extern char *ptsname (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;






extern int ptsname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern int getpt (void);






extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


# 1 "/usr/include/bits/stdlib-float.h" 1 3 4
# 955 "/usr/include/stdlib.h" 2 3 4
# 967 "/usr/include/stdlib.h" 3 4

# 60 "internal.h" 2
# 1 "/usr/include/string.h" 1 3 4
# 27 "/usr/include/string.h" 3 4





# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 1 3 4
# 33 "/usr/include/string.h" 2 3 4
# 44 "/usr/include/string.h" 3 4


extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));






extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 96 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 110 "/usr/include/string.h" 3 4
extern void *rawmemchr (const void *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 121 "/usr/include/string.h" 3 4
extern void *memrchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));






extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

# 166 "/usr/include/string.h" 3 4
extern int strcoll_l (const char *__s1, const char *__s2, __locale_t __l)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    __locale_t __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));




extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 210 "/usr/include/string.h" 3 4

# 235 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 262 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


# 276 "/usr/include/string.h" 3 4
extern char *strchrnul (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));






extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 314 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 341 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));




extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 372 "/usr/include/string.h" 3 4
extern char *strcasestr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));







extern void *memmem (const void *__haystack, size_t __haystacklen,
       const void *__needle, size_t __needlelen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 3)));



extern void *__mempcpy (void *__restrict __dest,
   const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *mempcpy (void *__restrict __dest,
        const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));

# 437 "/usr/include/string.h" 3 4
extern char *strerror_r (int __errnum, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;





extern char *strerror_l (int __errnum, __locale_t __l) __attribute__ ((__nothrow__ , __leaf__));





extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern void bcopy (const void *__src, void *__dest, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 488 "/usr/include/string.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 516 "/usr/include/string.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern int ffs (int __i) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




extern int ffsl (long int __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));





extern int strcasecmp_l (const char *__s1, const char *__s2,
    __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, __locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));





extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));


extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int strverscmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strfry (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern void *memfrob (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 603 "/usr/include/string.h" 3 4
extern char *basename (const char *__filename) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 643 "/usr/include/string.h" 3 4

# 61 "internal.h" 2
# 73 "internal.h"
  typedef unsigned short pcre_uint16;







  typedef unsigned int pcre_uint32;
# 95 "internal.h"
typedef unsigned char uschar;



# 1 "pcre.h" 1
# 149 "pcre.h"
struct real_pcre;
typedef struct real_pcre pcre;





typedef struct pcre_extra {
  unsigned long int flags;
  void *study_data;
  unsigned long int match_limit;
  void *callout_data;
  const unsigned char *tables;
} pcre_extra;






typedef struct pcre_callout_block {
  int version;

  int callout_number;
  int *offset_vector;
  const char *subject;
  int subject_length;
  int start_match;
  int current_position;
  int capture_top;
  int capture_last;
  void *callout_data;

  int pattern_position;
  int next_item_length;

} pcre_callout_block;
# 195 "pcre.h"
extern void *(*pcre_malloc)(size_t);
extern void (*pcre_free)(void *);
extern void *(*pcre_stack_malloc)(size_t);
extern void (*pcre_stack_free)(void *);
extern int (*pcre_callout)(pcre_callout_block *);
# 210 "pcre.h"
extern pcre *pcre_compile(const char *, int, const char **,
              int *, const unsigned char *);
extern int pcre_config(int, void *);
extern int pcre_copy_named_substring(const pcre *, const char *,
              int *, int, const char *, char *, int);
extern int pcre_copy_substring(const char *, int *, int, int,
              char *, int);
extern int pcre_exec(const pcre *, const pcre_extra *,
              const char *, int, int, int, int *, int);
extern void pcre_free_substring(const char *);
extern void pcre_free_substring_list(const char **);
extern int pcre_fullinfo(const pcre *, const pcre_extra *, int,
              void *);
extern int pcre_get_named_substring(const pcre *, const char *,
              int *, int, const char *, const char **);
extern int pcre_get_stringnumber(const pcre *, const char *);
extern int pcre_get_substring(const char *, int *, int, int,
              const char **);
extern int pcre_get_substring_list(const char *, int *, int,
              const char ***);
extern int pcre_info(const pcre *, int *, int *);
extern const unsigned char *pcre_maketables(void);
extern pcre_extra *pcre_study(const pcre *, int, const char **);
extern const char *pcre_version(void);
# 100 "internal.h" 2
# 273 "internal.h"
typedef int BOOL;
# 316 "internal.h"
enum { ESC_A = 1, ESC_G, ESC_B, ESC_b, ESC_D, ESC_d, ESC_S, ESC_s, ESC_W,
       ESC_w, ESC_dum1, ESC_C, ESC_P, ESC_p, ESC_X, ESC_Z, ESC_z, ESC_E,
       ESC_Q, ESC_REF };
# 339 "internal.h"
enum {
  OP_END,



  OP_SOD,
  OP_SOM,
  OP_NOT_WORD_BOUNDARY,
  OP_WORD_BOUNDARY,
  OP_NOT_DIGIT,
  OP_DIGIT,
  OP_NOT_WHITESPACE,
  OP_WHITESPACE,
  OP_NOT_WORDCHAR,
  OP_WORDCHAR,
  OP_ANY,
  OP_ANYBYTE,
  OP_NOTPROP,
  OP_PROP,
  OP_EXTUNI,
  OP_EODN,
  OP_EOD,

  OP_OPT,
  OP_CIRC,
  OP_DOLL,
  OP_CHAR,
  OP_CHARNC,
  OP_NOT,

  OP_STAR,
  OP_MINSTAR,
  OP_PLUS,
  OP_MINPLUS,
  OP_QUERY,
  OP_MINQUERY,
  OP_UPTO,
  OP_MINUPTO,
  OP_EXACT,

  OP_NOTSTAR,
  OP_NOTMINSTAR,
  OP_NOTPLUS,
  OP_NOTMINPLUS,
  OP_NOTQUERY,
  OP_NOTMINQUERY,
  OP_NOTUPTO,
  OP_NOTMINUPTO,
  OP_NOTEXACT,

  OP_TYPESTAR,
  OP_TYPEMINSTAR,
  OP_TYPEPLUS,
  OP_TYPEMINPLUS,
  OP_TYPEQUERY,
  OP_TYPEMINQUERY,
  OP_TYPEUPTO,
  OP_TYPEMINUPTO,
  OP_TYPEEXACT,

  OP_CRSTAR,
  OP_CRMINSTAR,
  OP_CRPLUS,
  OP_CRMINPLUS,
  OP_CRQUERY,
  OP_CRMINQUERY,
  OP_CRRANGE,
  OP_CRMINRANGE,

  OP_CLASS,
  OP_NCLASS,



  OP_XCLASS,


  OP_REF,
  OP_RECURSE,
  OP_CALLOUT,

  OP_ALT,
  OP_KET,
  OP_KETRMAX,
  OP_KETRMIN,



  OP_ASSERT,
  OP_ASSERT_NOT,
  OP_ASSERTBACK,
  OP_ASSERTBACK_NOT,
  OP_REVERSE,




  OP_ONCE,
  OP_COND,
  OP_CREF,

  OP_BRAZERO,
  OP_BRAMINZERO,

  OP_BRANUMBER,


  OP_BRA


};
# 610 "internal.h"
typedef struct real_pcre {
  pcre_uint32 magic_number;
  pcre_uint32 size;
  pcre_uint32 options;
  pcre_uint32 dummy1;

  pcre_uint16 top_bracket;
  pcre_uint16 top_backref;
  pcre_uint16 first_byte;
  pcre_uint16 req_byte;
  pcre_uint16 name_table_offset;
  pcre_uint16 name_entry_size;
  pcre_uint16 name_count;
  pcre_uint16 dummy2;

  const unsigned char *tables;
  const unsigned char *nullpad;
} real_pcre;




typedef struct pcre_study_data {
  pcre_uint32 size;
  pcre_uint32 options;
  uschar start_bits[32];
} pcre_study_data;




typedef struct compile_data {
  const uschar *lcc;
  const uschar *fcc;
  const uschar *cbits;
  const uschar *ctypes;
  const uschar *start_code;
  const uschar *start_pattern;
  uschar *name_table;
  int names_found;
  int name_entry_size;
  int top_backref;
  unsigned int backref_map;
  int req_varyopt;
  BOOL nopartial;
} compile_data;




typedef struct branch_chain {
  struct branch_chain *outer;
  uschar *current;
} branch_chain;




typedef struct recursion_info {
  struct recursion_info *prevrec;
  int group_num;
  const uschar *after_call;
  const uschar *save_start;
  int *offset_save;
  int saved_max;
} recursion_info;
# 685 "internal.h"
struct heapframe;




typedef struct match_data {
  unsigned long int match_call_count;
  unsigned long int match_limit;
  int *offset_vector;
  int offset_end;
  int offset_max;
  const uschar *lcc;
  const uschar *ctypes;
  BOOL offset_overflow;
  BOOL notbol;
  BOOL noteol;
  BOOL utf8;
  BOOL endonly;
  BOOL notempty;
  BOOL partial;
  BOOL hitend;
  const uschar *start_code;
  const uschar *start_subject;
  const uschar *end_subject;
  const uschar *start_match;
  const uschar *end_match_ptr;
  int end_offset_top;
  int capture_last;
  int start_offset;
  recursion_info *recursive;
  void *callout_data;
  struct heapframe *thisframe;
} match_data;
# 61 "pcre.c" 2
# 95 "pcre.c"
static const uschar OP_lengths[] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 2, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 2, 2, 2, 2, 2, 2, 4, 4, 4, 2, 2, 2, 2, 2, 2, 4, 4, 4, 1, 1, 1, 1, 1, 1, 5, 5, 33, 33, 0, 3, 1+2, 2+2*2, 1+2, 1+2, 1+2, 1+2, 1+2, 1+2, 1+2, 1+2, 1+2, 1+2, 1+2, 3, 1, 1, 3, 1+2 };



static const char rep_min[] = { 0, 0, 1, 1, 0, 0 };
static const char rep_max[] = { 0, 0, 0, 0, 1, 1 };







static const short int escapes[] = {
     0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, ':', ';', '<', '=', '>', '?',
   '@', -ESC_A, -ESC_B, -ESC_C, -ESC_D, -ESC_E, 0, -ESC_G,
     0, 0, 0, 0, 0, 0, 0, 0,
-ESC_P, -ESC_Q, 0, -ESC_S, 0, 0, 0, -ESC_W,
-ESC_X, 0, -ESC_Z, '[', '\\', ']', '^', '_',
   '`', 7, -ESC_b, 0, -ESC_d, 27, '\f', 0,
     0, 0, 0, 0, 0, 0, '\n', 0,
-ESC_p, 0, '\r', -ESC_s, '\t', 0, 0, -ESC_w,
     0, 0, -ESC_z
};
# 154 "pcre.c"
static const char *const posix_names[] = {
  "alpha", "lower", "upper",
  "alnum", "ascii", "blank", "cntrl", "digit", "graph",
  "print", "punct", "space", "word", "xdigit" };

static const uschar posix_name_lengths[] = {
  5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 6, 0 };





static const int posix_class_maps[] = {
  128, 96, -1,
  128, -1, -1,
  96, -1, -1,
  64, 128, 96,
  224, 288, -1,
  0, -1, -1,
  288, -1, -1,
  64, -1, -1,
  192, -1, -1,
  224, -1, -1,
  256, -1, -1,
  0, -1, -1,
  160, -1, -1,
  32,-1, -1
};
# 200 "pcre.c"
static const unsigned char digitab[] =
  {
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x0c,0x0c,0x0c,0x0c,0x0c,0x0c,0x0c,0x0c,
  0x0c,0x0c,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x08,0x08,0x08,0x08,0x08,0x08,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x08,0x08,0x08,0x08,0x08,0x08,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};
# 309 "pcre.c"
static BOOL
  compile_regex(int, int, int *, uschar **, const uschar **, const char **,
    BOOL, int, int *, int *, branch_chain *, compile_data *);







typedef struct eptrblock {
  struct eptrblock *epb_prev;
  const uschar *epb_saved_eptr;
} eptrblock;
# 355 "pcre.c"
void *(*pcre_malloc)(size_t) = malloc;
void (*pcre_free)(void *) = free;
void *(*pcre_stack_malloc)(size_t) = malloc;
void (*pcre_stack_free)(void *) = free;
int (*pcre_callout)(pcre_callout_block *) = ((void *)0);
# 470 "pcre.c"
# 1 "chartables.c" 1
# 13 "chartables.c"
static unsigned char pcre_default_tables[] = {



    0, 1, 2, 3, 4, 5, 6, 7,
    8, 9, 10, 11, 12, 13, 14, 15,
   16, 17, 18, 19, 20, 21, 22, 23,
   24, 25, 26, 27, 28, 29, 30, 31,
   32, 33, 34, 35, 36, 37, 38, 39,
   40, 41, 42, 43, 44, 45, 46, 47,
   48, 49, 50, 51, 52, 53, 54, 55,
   56, 57, 58, 59, 60, 61, 62, 63,
   64, 97, 98, 99,100,101,102,103,
  104,105,106,107,108,109,110,111,
  112,113,114,115,116,117,118,119,
  120,121,122, 91, 92, 93, 94, 95,
   96, 97, 98, 99,100,101,102,103,
  104,105,106,107,108,109,110,111,
  112,113,114,115,116,117,118,119,
  120,121,122,123,124,125,126,127,
  128,129,130,131,132,133,134,135,
  136,137,138,139,140,141,142,143,
  144,145,146,147,148,149,150,151,
  152,153,154,155,156,157,158,159,
  160,161,162,163,164,165,166,167,
  168,169,170,171,172,173,174,175,
  176,177,178,179,180,181,182,183,
  184,185,186,187,188,189,190,191,
  192,193,194,195,196,197,198,199,
  200,201,202,203,204,205,206,207,
  208,209,210,211,212,213,214,215,
  216,217,218,219,220,221,222,223,
  224,225,226,227,228,229,230,231,
  232,233,234,235,236,237,238,239,
  240,241,242,243,244,245,246,247,
  248,249,250,251,252,253,254,255,



    0, 1, 2, 3, 4, 5, 6, 7,
    8, 9, 10, 11, 12, 13, 14, 15,
   16, 17, 18, 19, 20, 21, 22, 23,
   24, 25, 26, 27, 28, 29, 30, 31,
   32, 33, 34, 35, 36, 37, 38, 39,
   40, 41, 42, 43, 44, 45, 46, 47,
   48, 49, 50, 51, 52, 53, 54, 55,
   56, 57, 58, 59, 60, 61, 62, 63,
   64, 97, 98, 99,100,101,102,103,
  104,105,106,107,108,109,110,111,
  112,113,114,115,116,117,118,119,
  120,121,122, 91, 92, 93, 94, 95,
   96, 65, 66, 67, 68, 69, 70, 71,
   72, 73, 74, 75, 76, 77, 78, 79,
   80, 81, 82, 83, 84, 85, 86, 87,
   88, 89, 90,123,124,125,126,127,
  128,129,130,131,132,133,134,135,
  136,137,138,139,140,141,142,143,
  144,145,146,147,148,149,150,151,
  152,153,154,155,156,157,158,159,
  160,161,162,163,164,165,166,167,
  168,169,170,171,172,173,174,175,
  176,177,178,179,180,181,182,183,
  184,185,186,187,188,189,190,191,
  192,193,194,195,196,197,198,199,
  200,201,202,203,204,205,206,207,
  208,209,210,211,212,213,214,215,
  216,217,218,219,220,221,222,223,
  224,225,226,227,228,229,230,231,
  232,233,234,235,236,237,238,239,
  240,241,242,243,244,245,246,247,
  248,249,250,251,252,253,254,255,







  0x00,0x3e,0x00,0x00,0x01,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

  0x00,0x00,0x00,0x00,0x00,0x00,0xff,0x03,
  0x7e,0x00,0x00,0x00,0x7e,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

  0x00,0x00,0x00,0x00,0x00,0x00,0xff,0x03,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0xfe,0xff,0xff,0x07,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0xfe,0xff,0xff,0x07,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

  0x00,0x00,0x00,0x00,0x00,0x00,0xff,0x03,
  0xfe,0xff,0xff,0x87,0xfe,0xff,0xff,0x07,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

  0x00,0x00,0x00,0x00,0xfe,0xff,0xff,0xff,
  0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x7f,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

  0x00,0x00,0x00,0x00,0xff,0xff,0xff,0xff,
  0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x7f,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

  0x00,0x00,0x00,0x00,0xfe,0xff,0x00,0xfc,
  0x01,0x00,0x00,0xf8,0x01,0x00,0x00,0x78,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

  0xff,0xff,0xff,0xff,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
# 150 "chartables.c"
  0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x01,0x01,0x00,0x01,0x01,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x01,0x00,0x00,0x00,0x80,0x00,0x00,0x00,
  0x80,0x80,0x80,0x80,0x00,0x00,0x80,0x00,
  0x1c,0x1c,0x1c,0x1c,0x1c,0x1c,0x1c,0x1c,
  0x1c,0x1c,0x00,0x00,0x00,0x00,0x00,0x80,
  0x00,0x1a,0x1a,0x1a,0x1a,0x1a,0x1a,0x12,
  0x12,0x12,0x12,0x12,0x12,0x12,0x12,0x12,
  0x12,0x12,0x12,0x12,0x12,0x12,0x12,0x12,
  0x12,0x12,0x12,0x80,0x00,0x00,0x80,0x10,
  0x00,0x1a,0x1a,0x1a,0x1a,0x1a,0x1a,0x12,
  0x12,0x12,0x12,0x12,0x12,0x12,0x12,0x12,
  0x12,0x12,0x12,0x12,0x12,0x12,0x12,0x12,
  0x12,0x12,0x12,0x80,0x80,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};
# 471 "pcre.c" 2
# 555 "pcre.c"
 const char *
pcre_version(void)
{
return "5" "." "0" " " "13-Sep-2004";
}
# 580 "pcre.c"
static pcre_uint16
byteflip2(pcre_uint16 value)
{
return ((value & 0x00ff) << 8) |
       ((value & 0xff00) >> 8);
}

static pcre_uint32
byteflip4(pcre_uint32 value)
{
return ((value & 0x000000ff) << 24) |
       ((value & 0x0000ff00) << 8) |
       ((value & 0x00ff0000) >> 8) |
       ((value & 0xff000000) >> 24);
}
# 616 "pcre.c"
static real_pcre *
try_flipped(const real_pcre *re, real_pcre *internal_re,
  const pcre_study_data *study, pcre_study_data *internal_study)
{
if (byteflip4(re->magic_number) != 0x50435245UL)
  return ((void *)0);

*internal_re = *re;
internal_re->size = byteflip4(re->size);
internal_re->options = byteflip4(re->options);
internal_re->top_bracket = byteflip2(re->top_bracket);
internal_re->top_backref = byteflip2(re->top_backref);
internal_re->first_byte = byteflip2(re->first_byte);
internal_re->req_byte = byteflip2(re->req_byte);
internal_re->name_table_offset = byteflip2(re->name_table_offset);
internal_re->name_entry_size = byteflip2(re->name_entry_size);
internal_re->name_count = byteflip2(re->name_count);

if (study != ((void *)0))
  {
  *internal_study = *study;
  internal_study->size = byteflip4(study->size);
  internal_study->options = byteflip4(study->options);
  }

return internal_re;
}
# 668 "pcre.c"
 int
pcre_info(const pcre *argument_re, int *optptr, int *first_byte)
{
real_pcre internal_re;
const real_pcre *re = (const real_pcre *)argument_re;
if (re == ((void *)0)) return (-2);
if (re->magic_number != 0x50435245UL)
  {
  re = try_flipped(re, &internal_re, ((void *)0), ((void *)0));
  if (re == ((void *)0)) return (-4);
  }
if (optptr != ((void *)0)) *optptr = (int)(re->options & (0x0001|0x0008|0x0010|0x0002| 0x0004|0x0020|0x0040|0x0200|0x0800| 0x1000|0x2000|0x4000));
if (first_byte != ((void *)0))
  *first_byte = ((re->options & 0x40000000) != 0)? re->first_byte :
     ((re->options & 0x10000000) != 0)? -1 : -2;
return re->top_bracket;
}
# 704 "pcre.c"
 int
pcre_fullinfo(const pcre *argument_re, const pcre_extra *extra_data, int what,
  void *where)
{
real_pcre internal_re;
pcre_study_data internal_study;
const real_pcre *re = (const real_pcre *)argument_re;
const pcre_study_data *study = ((void *)0);

if (re == ((void *)0) || where == ((void *)0)) return (-2);

if (extra_data != ((void *)0) && (extra_data->flags & 0x0001) != 0)
  study = (const pcre_study_data *)extra_data->study_data;

if (re->magic_number != 0x50435245UL)
  {
  re = try_flipped(re, &internal_re, study, &internal_study);
  if (re == ((void *)0)) return (-4);
  if (study != ((void *)0)) study = &internal_study;
  }

switch (what)
  {
  case 0:
  *((unsigned long int *)where) = re->options & (0x0001|0x0008|0x0010|0x0002| 0x0004|0x0020|0x0040|0x0200|0x0800| 0x1000|0x2000|0x4000);
  break;

  case 1:
  *((size_t *)where) = re->size;
  break;

  case 10:
  *((size_t *)where) = (study == ((void *)0))? 0 : study->size;
  break;

  case 2:
  *((int *)where) = re->top_bracket;
  break;

  case 3:
  *((int *)where) = re->top_backref;
  break;

  case 4:
  *((int *)where) =
    ((re->options & 0x40000000) != 0)? re->first_byte :
    ((re->options & 0x10000000) != 0)? -1 : -2;
  break;




  case 5:
  *((const uschar **)where) =
    (study != ((void *)0) && (study->options & 0x01) != 0)?
      ((const pcre_study_data *)extra_data->study_data)->start_bits : ((void *)0);
  break;

  case 6:
  *((int *)where) =
    ((re->options & 0x20000000) != 0)? re->req_byte : -1;
  break;

  case 7:
  *((int *)where) = re->name_entry_size;
  break;

  case 8:
  *((int *)where) = re->name_count;
  break;

  case 9:
  *((const uschar **)where) = (const uschar *)re + re->name_table_offset;
  break;

  case 11:
  *((const uschar **)where) = (const uschar *)pcre_default_tables;
  break;

  default: return (-3);
  }

return 0;
}
# 805 "pcre.c"
 int
pcre_config(int what, void *where)
{
switch (what)
  {
  case 0:



  *((int *)where) = 0;

  break;

  case 6:



  *((int *)where) = 0;

  break;

  case 1:
  *((int *)where) = '\n';
  break;

  case 2:
  *((int *)where) = 2;
  break;

  case 3:
  *((int *)where) = 10;
  break;

  case 4:
  *((unsigned int *)where) = 10000000;
  break;

  case 5:



  *((int *)where) = 1;

  break;

  default: return (-3);
  }

return 0;
}
# 910 "pcre.c"
static int
check_escape(const uschar **ptrptr, const char **errorptr, int bracount,
  int options, BOOL isclass)
{
const uschar *ptr = *ptrptr;
int c, i;



c = *(++ptr);
if (c == 0) *errorptr = "\\ at end of pattern";






else if (c < '0' || c > 'z') {}
else if ((i = escapes[c - '0']) != 0) c = i;
# 937 "pcre.c"
else
  {
  const uschar *oldptr;
  switch (c)
    {



    case 'l':
    case 'L':
    case 'N':
    case 'u':
    case 'U':
    *errorptr = "PCRE does not support \\L, \\l, \\N, \\U, or \\u";
    break;
# 965 "pcre.c"
    case '1': case '2': case '3': case '4': case '5':
    case '6': case '7': case '8': case '9':

    if (!isclass)
      {
      oldptr = ptr;
      c -= '0';
      while ((digitab[ptr[1]] & 0x04) != 0)
        c = c * 10 + *(++ptr) - '0';
      if (c < 10 || c <= bracount)
        {
        c = -(ESC_REF + c);
        break;
        }
      ptr = oldptr;
      }





    if ((c = *ptr) >= '8')
      {
      ptr--;
      c = 0;
      break;
      }




    case '0':
    c -= '0';
    while(i++ < 2 && ptr[1] >= '0' && ptr[1] <= '7')
        c = c * 8 + *(++ptr) - '0';
    c &= 255;
    break;




    case 'x':
# 1038 "pcre.c"
    c = 0;
    while (i++ < 2 && (digitab[ptr[1]] & 0x08) != 0)
      {
      int cc;
      cc = *(++ptr);

      if (cc >= 'a') cc -= 32;
      c = c * 16 + cc - ((cc < 'A')? '0' : ('A' - 10));




      }
    break;



    case 'c':
    c = *(++ptr);
    if (c == 0)
      {
      *errorptr = "\\c at end of pattern";
      return 0;
      }






    if (c >= 'a' && c <= 'z') c -= 32;
    c ^= 0x40;




    break;







    default:
    if ((options & 0x0040) != 0) switch(c)
      {
      default:
      *errorptr = "unrecognized character follows \\";
      break;
      }
    break;
    }
  }

*ptrptr = ptr;
return c;
}
# 1207 "pcre.c"
static BOOL
is_counted_repeat(const uschar *p)
{
if ((digitab[*p++] & 0x04) == 0) return 0;
while ((digitab[*p] & 0x04) != 0) p++;
if (*p == '}') return 1;

if (*p++ != ',') return 0;
if (*p == '}') return 1;

if ((digitab[*p++] & 0x04) == 0) return 0;
while ((digitab[*p] & 0x04) != 0) p++;

return (*p == '}');
}
# 1244 "pcre.c"
static const uschar *
read_repeat_counts(const uschar *p, int *minp, int *maxp, const char **errorptr)
{
int min = 0;
int max = -1;




while ((digitab[*p] & 0x04) != 0) min = min * 10 + *p++ - '0';
if (min < 0 || min > 65535)
  {
  *errorptr = "number too big in {} quantifier";
  return p;
  }




if (*p == '}') max = min; else
  {
  if (*(++p) != '}')
    {
    max = 0;
    while((digitab[*p] & 0x04) != 0) max = max * 10 + *p++ - '0';
    if (max < 0 || max > 65535)
      {
      *errorptr = "number too big in {} quantifier";
      return p;
      }
    if (max < min)
      {
      *errorptr = "numbers out of order in {} quantifier";
      return p;
      }
    }
  }




*minp = min;
*maxp = max;
return p;
}
# 1312 "pcre.c"
static const uschar*
first_significant_code(const uschar *code, int *options, int optbit,
  BOOL skipassert)
{
for (;;)
  {
  switch ((int)*code)
    {
    case OP_OPT:
    if (optbit > 0 && ((int)code[1] & optbit) != (*options & optbit))
      *options = (int)code[1];
    code += 2;
    break;

    case OP_ASSERT_NOT:
    case OP_ASSERTBACK:
    case OP_ASSERTBACK_NOT:
    if (!skipassert) return code;
    do code += (((code)[1] << 8) | (code)[(1)+1]); while (*code == OP_ALT);
    code += OP_lengths[*code];
    break;

    case OP_WORD_BOUNDARY:
    case OP_NOT_WORD_BOUNDARY:
    if (!skipassert) return code;


    case OP_CALLOUT:
    case OP_CREF:
    case OP_BRANUMBER:
    code += OP_lengths[*code];
    break;

    default:
    return code;
    }
  }

}
# 1371 "pcre.c"
static int
find_fixedlength(uschar *code, int options)
{
int length = -1;

register int branchlength = 0;
register uschar *cc = code + 1 + 2;




for (;;)
  {
  int d;
  register int op = *cc;
  if (op >= OP_BRA) op = OP_BRA;

  switch (op)
    {
    case OP_BRA:
    case OP_ONCE:
    case OP_COND:
    d = find_fixedlength(cc, options);
    if (d < 0) return d;
    branchlength += d;
    do cc += (((cc)[1] << 8) | (cc)[(1)+1]); while (*cc == OP_ALT);
    cc += 1 + 2;
    break;





    case OP_ALT:
    case OP_KET:
    case OP_KETRMAX:
    case OP_KETRMIN:
    case OP_END:
    if (length < 0) length = branchlength;
      else if (length != branchlength) return -1;
    if (*cc != OP_ALT) return length;
    cc += 1 + 2;
    branchlength = 0;
    break;



    case OP_ASSERT:
    case OP_ASSERT_NOT:
    case OP_ASSERTBACK:
    case OP_ASSERTBACK_NOT:
    do cc += (((cc)[1] << 8) | (cc)[(1)+1]); while (*cc == OP_ALT);




    case OP_REVERSE:
    case OP_BRANUMBER:
    case OP_CREF:
    case OP_OPT:
    case OP_CALLOUT:
    case OP_SOD:
    case OP_SOM:
    case OP_EOD:
    case OP_EODN:
    case OP_CIRC:
    case OP_DOLL:
    case OP_NOT_WORD_BOUNDARY:
    case OP_WORD_BOUNDARY:
    cc += OP_lengths[*cc];
    break;



    case OP_CHAR:
    case OP_CHARNC:
    branchlength++;
    cc += 2;






    break;




    case OP_EXACT:
    branchlength += (((cc)[1] << 8) | (cc)[(1)+1]);
    cc += 4;






    break;

    case OP_TYPEEXACT:
    branchlength += (((cc)[1] << 8) | (cc)[(1)+1]);
    cc += 4;
    break;



    case OP_PROP:
    case OP_NOTPROP:
    cc++;


    case OP_NOT_DIGIT:
    case OP_DIGIT:
    case OP_NOT_WHITESPACE:
    case OP_WHITESPACE:
    case OP_NOT_WORDCHAR:
    case OP_WORDCHAR:
    case OP_ANY:
    branchlength++;
    cc++;
    break;



    case OP_ANYBYTE:
    return -2;
# 1507 "pcre.c"
    case OP_CLASS:
    case OP_NCLASS:
    cc += 33;

    switch (*cc)
      {
      case OP_CRSTAR:
      case OP_CRMINSTAR:
      case OP_CRQUERY:
      case OP_CRMINQUERY:
      return -1;

      case OP_CRRANGE:
      case OP_CRMINRANGE:
      if ((((cc)[1] << 8) | (cc)[(1)+1]) != (((cc)[3] << 8) | (cc)[(3)+1])) return -1;
      branchlength += (((cc)[1] << 8) | (cc)[(1)+1]);
      cc += 5;
      break;

      default:
      branchlength++;
      }
    break;



    default:
    return -1;
    }
  }

}
# 1558 "pcre.c"
static const uschar *
find_bracket(const uschar *code, BOOL utf8, int number)
{

utf8 = utf8;


for (;;)
  {
  register int c = *code;
  if (c == OP_END) return ((void *)0);
  else if (c > OP_BRA)
    {
    int n = c - OP_BRA;
    if (n > 100) n = (((code)[2+2] << 8) | (code)[(2+2)+1]);
    if (n == number) return (uschar *)code;
    code += OP_lengths[OP_BRA];
    }
  else
    {
    code += OP_lengths[c];
# 1612 "pcre.c"
    }
  }
}
# 1632 "pcre.c"
static const uschar *
find_recurse(const uschar *code, BOOL utf8)
{

utf8 = utf8;


for (;;)
  {
  register int c = *code;
  if (c == OP_END) return ((void *)0);
  else if (c == OP_RECURSE) return code;
  else if (c > OP_BRA)
    {
    code += OP_lengths[OP_BRA];
    }
  else
    {
    code += OP_lengths[c];
# 1684 "pcre.c"
    }
  }
}
# 1708 "pcre.c"
static BOOL
could_be_empty_branch(const uschar *code, const uschar *endcode, BOOL utf8)
{
register int c;
for (code = first_significant_code(code + 1 + 2, ((void *)0), 0, 1);
     code < endcode;
     code = first_significant_code(code + OP_lengths[c], ((void *)0), 0, 1))
  {
  const uschar *ccode;

  c = *code;

  if (c >= OP_BRA)
    {
    BOOL empty_branch;
    if ((((code)[1] << 8) | (code)[(1)+1]) == 0) return 1;



    empty_branch = 0;
    do
      {
      if (!empty_branch && could_be_empty_branch(code, endcode, utf8))
        empty_branch = 1;
      code += (((code)[1] << 8) | (code)[(1)+1]);
      }
    while (*code == OP_ALT);
    if (!empty_branch) return 0;
    code += 1 + 2;
    c = *code;
    }

  else switch (c)
    {
# 1750 "pcre.c"
    case OP_CLASS:
    case OP_NCLASS:
    ccode = code + 33;





    switch (*ccode)
      {
      case OP_CRSTAR:
      case OP_CRMINSTAR:
      case OP_CRQUERY:
      case OP_CRMINQUERY:
      break;

      default:
      case OP_CRPLUS:
      case OP_CRMINPLUS:
      return 0;

      case OP_CRRANGE:
      case OP_CRMINRANGE:
      if ((((ccode)[1] << 8) | (ccode)[(1)+1]) > 0) return 0;
      break;
      }
    break;



    case OP_PROP:
    case OP_NOTPROP:
    case OP_EXTUNI:
    case OP_NOT_DIGIT:
    case OP_DIGIT:
    case OP_NOT_WHITESPACE:
    case OP_WHITESPACE:
    case OP_NOT_WORDCHAR:
    case OP_WORDCHAR:
    case OP_ANY:
    case OP_ANYBYTE:
    case OP_CHAR:
    case OP_CHARNC:
    case OP_NOT:
    case OP_PLUS:
    case OP_MINPLUS:
    case OP_EXACT:
    case OP_NOTPLUS:
    case OP_NOTMINPLUS:
    case OP_NOTEXACT:
    case OP_TYPEPLUS:
    case OP_TYPEMINPLUS:
    case OP_TYPEEXACT:
    return 0;



    case OP_KET:
    case OP_KETRMAX:
    case OP_KETRMIN:
    case OP_ALT:
    return 1;
# 1826 "pcre.c"
    }
  }

return 1;
}
# 1852 "pcre.c"
static BOOL
could_be_empty(const uschar *code, const uschar *endcode, branch_chain *bcptr,
  BOOL utf8)
{
while (bcptr != ((void *)0) && bcptr->current >= code)
  {
  if (!could_be_empty_branch(bcptr->current, endcode, utf8)) return 0;
  bcptr = bcptr->outer;
  }
return 1;
}
# 1883 "pcre.c"
static BOOL
check_posix_syntax(const uschar *ptr, const uschar **endptr, compile_data *cd)
{
int terminator;
terminator = *(++ptr);
if (*(++ptr) == '^') ptr++;
while ((cd->ctypes[*ptr] & 0x02) != 0) ptr++;
if (*ptr == terminator && ptr[1] == ']')
  {
  *endptr = ptr;
  return 1;
  }
return 0;
}
# 1915 "pcre.c"
static int
check_posix_name(const uschar *ptr, int len)
{
register int yield = 0;
while (posix_name_lengths[yield] != 0)
  {
  if (len == posix_name_lengths[yield] &&
    strncmp((const char *)ptr, posix_names[yield], len) == 0) return yield;
  yield++;
  }
return -1;
}
# 1952 "pcre.c"
static void
adjust_recurse(uschar *group, int adjust, BOOL utf8, compile_data *cd)
{
uschar *ptr = group;
while ((ptr = (uschar *)find_recurse(ptr, utf8)) != ((void *)0))
  {
  int offset = (((ptr)[1] << 8) | (ptr)[(1)+1]);
  if (cd->start_code + offset >= group) (ptr[1] = (offset + adjust) >> 8), (ptr[(1)+1] = (offset + adjust) & 255);
  ptr += 1 + 2;
  }
}
# 1981 "pcre.c"
static uschar *
auto_callout(uschar *code, const uschar *ptr, compile_data *cd)
{
*code++ = OP_CALLOUT;
*code++ = 255;
(code[0] = (ptr - cd->start_pattern) >> 8), (code[(0)+1] = (ptr - cd->start_pattern) & 255);
(code[2] = (0) >> 8), (code[(2)+1] = (0) & 255);
return code + 2*2;
}
# 2009 "pcre.c"
static void
complete_callout(uschar *previous_callout, const uschar *ptr, compile_data *cd)
{
int length = ptr - cd->start_pattern - (((previous_callout)[2] << 8) | (previous_callout)[(2)+1]);
(previous_callout[2 + 2] = (length) >> 8), (previous_callout[(2 + 2)+1] = (length) & 255);
}
# 2090 "pcre.c"
static BOOL
compile_branch(int *optionsptr, int *brackets, uschar **codeptr,
  const uschar **ptrptr, const char **errorptr, int *firstbyteptr,
  int *reqbyteptr, branch_chain *bcptr, compile_data *cd)
{
int repeat_type, op_type;
int repeat_min = 0, repeat_max = 0;
int bravalue = 0;
int greedy_default, greedy_non_default;
int firstbyte, reqbyte;
int zeroreqbyte, zerofirstbyte;
int req_caseopt, reqvary, tempreqvary;
int condcount = 0;
int options = *optionsptr;
int after_manual_callout = 0;
register int c;
register uschar *code = *codeptr;
uschar *tempcode;
BOOL inescq = 0;
BOOL groupsetfirstbyte = 0;
const uschar *ptr = *ptrptr;
const uschar *tempptr;
uschar *previous = ((void *)0);
uschar *previous_callout = ((void *)0);
uschar classbits[32];







BOOL utf8 = 0;




greedy_default = ((options & 0x0200) != 0);
greedy_non_default = greedy_default ^ 1;
# 2140 "pcre.c"
firstbyte = reqbyte = zerofirstbyte = zeroreqbyte = (-2);






req_caseopt = ((options & 0x0001) != 0)? 0x0100 : 0;



for (;; ptr++)
  {
  BOOL negate_class;
  BOOL possessive_quantifier;
  BOOL is_quantifier;
  int class_charcount;
  int class_lastchar;
  int newoptions;
  int recno;
  int skipbytes;
  int subreqbyte;
  int subfirstbyte;
  int mclength;
  uschar mcbuffer[8];



  c = *ptr;



  if (inescq && c != 0)
    {
    if (c == '\\' && ptr[1] == 'E')
      {
      inescq = 0;
      ptr++;
      continue;
      }
    else
      {
      if (previous_callout != ((void *)0))
        {
        complete_callout(previous_callout, ptr, cd);
        previous_callout = ((void *)0);
        }
      if ((options & 0x4000) != 0)
        {
        previous_callout = code;
        code = auto_callout(code, ptr, cd);
        }
      goto NORMAL_CHAR;
      }
    }




  is_quantifier = c == '*' || c == '+' || c == '?' ||
    (c == '{' && is_counted_repeat(ptr+1));

  if (!is_quantifier && previous_callout != ((void *)0) &&
       after_manual_callout-- <= 0)
    {
    complete_callout(previous_callout, ptr, cd);
    previous_callout = ((void *)0);
    }



  if ((options & 0x0008) != 0)
    {
    if ((cd->ctypes[c] & 0x01) != 0) continue;
    if (c == '#')
      {


      while ((c = *(++ptr)) != 0 && c != '\n') ;
      if (c != 0) continue;
      }
    }



  if ((options & 0x4000) != 0 && !is_quantifier)
    {
    previous_callout = code;
    code = auto_callout(code, ptr, cd);
    }

  switch(c)
    {


    case 0:
    case '|':
    case ')':
    *firstbyteptr = firstbyte;
    *reqbyteptr = reqbyte;
    *codeptr = code;
    *ptrptr = ptr;
    return 1;




    case '^':
    if ((options & 0x0002) != 0)
      {
      if (firstbyte == (-2)) firstbyte = (-1);
      }
    previous = ((void *)0);
    *code++ = OP_CIRC;
    break;

    case '$':
    previous = ((void *)0);
    *code++ = OP_DOLL;
    break;




    case '.':
    if (firstbyte == (-2)) firstbyte = (-1);
    zerofirstbyte = firstbyte;
    zeroreqbyte = reqbyte;
    previous = code;
    *code++ = OP_ANY;
    break;
# 2284 "pcre.c"
    case '[':
    previous = code;




    if ((ptr[1] == ':' || ptr[1] == '.' || ptr[1] == '=') &&
        check_posix_syntax(ptr, &tempptr, cd))
      {
      *errorptr = (ptr[1] == ':')? "POSIX named classes are supported only within a class" : "POSIX collating elements are not supported";
      goto FAILED;
      }



    if ((c = *(++ptr)) == '^')
      {
      negate_class = 1;
      c = *(++ptr);
      }
    else
      {
      negate_class = 0;
      }





    class_charcount = 0;
    class_lastchar = -1;
# 2326 "pcre.c"
    memset(classbits, 0, 32 * sizeof(uschar));







    do
      {
# 2345 "pcre.c"
      if (inescq)
        {
        if (c == '\\' && ptr[1] == 'E')
          {
          inescq = 0;
          ptr++;
          continue;
          }
        else goto LONE_SINGLE_CHARACTER;
        }







      if (c == '[' &&
          (ptr[1] == ':' || ptr[1] == '.' || ptr[1] == '=') &&
          check_posix_syntax(ptr, &tempptr, cd))
        {
        BOOL local_negate = 0;
        int posix_class, i;
        register const uschar *cbits = cd->cbits;

        if (ptr[1] != ':')
          {
          *errorptr = "POSIX collating elements are not supported";
          goto FAILED;
          }

        ptr += 2;
        if (*ptr == '^')
          {
          local_negate = 1;
          ptr++;
          }

        posix_class = check_posix_name(ptr, tempptr - ptr);
        if (posix_class < 0)
          {
          *errorptr = "unknown POSIX class name";
          goto FAILED;
          }





        if ((options & 0x0001) != 0 && posix_class <= 2)
          posix_class = 0;






        posix_class *= 3;
        for (i = 0; i < 3; i++)
          {
          BOOL blankclass = strncmp((char *)ptr, "blank", 5) == 0;
          int taboffset = posix_class_maps[posix_class + i];
          if (taboffset < 0) break;
          if (local_negate)
            {
            if (i == 0)
              for (c = 0; c < 32; c++) classbits[c] |= ~cbits[c+taboffset];
            else
              for (c = 0; c < 32; c++) classbits[c] &= ~cbits[c+taboffset];
            if (blankclass) classbits[1] |= 0x3c;
            }
          else
            {
            for (c = 0; c < 32; c++) classbits[c] |= cbits[c+taboffset];
            if (blankclass) classbits[1] &= ~0x3c;
            }
          }

        ptr = tempptr + 1;
        class_charcount = 10;
        continue;
        }
# 2436 "pcre.c"
      if (c == '\\')
        {
        c = check_escape(&ptr, errorptr, *brackets, options, 1);

        if (-c == ESC_b) c = '\b';
        else if (-c == ESC_X) c = 'X';
        else if (-c == ESC_Q)
          {
          if (ptr[1] == '\\' && ptr[2] == 'E')
            {
            ptr += 2;
            }
          else inescq = 1;
          continue;
          }

        if (c < 0)
          {
          register const uschar *cbits = cd->cbits;
          class_charcount += 2;
          switch (-c)
            {
            case ESC_d:
            for (c = 0; c < 32; c++) classbits[c] |= cbits[c+64];
            continue;

            case ESC_D:
            for (c = 0; c < 32; c++) classbits[c] |= ~cbits[c+64];
            continue;

            case ESC_w:
            for (c = 0; c < 32; c++) classbits[c] |= cbits[c+160];
            continue;

            case ESC_W:
            for (c = 0; c < 32; c++) classbits[c] |= ~cbits[c+160];
            continue;

            case ESC_s:
            for (c = 0; c < 32; c++) classbits[c] |= cbits[c+0];
            classbits[1] &= ~0x08;
            continue;

            case ESC_S:
            for (c = 0; c < 32; c++) classbits[c] |= ~cbits[c+0];
            classbits[1] |= 0x08;
            continue;
# 2504 "pcre.c"
            default:
            if ((options & 0x0040) != 0)
              {
              *errorptr = "invalid escape sequence in character class";
              goto FAILED;
              }
            c = *ptr;
            class_charcount -= 2;
            }
          }




        }





      if (ptr[1] == '-' && ptr[2] != ']')
        {
        int d;
        ptr += 2;
# 2536 "pcre.c"
        d = *ptr;





        if (d == '\\')
          {
          const uschar *oldptr = ptr;
          d = check_escape(&ptr, errorptr, *brackets, options, 1);




          if (d < 0)
            {
            if (d == -ESC_b) d = '\b';
            else if (d == -ESC_X) d = 'X'; else
              {
              ptr = oldptr - 2;
              goto LONE_SINGLE_CHARACTER;
              }
            }
          }




        if (d == c) goto LONE_SINGLE_CHARACTER;
# 2643 "pcre.c"
        for (; c <= d; c++)
          {
          classbits[c/8] |= (1 << (c&7));
          if ((options & 0x0001) != 0)
            {
            int uc = cd->fcc[c];
            classbits[uc/8] |= (1 << (uc&7));
            }
          class_charcount++;
          class_lastchar = c;
          }

        continue;
        }





      LONE_SINGLE_CHARACTER:
# 2691 "pcre.c"
        {
        classbits[c/8] |= (1 << (c&7));
        if ((options & 0x0001) != 0)
          {
          c = cd->fcc[c];
          classbits[c/8] |= (1 << (c&7));
          }
        class_charcount++;
        class_lastchar = c;
        }
      }




    while ((c = *(++ptr)) != ']' || inescq);
# 2728 "pcre.c"
    if (class_charcount == 1)

      {
      zeroreqbyte = reqbyte;



      if (negate_class)
        {
        if (firstbyte == (-2)) firstbyte = (-1);
        zerofirstbyte = firstbyte;
        *code++ = OP_NOT;
        *code++ = class_lastchar;
        break;
        }
# 2752 "pcre.c"
        {
        mcbuffer[0] = class_lastchar;
        mclength = 1;
        }
      goto ONE_CHAR;
      }






    if (firstbyte == (-2)) firstbyte = (-1);
    zerofirstbyte = firstbyte;
    zeroreqbyte = reqbyte;
# 2811 "pcre.c"
    if (negate_class)
      {
      *code++ = OP_NCLASS;
      for (c = 0; c < 32; c++) code[c] = ~classbits[c];
      }
    else
      {
      *code++ = OP_CLASS;
      memcpy(code, classbits, 32);
      }
    code += 32;
    break;




    case '{':
    if (!is_quantifier) goto NORMAL_CHAR;
    ptr = read_repeat_counts(ptr+1, &repeat_min, &repeat_max, errorptr);
    if (*errorptr != ((void *)0)) goto FAILED;
    goto REPEAT;

    case '*':
    repeat_min = 0;
    repeat_max = -1;
    goto REPEAT;

    case '+':
    repeat_min = 1;
    repeat_max = -1;
    goto REPEAT;

    case '?':
    repeat_min = 0;
    repeat_max = 1;

    REPEAT:
    if (previous == ((void *)0))
      {
      *errorptr = "nothing to repeat";
      goto FAILED;
      }

    if (repeat_min == 0)
      {
      firstbyte = zerofirstbyte;
      reqbyte = zeroreqbyte;
      }



    reqvary = (repeat_min == repeat_max)? 0 : 0x0200;

    op_type = 0;
    possessive_quantifier = 0;




    tempcode = previous;







    if (ptr[1] == '+')
      {
      repeat_type = 0;
      possessive_quantifier = 1;
      ptr++;
      }
    else if (ptr[1] == '?')
      {
      repeat_type = greedy_non_default;
      ptr++;
      }
    else repeat_type = greedy_default;




    if (*previous == OP_RECURSE)
      {
      memmove(previous + 1 + 2, previous, 1 + 2);
      code += 1 + 2;
      *previous = OP_BRA;
      (previous[1] = (code - previous) >> 8), (previous[(1)+1] = (code - previous) & 255);
      *code = OP_KET;
      (code[1] = (code - previous) >> 8), (code[(1)+1] = (code - previous) & 255);
      code += 1 + 2;
      }







    if (*previous == OP_CHAR || *previous == OP_CHARNC)
      {
# 2933 "pcre.c"
        {
        c = code[-1];
        if (repeat_min > 1) reqbyte = c | req_caseopt | cd->req_varyopt;
        }

      goto OUTPUT_SINGLE_REPEAT;
      }






    else if (*previous == OP_NOT)
      {
      op_type = OP_NOTSTAR - OP_STAR;
      c = previous[1];
      goto OUTPUT_SINGLE_REPEAT;
      }
# 2960 "pcre.c"
    else if (*previous < OP_EODN)
      {
      uschar *oldcode;
      int prop_type;
      op_type = OP_TYPESTAR - OP_STAR;
      c = *previous;

      OUTPUT_SINGLE_REPEAT:
      prop_type = (*previous == OP_PROP || *previous == OP_NOTPROP)?
        previous[1] : -1;

      oldcode = code;
      code = previous;




      if (repeat_max == 0) goto END_REPEAT;




      if (repeat_max != 1) cd->nopartial = 1;



      repeat_type += op_type;




      if (repeat_min == 0)
        {
        if (repeat_max == -1) *code++ = OP_STAR + repeat_type;
          else if (repeat_max == 1) *code++ = OP_QUERY + repeat_type;
        else
          {
          *code++ = OP_UPTO + repeat_type;
          code[0] = (repeat_max) >> 8; code[(0)+1] = (repeat_max) & 255, code += 2;
          }
        }






      else if (repeat_min == 1)
        {
        if (repeat_max == -1)
          *code++ = OP_PLUS + repeat_type;
        else
          {
          code = oldcode;
          if (repeat_max == 1) goto END_REPEAT;
          *code++ = OP_UPTO + repeat_type;
          code[0] = (repeat_max - 1) >> 8; code[(0)+1] = (repeat_max - 1) & 255, code += 2;
          }
        }




      else
        {
        *code++ = OP_EXACT + op_type;
        code[0] = (repeat_min) >> 8; code[(0)+1] = (repeat_min) & 255, code += 2;







        if (repeat_max < 0)
          {
# 3044 "pcre.c"
            {
            *code++ = c;
            if (prop_type >= 0) *code++ = prop_type;
            }
          *code++ = OP_STAR + repeat_type;
          }




        else if (repeat_max != repeat_min)
          {
# 3064 "pcre.c"
          *code++ = c;
          if (prop_type >= 0) *code++ = prop_type;
          repeat_max -= repeat_min;
          *code++ = OP_UPTO + repeat_type;
          code[0] = (repeat_max) >> 8; code[(0)+1] = (repeat_max) & 255, code += 2;
          }
        }
# 3082 "pcre.c"
      *code++ = c;







      }




    else if (*previous == OP_CLASS ||
             *previous == OP_NCLASS ||



             *previous == OP_REF)
      {
      if (repeat_max == 0)
        {
        code = previous;
        goto END_REPEAT;
        }




      if (repeat_max != 1) cd->nopartial = 1;

      if (repeat_min == 0 && repeat_max == -1)
        *code++ = OP_CRSTAR + repeat_type;
      else if (repeat_min == 1 && repeat_max == -1)
        *code++ = OP_CRPLUS + repeat_type;
      else if (repeat_min == 0 && repeat_max == 1)
        *code++ = OP_CRQUERY + repeat_type;
      else
        {
        *code++ = OP_CRRANGE + repeat_type;
        code[0] = (repeat_min) >> 8; code[(0)+1] = (repeat_min) & 255, code += 2;
        if (repeat_max == -1) repeat_max = 0;
        code[0] = (repeat_max) >> 8; code[(0)+1] = (repeat_max) & 255, code += 2;
        }
      }




    else if (*previous >= OP_BRA || *previous == OP_ONCE ||
             *previous == OP_COND)
      {
      register int i;
      int ketoffset = 0;
      int len = code - previous;
      uschar *bralink = ((void *)0);







      if (repeat_max == -1)
        {
        register uschar *ket = previous;
        do ket += (((ket)[1] << 8) | (ket)[(1)+1]); while (*ket != OP_KET);
        ketoffset = code - ket;
        }
# 3159 "pcre.c"
      if (repeat_min == 0)
        {



        if (repeat_max == 0)
          {
          code = previous;
          goto END_REPEAT;
          }







        if (repeat_max <= 1)
          {
          *code = OP_END;
          adjust_recurse(previous, 1, utf8, cd);
          memmove(previous+1, previous, len);
          code++;
          *previous++ = OP_BRAZERO + repeat_type;
          }
# 3193 "pcre.c"
        else
          {
          int offset;
          *code = OP_END;
          adjust_recurse(previous, 2 + 2, utf8, cd);
          memmove(previous + 2 + 2, previous, len);
          code += 2 + 2;
          *previous++ = OP_BRAZERO + repeat_type;
          *previous++ = OP_BRA;




          offset = (bralink == ((void *)0))? 0 : previous - bralink;
          bralink = previous;
          (previous[0] = (offset) >> 8), (previous[(0)+1] = (offset) & 255), previous += 2;
          }

        repeat_max--;
        }






      else
        {
        if (repeat_min > 1)
          {
          if (groupsetfirstbyte && reqbyte < 0) reqbyte = firstbyte;
          for (i = 1; i < repeat_min; i++)
            {
            memcpy(code, previous, len);
            code += len;
            }
          }
        if (repeat_max > 0) repeat_max -= repeat_min;
        }







      if (repeat_max >= 0)
        {
        for (i = repeat_max - 1; i >= 0; i--)
          {
          *code++ = OP_BRAZERO + repeat_type;




          if (i != 0)
            {
            int offset;
            *code++ = OP_BRA;
            offset = (bralink == ((void *)0))? 0 : code - bralink;
            bralink = code;
            (code[0] = (offset) >> 8), (code[(0)+1] = (offset) & 255), code += 2;
            }

          memcpy(code, previous, len);
          code += len;
          }




        while (bralink != ((void *)0))
          {
          int oldlinkoffset;
          int offset = code - bralink + 1;
          uschar *bra = code - offset;
          oldlinkoffset = (((bra)[1] << 8) | (bra)[(1)+1]);
          bralink = (oldlinkoffset == 0)? ((void *)0) : bralink - oldlinkoffset;
          *code++ = OP_KET;
          (code[0] = (offset) >> 8), (code[(0)+1] = (offset) & 255), code += 2;
          (bra[1] = (offset) >> 8), (bra[(1)+1] = (offset) & 255);
          }
        }






      else code[-ketoffset] = OP_KETRMAX + repeat_type;
      }



    else
      {
      *errorptr = "internal error: unexpected repeat";
      goto FAILED;
      }







    if (possessive_quantifier)
      {
      int len = code - tempcode;
      memmove(tempcode + 1+2, tempcode, len);
      code += 1 + 2;
      len += 1 + 2;
      tempcode[0] = OP_ONCE;
      *code++ = OP_KET;
      (code[0] = (len) >> 8), (code[(0)+1] = (len) & 255), code += 2;
      (tempcode[1] = (len) >> 8), (tempcode[(1)+1] = (len) & 255);
      }





    END_REPEAT:
    previous = ((void *)0);
    cd->req_varyopt |= reqvary;
    break;
# 3328 "pcre.c"
    case '(':
    newoptions = options;
    skipbytes = 0;

    if (*(++ptr) == '?')
      {
      int set, unset;
      int *optset;

      switch (*(++ptr))
        {
        case '#':
        ptr++;
        while (*ptr != ')') ptr++;
        continue;

        case ':':
        bravalue = OP_BRA;
        ptr++;
        break;

        case '(':
        bravalue = OP_COND;



        if (ptr[1] == 'R')
          {
          code[1+2] = OP_CREF;
          code[2+2] = (0xffff) >> 8; code[(2+2)+1] = (0xffff) & 255;
          skipbytes = 3;
          ptr += 3;
          }





        else if ((digitab[ptr[1]] && 0x04) != 0)
          {
          int condref;
          condref = *(++ptr) - '0';
          while (*(++ptr) != ')') condref = condref*10 + *ptr - '0';
          if (condref == 0)
            {
            *errorptr = "invalid condition (?(0)";
            goto FAILED;
            }
          ptr++;
          code[1+2] = OP_CREF;
          code[2+2] = (condref) >> 8; code[(2+2)+1] = (condref) & 255;
          skipbytes = 3;
          }


        break;

        case '=':
        bravalue = OP_ASSERT;
        ptr++;
        break;

        case '!':
        bravalue = OP_ASSERT_NOT;
        ptr++;
        break;

        case '<':
        switch (*(++ptr))
          {
          case '=':
          bravalue = OP_ASSERTBACK;
          ptr++;
          break;

          case '!':
          bravalue = OP_ASSERTBACK_NOT;
          ptr++;
          break;
          }
        break;

        case '>':
        bravalue = OP_ONCE;
        ptr++;
        break;

        case 'C':
        previous_callout = code;
        after_manual_callout = 1;
        *code++ = OP_CALLOUT;
          {
          int n = 0;
          while ((digitab[*(++ptr)] & 0x04) != 0)
            n = n * 10 + *ptr - '0';
          if (n > 255)
            {
            *errorptr = "number after (?C is > 255";
            goto FAILED;
            }
          *code++ = n;
          (code[0] = (ptr - cd->start_pattern + 1) >> 8), (code[(0)+1] = (ptr - cd->start_pattern + 1) & 255);
          (code[2] = (0) >> 8), (code[(2)+1] = (0) & 255);
          code += 2 * 2;
          }
        previous = ((void *)0);
        continue;

        case 'P':
        if (*(++ptr) == '<')
          {
          int i, namelen;
          uschar *slot = cd->name_table;
          const uschar *name;
          name = ++ptr;

          while (*ptr++ != '>');
          namelen = ptr - name - 1;

          for (i = 0; i < cd->names_found; i++)
            {
            int crc = memcmp(name, slot+2, namelen);
            if (crc == 0)
              {
              if (slot[2+namelen] == 0)
                {
                *errorptr = "two named groups have the same name";
                goto FAILED;
                }
              crc = -1;
              }
            if (crc < 0)
              {
              memmove(slot + cd->name_entry_size, slot,
                (cd->names_found - i) * cd->name_entry_size);
              break;
              }
            slot += cd->name_entry_size;
            }

          slot[0] = (*brackets + 1) >> 8; slot[(0)+1] = (*brackets + 1) & 255;
          memcpy(slot + 2, name, namelen);
          slot[2+namelen] = 0;
          cd->names_found++;
          goto NUMBERED_GROUP;
          }

        if (*ptr == '=' || *ptr == '>')
          {
          int i, namelen;
          int type = *ptr++;
          const uschar *name = ptr;
          uschar *slot = cd->name_table;

          while (*ptr != ')') ptr++;
          namelen = ptr - name;

          for (i = 0; i < cd->names_found; i++)
            {
            if (strncmp((char *)name, (char *)slot+2, namelen) == 0) break;
            slot += cd->name_entry_size;
            }
          if (i >= cd->names_found)
            {
            *errorptr = "reference to non-existent subpattern";
            goto FAILED;
            }

          recno = (((slot)[0] << 8) | (slot)[(0)+1]);

          if (type == '>') goto HANDLE_RECURSION;



          previous = code;
          *code++ = OP_REF;
          code[0] = (recno) >> 8; code[(0)+1] = (recno) & 255, code += 2;
          cd->backref_map |= (recno < 32)? (1 << recno) : 1;
          if (recno > cd->top_backref) cd->top_backref = recno;
          continue;
          }


        break;

        case 'R':
        ptr++;




        case '0': case '1': case '2': case '3': case '4':
        case '5': case '6': case '7': case '8': case '9':
          {
          const uschar *called;
          recno = 0;
          while((digitab[*ptr] & 0x04) != 0)
            recno = recno * 10 + *ptr++ - '0';



          HANDLE_RECURSION:

          previous = code;




          *code = OP_END;
          called = (recno == 0)?
            cd->start_code : find_bracket(cd->start_code, utf8, recno);

          if (called == ((void *)0))
            {
            *errorptr = "reference to non-existent subpattern";
            goto FAILED;
            }





          if ((((called)[1] << 8) | (called)[(1)+1]) == 0 && could_be_empty(called, code, bcptr, utf8))
            {
            *errorptr = "recursive call could loop indefinitely";
            goto FAILED;
            }



          *code = OP_RECURSE;
          (code[1] = (called - cd->start_code) >> 8), (code[(1)+1] = (called - cd->start_code) & 255);
          code += 1 + 2;
          }
        continue;



        default:
        set = unset = 0;
        optset = &set;

        while (*ptr != ')' && *ptr != ':')
          {
          switch (*ptr++)
            {
            case '-': optset = &unset; break;

            case 'i': *optset |= 0x0001; break;
            case 'm': *optset |= 0x0002; break;
            case 's': *optset |= 0x0004; break;
            case 'x': *optset |= 0x0008; break;
            case 'U': *optset |= 0x0200; break;
            case 'X': *optset |= 0x0040; break;
            }
          }



        newoptions = (options | set) & (~unset);
# 3600 "pcre.c"
        if (*ptr == ')')
          {
          if ((options & (0x0001|0x0002|0x0004)) != (newoptions & (0x0001|0x0002|0x0004)))
            {
            *code++ = OP_OPT;
            *code++ = newoptions & (0x0001|0x0002|0x0004);
            }





          *optionsptr = options = newoptions;
          greedy_default = ((newoptions & 0x0200) != 0);
          greedy_non_default = greedy_default ^ 1;
          req_caseopt = ((options & 0x0001) != 0)? 0x0100 : 0;

          previous = ((void *)0);
          continue;
          }






        bravalue = OP_BRA;
        ptr++;
        }
      }




    else if ((options & 0x1000) != 0)
      {
      bravalue = OP_BRA;
      }





    else
      {
      NUMBERED_GROUP:
      if (++(*brackets) > 100)
        {
        bravalue = OP_BRA + 100 + 1;
        code[1+2] = OP_BRANUMBER;
        code[2+2] = (*brackets) >> 8; code[(2+2)+1] = (*brackets) & 255;
        skipbytes = 3;
        }
      else bravalue = OP_BRA + *brackets;
      }






    previous = (bravalue >= OP_ONCE)? code : ((void *)0);
    *code = bravalue;
    tempcode = code;
    tempreqvary = cd->req_varyopt;

    if (!compile_regex(
         newoptions,
         options & (0x0001|0x0002|0x0004),
         brackets,
         &tempcode,
         &ptr,
         errorptr,
         (bravalue == OP_ASSERTBACK ||
          bravalue == OP_ASSERTBACK_NOT),
         skipbytes,
         &subfirstbyte,
         &subreqbyte,
         bcptr,
         cd))
      goto FAILED;
# 3690 "pcre.c"
    else if (bravalue == OP_COND)
      {
      uschar *tc = code;
      condcount = 0;

      do {
         condcount++;
         tc += (((tc)[1] << 8) | (tc)[(1)+1]);
         }
      while (*tc != OP_KET);

      if (condcount > 2)
        {
        *errorptr = "conditional group contains more than two branches";
        goto FAILED;
        }




      if (condcount == 1) subfirstbyte = subreqbyte = (-1);
      }







    zeroreqbyte = reqbyte;
    zerofirstbyte = firstbyte;
    groupsetfirstbyte = 0;

    if (bravalue >= OP_BRA || bravalue == OP_ONCE || bravalue == OP_COND)
      {






      if (firstbyte == (-2))
        {
        if (subfirstbyte >= 0)
          {
          firstbyte = subfirstbyte;
          groupsetfirstbyte = 1;
          }
        else firstbyte = (-1);
        zerofirstbyte = (-1);
        }





      else if (subfirstbyte >= 0 && subreqbyte < 0)
        subreqbyte = subfirstbyte | tempreqvary;




      if (subreqbyte >= 0) reqbyte = subreqbyte;
      }
# 3763 "pcre.c"
    else if (bravalue == OP_ASSERT && subreqbyte >= 0) reqbyte = subreqbyte;



    code = tempcode;



    if (*ptr != ')')
      {
      *errorptr = "missing )";
      goto FAILED;
      }
    break;





    case '\\':
    tempptr = ptr;
    c = check_escape(&ptr, errorptr, *brackets, options, 0);
# 3793 "pcre.c"
    if (c < 0)
      {
      if (-c == ESC_Q)
        {
        if (ptr[1] == '\\' && ptr[2] == 'E') ptr += 2;
          else inescq = 1;
        continue;
        }




      if (firstbyte == (-2) && -c > ESC_b && -c < ESC_Z)
        firstbyte = (-1);



      zerofirstbyte = firstbyte;
      zeroreqbyte = reqbyte;



      if (-c >= ESC_REF)
        {
        int number = -c - ESC_REF;
        previous = code;
        *code++ = OP_REF;
        code[0] = (number) >> 8; code[(0)+1] = (number) & 255, code += 2;
        }
# 3840 "pcre.c"
      else
        {
        previous = (-c > ESC_b && -c < ESC_Z)? code : ((void *)0);
        *code++ = -c;
        }
      continue;
      }
# 3858 "pcre.c"
     {
     mcbuffer[0] = c;
     mclength = 1;
     }

    goto ONE_CHAR;





    default:
    NORMAL_CHAR:
    mclength = 1;
    mcbuffer[0] = c;
# 3885 "pcre.c"
    ONE_CHAR:
    previous = code;
    *code++ = ((options & 0x0001) != 0)? OP_CHARNC : OP_CHAR;
    for (c = 0; c < mclength; c++) *code++ = mcbuffer[c];






    if (firstbyte == (-2))
      {
      zerofirstbyte = (-1);
      zeroreqbyte = reqbyte;




      if (mclength == 1 || req_caseopt == 0)
        {
        firstbyte = mcbuffer[0] | req_caseopt;
        if (mclength != 1) reqbyte = code[-1] | cd->req_varyopt;
        }
      else firstbyte = reqbyte = (-1);
      }




    else
      {
      zerofirstbyte = firstbyte;
      zeroreqbyte = reqbyte;
      if (mclength == 1 || req_caseopt == 0)
        reqbyte = code[-1] | req_caseopt | cd->req_varyopt;
      }

    break;
    }
  }





FAILED:
*ptrptr = ptr;
return 0;
}
# 3967 "pcre.c"
static BOOL
compile_regex(int options, int oldims, int *brackets, uschar **codeptr,
  const uschar **ptrptr, const char **errorptr, BOOL lookbehind, int skipbytes,
  int *firstbyteptr, int *reqbyteptr, branch_chain *bcptr, compile_data *cd)
{
const uschar *ptr = *ptrptr;
uschar *code = *codeptr;
uschar *last_branch = code;
uschar *start_bracket = code;
uschar *reverse_count = ((void *)0);
int firstbyte, reqbyte;
int branchfirstbyte, branchreqbyte;
branch_chain bc;

bc.outer = bcptr;
bc.current = code;

firstbyte = reqbyte = (-2);



(code[1] = (0) >> 8), (code[(1)+1] = (0) & 255);
code += 1 + 2 + skipbytes;



for (;;)
  {


  if ((options & (0x0001|0x0002|0x0004)) != oldims)
    {
    *code++ = OP_OPT;
    *code++ = options & (0x0001|0x0002|0x0004);
    }



  if (lookbehind)
    {
    *code++ = OP_REVERSE;
    reverse_count = code;
    (code[0] = (0) >> 8), (code[(0)+1] = (0) & 255), code += 2;
    }



  if (!compile_branch(&options, brackets, &code, &ptr, errorptr,
        &branchfirstbyte, &branchreqbyte, &bc, cd))
    {
    *ptrptr = ptr;
    return 0;
    }




  if (*last_branch != OP_ALT)
    {
    firstbyte = branchfirstbyte;
    reqbyte = branchreqbyte;
    }






  else
    {




    if (firstbyte >= 0 && firstbyte != branchfirstbyte)
      {
      if (reqbyte < 0) reqbyte = firstbyte;
      firstbyte = (-1);
      }




    if (firstbyte < 0 && branchfirstbyte >= 0 && branchreqbyte < 0)
        branchreqbyte = branchfirstbyte;



    if ((reqbyte & ~0x0200) != (branchreqbyte & ~0x0200))
      reqbyte = (-1);
    else reqbyte |= branchreqbyte;
    }





  if (lookbehind)
    {
    int length;
    *code = OP_END;
    length = find_fixedlength(last_branch, options);
    ;
    if (length < 0)
      {
      *errorptr = (length == -2)? "\\C not allowed in lookbehind assertion" : "lookbehind assertion is not fixed length";
      *ptrptr = ptr;
      return 0;
      }
    (reverse_count[0] = (length) >> 8), (reverse_count[(0)+1] = (length) & 255);
    }
# 4088 "pcre.c"
  if (*ptr != '|')
    {
    int length = code - last_branch;
    do
      {
      int prev_length = (((last_branch)[1] << 8) | (last_branch)[(1)+1]);
      (last_branch[1] = (length) >> 8), (last_branch[(1)+1] = (length) & 255);
      length = prev_length;
      last_branch -= length;
      }
    while (length > 0);



    *code = OP_KET;
    (code[1] = (code - start_bracket) >> 8), (code[(1)+1] = (code - start_bracket) & 255);
    code += 1 + 2;



    if ((options & (0x0001|0x0002|0x0004)) != oldims && *ptr == ')')
      {
      *code++ = OP_OPT;
      *code++ = oldims;
      }



    *codeptr = code;
    *ptrptr = ptr;
    *firstbyteptr = firstbyte;
    *reqbyteptr = reqbyte;
    return 1;
    }






  *code = OP_ALT;
  (code[1] = (code - last_branch) >> 8), (code[(1)+1] = (code - last_branch) & 255);
  bc.current = last_branch = code;
  code += 1 + 2;
  ptr++;
  }

}
# 4178 "pcre.c"
static BOOL
is_anchored(register const uschar *code, int *options, unsigned int bracket_map,
  unsigned int backref_map)
{
do {
   const uschar *scode =
     first_significant_code(code + 1+2, options, 0x0002, 0);
   register int op = *scode;



   if (op > OP_BRA)
     {
     int new_map;
     op -= OP_BRA;
     if (op > 100) op = (((scode)[2+2] << 8) | (scode)[(2+2)+1]);
     new_map = bracket_map | ((op < 32)? (1 << op) : 1);
     if (!is_anchored(scode, options, new_map, backref_map)) return 0;
     }



   else if (op == OP_BRA || op == OP_ASSERT || op == OP_ONCE || op == OP_COND)
     {
     if (!is_anchored(scode, options, bracket_map, backref_map)) return 0;
     }




   else if ((op == OP_TYPESTAR || op == OP_TYPEMINSTAR) &&
            (*options & 0x0004) != 0)
     {
     if (scode[1] != OP_ANY || (bracket_map & backref_map) != 0) return 0;
     }



   else if (op != OP_SOD && op != OP_SOM &&
           ((*options & 0x0002) != 0 || op != OP_CIRC))
     return 0;
   code += (((code)[1] << 8) | (code)[(1)+1]);
   }
while (*code == OP_ALT);
return 1;
}
# 4248 "pcre.c"
static BOOL
is_startline(const uschar *code, unsigned int bracket_map,
  unsigned int backref_map)
{
do {
   const uschar *scode = first_significant_code(code + 1+2, ((void *)0), 0,
     0);
   register int op = *scode;



   if (op > OP_BRA)
     {
     int new_map;
     op -= OP_BRA;
     if (op > 100) op = (((scode)[2+2] << 8) | (scode)[(2+2)+1]);
     new_map = bracket_map | ((op < 32)? (1 << op) : 1);
     if (!is_startline(scode, new_map, backref_map)) return 0;
     }



   else if (op == OP_BRA || op == OP_ASSERT || op == OP_ONCE || op == OP_COND)
     { if (!is_startline(scode, bracket_map, backref_map)) return 0; }




   else if (op == OP_TYPESTAR || op == OP_TYPEMINSTAR)
     {
     if (scode[1] != OP_ANY || (bracket_map & backref_map) != 0) return 0;
     }



   else if (op != OP_CIRC) return 0;



   code += (((code)[1] << 8) | (code)[(1)+1]);
   }
while (*code == OP_ALT);
return 1;
}
# 4315 "pcre.c"
static int
find_firstassertedchar(const uschar *code, int *options, BOOL inassert)
{
register int c = -1;
do {
   int d;
   const uschar *scode =
     first_significant_code(code + 1+2, options, 0x0001, 1);
   register int op = *scode;

   if (op >= OP_BRA) op = OP_BRA;

   switch(op)
     {
     default:
     return -1;

     case OP_BRA:
     case OP_ASSERT:
     case OP_ONCE:
     case OP_COND:
     if ((d = find_firstassertedchar(scode, options, op == OP_ASSERT)) < 0)
       return -1;
     if (c < 0) c = d; else if (c != d) return -1;
     break;

     case OP_EXACT:
     scode += 2;

     case OP_CHAR:
     case OP_CHARNC:
     case OP_PLUS:
     case OP_MINPLUS:
     if (!inassert) return -1;
     if (c < 0)
       {
       c = scode[1];
       if ((*options & 0x0001) != 0) c |= 0x0100;
       }
     else if (c != scode[1]) return -1;
     break;
     }

   code += (((code)[1] << 8) | (code)[(1)+1]);
   }
while (*code == OP_ALT);
return c;
}
# 4471 "pcre.c"
 pcre *
pcre_compile(const char *pattern, int options, const char **errorptr,
  int *erroroffset, const unsigned char *tables)
{
real_pcre *re;
int length = 1 + 2;
int c, firstbyte, reqbyte;
int bracount = 0;
int branch_extra = 0;
int branch_newextra;
int item_count = -1;
int name_count = 0;
int max_name_size = 0;
int lastitemlength = 0;




BOOL inescq = 0;
unsigned int brastackptr = 0;
size_t size;
uschar *code;
const uschar *codestart;
const uschar *ptr;
compile_data compile_block;
int brastack[200];
uschar bralenstack[200];




if (errorptr == ((void *)0)) return ((void *)0);
*errorptr = ((void *)0);



if (erroroffset == ((void *)0))
  {
  *errorptr = "erroffset passed as NULL";
  return ((void *)0);
  }
*erroroffset = 0;
# 4525 "pcre.c"
if ((options & 0x0800) != 0)
  {
  *errorptr = "this version of PCRE is not compiled with PCRE_UTF8 support";
  return ((void *)0);
  }


if ((options & ~(0x0001|0x0008|0x0010|0x0002| 0x0004|0x0020|0x0040|0x0200|0x0800| 0x1000|0x2000|0x4000)) != 0)
  {
  *errorptr = "unknown option bit(s) set";
  return ((void *)0);
  }



if (tables == ((void *)0)) tables = pcre_default_tables;
compile_block.lcc = tables + 0;
compile_block.fcc = tables + 256;
compile_block.cbits = tables + 512;
compile_block.ctypes = tables + (512 + 320);






compile_block.top_backref = 0;
compile_block.backref_map = 0;



;
;
# 4566 "pcre.c"
ptr = (const uschar *)(pattern - 1);
while ((c = *(++ptr)) != 0)
  {
  int min, max;
  int class_optcount;
  int bracket_length;
  int duplength;



  if (inescq)
    {
    if ((options & 0x4000) != 0) length += 2 + 2*2;
    goto NORMAL_CHAR;
    }



  if ((options & 0x0008) != 0)
    {
    if ((compile_block.ctypes[c] & 0x01) != 0) continue;
    if (c == '#')
      {


      while ((c = *(++ptr)) != 0 && c != '\n') ;
      if (c == 0) break;
      continue;
      }
    }

  item_count++;



  if ((options & 0x4000) != 0 &&
       c != '*' && c != '+' && c != '?' &&
       (c != '{' || !is_counted_repeat(ptr + 1)))
    length += 2 + 2*2;

  switch(c)
    {



    case '\\':
    c = check_escape(&ptr, errorptr, bracount, options, 0);
    if (*errorptr != ((void *)0)) goto PCRE_ERROR_RETURN;

    lastitemlength = 1;

    if (c >= 0)
      {
      length += 2;
# 4632 "pcre.c"
      continue;
      }



    if (-c == ESC_Q)
      {
      inescq = 1;
      continue;
      }




    if (-c == ESC_X)
      {
      *errorptr = "support for \\P, \\p, and \\X has not been compiled";
      goto PCRE_ERROR_RETURN;
      }





    else if (-c == ESC_P || -c == ESC_p)
      {







      *errorptr = "support for \\P, \\p, and \\X has not been compiled";
      goto PCRE_ERROR_RETURN;

      }



    length++;





    if (c <= -ESC_REF)
      {
      int refnum = -c - ESC_REF;
      compile_block.backref_map |= (refnum < 32)? (1 << refnum) : 1;
      if (refnum > compile_block.top_backref)
        compile_block.top_backref = refnum;
      length += 2;
      if (ptr[1] == '{' && is_counted_repeat(ptr+2))
        {
        ptr = read_repeat_counts(ptr+2, &min, &max, errorptr);
        if (*errorptr != ((void *)0)) goto PCRE_ERROR_RETURN;
        if ((min == 0 && (max == 1 || max == -1)) ||
          (min == 1 && max == -1))
            length++;
        else length += 5;
        if (ptr[1] == '?') ptr++;
        }
      }
    continue;

    case '^':
    case '.':
    case '$':
    length++;
    lastitemlength = 1;
    continue;

    case '*':
    case '+':
    case '?':
    length++;
    goto POSESSIVE;




    case '{':
    if (!is_counted_repeat(ptr+1)) goto NORMAL_CHAR;
    ptr = read_repeat_counts(ptr+1, &min, &max, errorptr);
    if (*errorptr != ((void *)0)) goto PCRE_ERROR_RETURN;



    if ((min == 0 && (max == 1 || max == -1)) ||
      (min == 1 && max == -1))
        length++;



    else
      {
      if (min != 1)
        {
        length -= lastitemlength;
        if (min > 0) length += 3 + lastitemlength;
        }
      length += lastitemlength + ((max > 0)? 3 : 1);
      }

    if (ptr[1] == '?') ptr++;

    POSESSIVE:
    if (ptr[1] == '+')
      {
      ptr++;
      length += 2 + 2*2;
      }
    continue;






    case '|':
    length += 1 + 2 + branch_extra;
    continue;
# 4764 "pcre.c"
    case '[':
    if (*(++ptr) == '^')
      {
      class_optcount = 10;
      ptr++;
      }
    else class_optcount = 0;







    if (*ptr != 0) do
      {


      if (inescq)
        {
        if (*ptr != '\\' || ptr[1] != 'E') goto GET_ONE_CHARACTER;
        inescq = 0;
        ptr += 1;
        continue;
        }



      if (*ptr == '\\')
        {
        c = check_escape(&ptr, errorptr, bracount, options, 1);
        if (*errorptr != ((void *)0)) goto PCRE_ERROR_RETURN;



        if (-c == ESC_b) c = '\b';
        else if (-c == ESC_X) c = 'X';



        else if (-c == ESC_Q)
          {
          inescq = 1;
          continue;
          }



        if (c >= 0) goto NON_SPECIAL_CHARACTER;




        else
          {
          class_optcount = 10;
# 4831 "pcre.c"
          }
        }




      else if (*ptr == '[' && check_posix_syntax(ptr, &ptr, &compile_block))
        {
        ptr++;
        class_optcount = 10;
        }







      else
        {
        int d;

        GET_ONE_CHARACTER:
# 4864 "pcre.c"
        c = *ptr;




        NON_SPECIAL_CHARACTER:
        class_optcount++;

        d = -1;
        if (ptr[1] == '-')
          {
          uschar const *hyptr = ptr++;
          if (ptr[1] == '\\')
            {
            ptr++;
            d = check_escape(&ptr, errorptr, bracount, options, 1);
            if (*errorptr != ((void *)0)) goto PCRE_ERROR_RETURN;
            if (-d == ESC_b) d = '\b';
            else if (-d == ESC_X) d = 'X';
            }
          else if (ptr[1] != 0 && ptr[1] != ']')
            {
            ptr++;
# 4896 "pcre.c"
            d = *ptr;
            }
          if (d < 0) ptr = hyptr;
          }




        if (d >= 0)
          {
          class_optcount = 10;
          if (d < c)
            {
            *errorptr = "range out of order in character class";
            goto PCRE_ERROR_RETURN;
            }
# 4964 "pcre.c"
          }






        else
          {
# 4991 "pcre.c"
          }
        }
      }
    while (*(++ptr) != 0 && (inescq || *ptr != ']'));

    if (*ptr == 0)
      {
      *errorptr = "missing terminating ] for character class";
      goto PCRE_ERROR_RETURN;
      }





    if (class_optcount == 1) length += 3; else
      {
      length += 33;




      if (*ptr != 0 && ptr[1] == '{' && is_counted_repeat(ptr+2))
        {
        ptr = read_repeat_counts(ptr+2, &min, &max, errorptr);
        if (*errorptr != ((void *)0)) goto PCRE_ERROR_RETURN;
        if ((min == 0 && (max == 1 || max == -1)) ||
          (min == 1 && max == -1))
            length++;
        else length += 5;
        if (ptr[1] == '+')
          {
          ptr++;
          length += 2 + 2*2;
          }
        else if (ptr[1] == '?') ptr++;
        }
      }
    continue;



    case '(':
    branch_newextra = 0;
    bracket_length = 1 + 2;



    if (ptr[1] == '?')
      {
      int set, unset;
      int *optset;

      switch (c = ptr[2])
        {

        case '#':
        ptr += 3;
        while (*ptr != 0 && *ptr != ')') ptr++;
        if (*ptr == 0)
          {
          *errorptr = "missing ) after comment";
          goto PCRE_ERROR_RETURN;
          }
        continue;






        case ':':
        case '=':
        case '!':
        case '>':
        ptr += 2;
        break;
# 5077 "pcre.c"
        case 'R':
        ptr++;

        case '0': case '1': case '2': case '3': case '4':
        case '5': case '6': case '7': case '8': case '9':
        ptr += 2;
        if (c != 'R')
          while ((digitab[*(++ptr)] & 0x04) != 0);
        if (*ptr != ')')
          {
          *errorptr = "(?R or (?digits must be followed by )";
          goto PCRE_ERROR_RETURN;
          }
        length += 1 + 2;





        if (ptr[1] == '+' || ptr[1] == '*' || ptr[1] == '?' || ptr[1] == '{')
          {
          length += 2 + 2 * 2;
          duplength = 5 + 3 * 2;
          goto HANDLE_QUANTIFIED_BRACKETS;
          }
        continue;





        case 'C':
        ptr += 2;
        while ((digitab[*(++ptr)] & 0x04) != 0);
        if (*ptr != ')')
          {
          *errorptr = "closing ) for (?C expected";
          goto PCRE_ERROR_RETURN;
          }
        length += 2 + 2*2;
        continue;



        case 'P':
        ptr += 3;
        if (*ptr == '<')
          {
          const uschar *p;
          p = ++ptr;
          while ((compile_block.ctypes[*ptr] & 0x10) != 0) ptr++;
          if (*ptr != '>')
            {
            *errorptr = "syntax error after (?P";
            goto PCRE_ERROR_RETURN;
            }
          name_count++;
          if (ptr - p > max_name_size) max_name_size = (ptr - p);
          break;
          }

        if (*ptr == '=' || *ptr == '>')
          {
          while ((compile_block.ctypes[*(++ptr)] & 0x10) != 0);
          if (*ptr != ')')
            {
            *errorptr = "syntax error after (?P";
            goto PCRE_ERROR_RETURN;
            }
          break;
          }



        *errorptr = "unrecognized character after (?P";
        goto PCRE_ERROR_RETURN;



        case '<':
        ptr += 3;
        if (*ptr == '=' || *ptr == '!')
          {
          branch_newextra = 1 + 2;
          length += 1 + 2;
          break;
          }
        *errorptr = "unrecognized character after (?<";
        goto PCRE_ERROR_RETURN;





        case '(':
        if (ptr[3] == 'R' && ptr[4] == ')')
          {
          ptr += 4;
          length += 3;
          }
        else if ((digitab[ptr[3]] & 0x04) != 0)
          {
          ptr += 4;
          length += 3;
          while ((digitab[*ptr] & 0x04) != 0) ptr++;
          if (*ptr != ')')
            {
            *errorptr = "malformed number after (?(";
            goto PCRE_ERROR_RETURN;
            }
          }
        else
          {
          ptr++;
          if (ptr[2] != '?' ||
             (ptr[3] != '=' && ptr[3] != '!' && ptr[3] != '<') )
            {
            ptr += 2;
            *errorptr = "assertion expected after (?(";
            goto PCRE_ERROR_RETURN;
            }
          }
        break;






        default:
        set = unset = 0;
        optset = &set;
        ptr += 2;

        for (;; ptr++)
          {
          c = *ptr;
          switch (c)
            {
            case 'i':
            *optset |= 0x0001;
            continue;

            case 'm':
            *optset |= 0x0002;
            continue;

            case 's':
            *optset |= 0x0004;
            continue;

            case 'x':
            *optset |= 0x0008;
            continue;

            case 'X':
            *optset |= 0x0040;
            continue;

            case 'U':
            *optset |= 0x0200;
            continue;

            case '-':
            optset = &unset;
            continue;
# 5257 "pcre.c"
            case ')':
            if (item_count == 0)
              {
              options = (options | set) & (~unset);
              set = unset = 0;
              item_count--;
              }
# 5280 "pcre.c"
            case ':':
            if (((set|unset) & (0x0001|0x0002|0x0004)) != 0)
              {
              length += 4;
              branch_newextra = 2;
              if (((set|unset) & 0x0001) != 0) options |= 0x08000000;
              }
            goto END_OPTIONS;



            default:
            *errorptr = "unrecognized character after (?";
            goto PCRE_ERROR_RETURN;
            }
          }







        END_OPTIONS:
        if (c == ')')
          {
          if (branch_newextra == 2 &&
              (branch_extra == 0 || branch_extra == 1+2))
            branch_extra += branch_newextra;
          continue;
          }



        }
      }







    else if ((options & 0x1000) == 0)
      {
      bracount++;
      if (bracount > 100) bracket_length += 3;
      }






    if (brastackptr >= sizeof(brastack)/sizeof(int))
      {
      *errorptr = "parentheses nested too deeply";
      goto PCRE_ERROR_RETURN;
      }

    bralenstack[brastackptr] = branch_extra;
    branch_extra = branch_newextra;

    brastack[brastackptr++] = length;
    length += bracket_length;
    continue;







    case ')':
    length += 1 + 2;
    if (brastackptr > 0)
      {
      duplength = length - brastack[--brastackptr];
      branch_extra = bralenstack[brastackptr];
      }
    else duplength = 0;






    HANDLE_QUANTIFIED_BRACKETS:




    if ((c = ptr[1]) == '{' && is_counted_repeat(ptr+2))
      {
      ptr = read_repeat_counts(ptr+2, &min, &max, errorptr);
      if (*errorptr != ((void *)0)) goto PCRE_ERROR_RETURN;
      }
    else if (c == '*') { min = 0; max = -1; ptr++; }
    else if (c == '+') { min = 1; max = -1; ptr++; }
    else if (c == '?') { min = 0; max = 1; ptr++; }
    else { min = 1; max = 1; }






    if (min == 0)
      {
      length++;
      if (max > 0) length += (max - 1) * (duplength + 3 + 2*2);
      }







    else
      {
      length += (min - 1) * duplength;
      if (max > min)
        length += (max - min) * (duplength + 3 + 2*2)
          - (2 + 2*2);
      }



    if (ptr[1] == '+')
      {
      ptr++;
      length += 2 + 2*2;
      }
    continue;





    default:
    NORMAL_CHAR:

    if (inescq && c == '\\' && ptr[1] == 'E')
      {
      inescq = 0;
      ptr++;
      continue;
      }

    length += 2;
    lastitemlength = 1;
# 5447 "pcre.c"
    continue;
    }
  }

length += 2 + 2;

if ((options & 0x4000) != 0)
  length += 2 + 2*2;

if (length > (1 << 16))
  {
  *errorptr = "regular expression too large";
  return ((void *)0);
  }




size = length + sizeof(real_pcre) + name_count * (max_name_size + 3);
re = (real_pcre *)(pcre_malloc)(size);

if (re == ((void *)0))
  {
  *errorptr = "failed to get memory";
  return ((void *)0);
  }






re->magic_number = 0x50435245UL;
re->size = size;
re->options = options;
re->dummy1 = re->dummy2 = 0;
re->name_table_offset = sizeof(real_pcre);
re->name_entry_size = max_name_size + 3;
re->name_count = name_count;
re->tables = (tables == pcre_default_tables)? ((void *)0) : tables;
re->nullpad = ((void *)0);




compile_block.names_found = 0;
compile_block.name_entry_size = max_name_size + 3;
compile_block.name_table = (uschar *)re + re->name_table_offset;
codestart = compile_block.name_table + re->name_entry_size * re->name_count;
compile_block.start_code = codestart;
compile_block.start_pattern = (const uschar *)pattern;
compile_block.req_varyopt = 0;
compile_block.nopartial = 0;





ptr = (const uschar *)pattern;
code = (uschar *)codestart;
*code = OP_BRA;
bracount = 0;
(void)compile_regex(options, options & (0x0001|0x0002|0x0004), &bracount, &code, &ptr,
  errorptr, 0, 0, &firstbyte, &reqbyte, ((void *)0), &compile_block);
re->top_bracket = bracount;
re->top_backref = compile_block.top_backref;

if (compile_block.nopartial) re->options |= 0x04000000;



if (*errorptr == ((void *)0) && *ptr != 0) *errorptr = "unmatched parentheses";




*code++ = OP_END;


if (code - codestart > length) *errorptr = "internal error: code overflow";





if (re->top_backref > re->top_bracket) *errorptr = "reference to non-existent subpattern";



if (*errorptr != ((void *)0))
  {
  (pcre_free)(re);
  PCRE_ERROR_RETURN:
  *erroroffset = ptr - (const uschar *)pattern;
  return ((void *)0);
  }
# 5554 "pcre.c"
if ((options & 0x0010) == 0)
  {
  int temp_options = options;
  if (is_anchored(codestart, &temp_options, 0, compile_block.backref_map))
    re->options |= 0x0010;
  else
    {
    if (firstbyte < 0)
      firstbyte = find_firstassertedchar(codestart, &temp_options, 0);
    if (firstbyte >= 0)
      {
      int ch = firstbyte & 255;
      re->first_byte = ((firstbyte & 0x0100) != 0 &&
         compile_block.fcc[ch] == ch)? ch : firstbyte;
      re->options |= 0x40000000;
      }
    else if (is_startline(codestart, 0, compile_block.backref_map))
      re->options |= 0x10000000;
    }
  }





if (reqbyte >= 0 &&
     ((re->options & 0x0010) == 0 || (reqbyte & 0x0200) != 0))
  {
  int ch = reqbyte & 255;
  re->req_byte = ((reqbyte & 0x0100) != 0 &&
    compile_block.fcc[ch] == ch)? (reqbyte & ~0x0100) : reqbyte;
  re->options |= 0x20000000;
  }
# 5640 "pcre.c"
return (pcre *)re;
}
# 5662 "pcre.c"
static BOOL
match_ref(int offset, register const uschar *eptr, int length, match_data *md,
  unsigned long int ims)
{
const uschar *p = md->start_subject + md->offset_vector[offset];
# 5683 "pcre.c"
if (length > md->end_subject - eptr) return 0;



if ((ims & 0x0001) != 0)
  {
  while (length-- > 0)
    if (md->lcc[*p++] != md->lcc[*eptr++]) return 0;
  }
else
  { while (length-- > 0) if (*p++ != *eptr++) return 0; }

return 1;
}
# 5959 "pcre.c"
static int
match(register const uschar *eptr, register const uschar *ecode,
  int offset_top, match_data *md, unsigned long int ims, eptrblock *eptrb,
  int flags)
{




register int rrc;
register int i;
register int c;
# 6063 "pcre.c"
const uschar *callpat;
const uschar *data;
const uschar *next;
const uschar *pp;
const uschar *prev;
const uschar *saved_eptr;

recursion_info new_recursive;

BOOL cur_is_word;
BOOL condition;
BOOL minimize;
BOOL prev_is_word;

unsigned long int original_ims;
# 6089 "pcre.c"
int ctype;
int length;
int max;
int min;
int number;
int offset;
int op;
int save_capture_last;
int save_offset1, save_offset2, save_offset3;
int stacksave[30];

eptrblock newptrb;
# 6119 "pcre.c"
if (md->match_call_count++ >= md->match_limit) return (-8);

original_ims = ims;






if ((flags & 0x02) != 0)
  {
  newptrb.epb_prev = eptrb;
  newptrb.epb_saved_eptr = eptr;
  eptrb = &newptrb;
  }



for (;;)
  {
  op = *ecode;
  minimize = 0;




  if (md->partial &&
      eptr >= md->end_subject &&
      eptr > md->start_match)
    md->hitend = 1;
# 6164 "pcre.c"
  if (op > OP_BRA)
    {
    number = op - OP_BRA;




    if (number > 100)
      number = (((ecode)[2+2] << 8) | (ecode)[(2+2)+1]);
    offset = number << 1;







    if (offset < md->offset_max)
      {
      save_offset1 = md->offset_vector[offset];
      save_offset2 = md->offset_vector[offset+1];
      save_offset3 = md->offset_vector[md->offset_end - number];
      save_capture_last = md->capture_last;

      ;
      md->offset_vector[md->offset_end - number] = eptr - md->start_subject;

      do
        {
        rrc = match(eptr,ecode + 1 + 2,offset_top,md,ims,eptrb,0x02)
                        ;
        if (rrc != 0) return rrc;
        md->capture_last = save_capture_last;
        ecode += (((ecode)[1] << 8) | (ecode)[(1)+1]);
        }
      while (*ecode == OP_ALT);

      ;

      md->offset_vector[offset] = save_offset1;
      md->offset_vector[offset+1] = save_offset2;
      md->offset_vector[md->offset_end - number] = save_offset3;

      return 0;
      }



    else op = OP_BRA;
    }



  switch(op)
    {
    case OP_BRA:
    ;
    do
      {
      rrc = match(eptr,ecode + 1 + 2,offset_top,md,ims,eptrb,0x02)
                      ;
      if (rrc != 0) return rrc;
      ecode += (((ecode)[1] << 8) | (ecode)[(1)+1]);
      }
    while (*ecode == OP_ALT);
    ;
    return 0;






    case OP_COND:
    if (ecode[2 +1] == OP_CREF)
      {
      offset = (((ecode)[2 +2] << 8) | (ecode)[(2 +2)+1]) << 1;
      condition = (offset == 0xffff * 2)?
        (md->recursive != ((void *)0)) :
        (offset < offset_top && md->offset_vector[offset] >= 0);
      rrc = match(eptr,ecode + (condition? (2 + 4) : (2 + 1 + (((ecode)[1] << 8) | (ecode)[(1)+1]))),offset_top,md,ims,eptrb,0x02)

                                                  ;
      return rrc;
      }




    else
      {
      rrc = match(eptr,ecode + 1 + 2,offset_top,md,ims,((void *)0),0x01 | 0x02)
                                           ;
      if (rrc == 1)
        {
        ecode += 1 + 2 + (((ecode)[2 +2] << 8) | (ecode)[(2 +2)+1]);
        while (*ecode == OP_ALT) ecode += (((ecode)[1] << 8) | (ecode)[(1)+1]);
        }
      else if (rrc != 0)
        {
        return rrc;
        }
      else ecode += (((ecode)[1] << 8) | (ecode)[(1)+1]);
      rrc = match(eptr,ecode + 1 + 2,offset_top,md,ims,eptrb,0x02)
                      ;
      return rrc;
      }





    case OP_CREF:
    case OP_BRANUMBER:
    ecode += 3;
    break;




    case OP_END:
    if (md->recursive != ((void *)0) && md->recursive->group_num == 0)
      {
      recursion_info *rec = md->recursive;
      ;
      md->recursive = rec->prevrec;
      memmove(md->offset_vector, rec->offset_save,
        rec->saved_max * sizeof(int));
      md->start_match = rec->save_start;
      ims = original_ims;
      ecode = rec->after_call;
      break;
      }




    if (md->notempty && eptr == md->start_match) return 0;
    md->end_match_ptr = eptr;
    md->end_offset_top = offset_top;
    return 1;



    case OP_OPT:
    ims = ecode[1];
    ecode += 2;
    ;
    break;







    case OP_ASSERT:
    case OP_ASSERTBACK:
    do
      {
      rrc = match(eptr,ecode + 1 + 2,offset_top,md,ims,((void *)0),0x02)
                      ;
      if (rrc == 1) break;
      if (rrc != 0) return rrc;
      ecode += (((ecode)[1] << 8) | (ecode)[(1)+1]);
      }
    while (*ecode == OP_ALT);
    if (*ecode == OP_KET) return 0;



    if ((flags & 0x01) != 0) return 1;




    do ecode += (((ecode)[1] << 8) | (ecode)[(1)+1]); while (*ecode == OP_ALT);
    ecode += 1 + 2;
    offset_top = md->end_offset_top;
    continue;



    case OP_ASSERT_NOT:
    case OP_ASSERTBACK_NOT:
    do
      {
      rrc = match(eptr,ecode + 1 + 2,offset_top,md,ims,((void *)0),0x02)
                      ;
      if (rrc == 1) return 0;
      if (rrc != 0) return rrc;
      ecode += (((ecode)[1] << 8) | (ecode)[(1)+1]);
      }
    while (*ecode == OP_ALT);

    if ((flags & 0x01) != 0) return 1;

    ecode += 1 + 2;
    continue;






    case OP_REVERSE:
# 6386 "pcre.c"
      {
      eptr -= (((ecode)[1] << 8) | (ecode)[(1)+1]);
      if (eptr < md->start_subject) return 0;
      }



    ecode += 1 + 2;
    break;





    case OP_CALLOUT:
    if (pcre_callout != ((void *)0))
      {
      pcre_callout_block cb;
      cb.version = 1;
      cb.callout_number = ecode[1];
      cb.offset_vector = md->offset_vector;
      cb.subject = (const char *)md->start_subject;
      cb.subject_length = md->end_subject - md->start_subject;
      cb.start_match = md->start_match - md->start_subject;
      cb.current_position = eptr - md->start_subject;
      cb.pattern_position = (((ecode)[2] << 8) | (ecode)[(2)+1]);
      cb.next_item_length = (((ecode)[2 + 2] << 8) | (ecode)[(2 + 2)+1]);
      cb.capture_top = offset_top/2;
      cb.capture_last = md->capture_last;
      cb.callout_data = md->callout_data;
      if ((rrc = (*pcre_callout)(&cb)) > 0) return 0;
      if (rrc < 0) return rrc;
      }
    ecode += 2 + 2*2;
    break;
# 6441 "pcre.c"
    case OP_RECURSE:
      {
      callpat = md->start_code + (((ecode)[1] << 8) | (ecode)[(1)+1]);
      new_recursive.group_num = *callpat - OP_BRA;




      if (new_recursive.group_num > 100)
        new_recursive.group_num = (((callpat)[2+2] << 8) | (callpat)[(2+2)+1]);



      new_recursive.prevrec = md->recursive;
      md->recursive = &new_recursive;



      ecode += 1 + 2;
      new_recursive.after_call = ecode;



      new_recursive.saved_max = md->offset_end;
      if (new_recursive.saved_max <= 30)
        new_recursive.offset_save = stacksave;
      else
        {
        new_recursive.offset_save =
          (int *)(pcre_malloc)(new_recursive.saved_max * sizeof(int));
        if (new_recursive.offset_save == ((void *)0)) return (-6);
        }

      memcpy(new_recursive.offset_save, md->offset_vector,
            new_recursive.saved_max * sizeof(int));
      new_recursive.save_start = md->start_match;
      md->start_match = eptr;




      ;
      do
        {
        rrc = match(eptr,callpat + 1 + 2,offset_top,md,ims,eptrb,0x02)
                                 ;
        if (rrc == 1)
          {
          md->recursive = new_recursive.prevrec;
          if (new_recursive.offset_save != stacksave)
            (pcre_free)(new_recursive.offset_save);
          return 1;
          }
        else if (rrc != 0) return rrc;

        md->recursive = &new_recursive;
        memcpy(md->offset_vector, new_recursive.offset_save,
            new_recursive.saved_max * sizeof(int));
        callpat += (((callpat)[1] << 8) | (callpat)[(1)+1]);
        }
      while (*callpat == OP_ALT);

      ;
      md->recursive = new_recursive.prevrec;
      if (new_recursive.offset_save != stacksave)
        (pcre_free)(new_recursive.offset_save);
      return 0;
      }
# 6518 "pcre.c"
    case OP_ONCE:
      {
      prev = ecode;
      saved_eptr = eptr;

      do
        {
        rrc = match(eptr,ecode + 1 + 2,offset_top,md,ims,eptrb,0x02)
                               ;
        if (rrc == 1) break;
        if (rrc != 0) return rrc;
        ecode += (((ecode)[1] << 8) | (ecode)[(1)+1]);
        }
      while (*ecode == OP_ALT);



      if (*ecode != OP_ONCE && *ecode != OP_ALT) return 0;




      do ecode += (((ecode)[1] << 8) | (ecode)[(1)+1]); while (*ecode == OP_ALT);

      offset_top = md->end_offset_top;
      eptr = md->end_match_ptr;







      if (*ecode == OP_KET || eptr == saved_eptr)
        {
        ecode += 1+2;
        break;
        }






      if (ecode[1+2] == OP_OPT)
        {
        ims = (ims & ~(0x0001|0x0002|0x0004)) | ecode[4];
        ;
        }

      if (*ecode == OP_KETRMIN)
        {
        rrc = match(eptr,ecode + 1 + 2,offset_top,md,ims,eptrb,0);
        if (rrc != 0) return rrc;
        rrc = match(eptr,prev,offset_top,md,ims,eptrb,0x02);
        if (rrc != 0) return rrc;
        }
      else
        {
        rrc = match(eptr,prev,offset_top,md,ims,eptrb,0x02);
        if (rrc != 0) return rrc;
        rrc = match(eptr,ecode + 1+2,offset_top,md,ims,eptrb,0);
        if (rrc != 0) return rrc;
        }
      }
    return 0;




    case OP_ALT:
    do ecode += (((ecode)[1] << 8) | (ecode)[(1)+1]); while (*ecode == OP_ALT);
    break;







    case OP_BRAZERO:
      {
      next = ecode+1;
      rrc = match(eptr,next,offset_top,md,ims,eptrb,0x02);
      if (rrc != 0) return rrc;
      do next += (((next)[1] << 8) | (next)[(1)+1]); while (*next == OP_ALT);
      ecode = next + 1+2;
      }
    break;

    case OP_BRAMINZERO:
      {
      next = ecode+1;
      do next += (((next)[1] << 8) | (next)[(1)+1]); while (*next == OP_ALT);
      rrc = match(eptr,next + 1+2,offset_top,md,ims,eptrb,0x02)
                      ;
      if (rrc != 0) return rrc;
      ecode++;
      }
    break;






    case OP_KET:
    case OP_KETRMIN:
    case OP_KETRMAX:
      {
      prev = ecode - (((ecode)[1] << 8) | (ecode)[(1)+1]);
      saved_eptr = eptrb->epb_saved_eptr;



      eptrb = eptrb->epb_prev;

      if (*prev == OP_ASSERT || *prev == OP_ASSERT_NOT ||
          *prev == OP_ASSERTBACK || *prev == OP_ASSERTBACK_NOT ||
          *prev == OP_ONCE)
        {
        md->end_match_ptr = eptr;
        md->end_offset_top = offset_top;
        return 1;
        }





      if (*prev != OP_COND)
        {
        number = *prev - OP_BRA;




        if (number > 100) number = (((prev)[2+2] << 8) | (prev)[(2+2)+1]);
        offset = number << 1;
# 6668 "pcre.c"
        if (number > 0)
          {
          md->capture_last = number;
          if (offset >= md->offset_max) md->offset_overflow = 1; else
            {
            md->offset_vector[offset] =
              md->offset_vector[md->offset_end - number];
            md->offset_vector[offset+1] = eptr - md->start_subject;
            if (offset_top <= offset) offset_top = offset + 2;
            }




          if (md->recursive != ((void *)0) && md->recursive->group_num == number)
            {
            recursion_info *rec = md->recursive;
            ;
            md->recursive = rec->prevrec;
            md->start_match = rec->save_start;
            memcpy(md->offset_vector, rec->offset_save,
              rec->saved_max * sizeof(int));
            ecode = rec->after_call;
            ims = original_ims;
            break;
            }
          }
        }




      ims = original_ims;
      ;







      if (*ecode == OP_KET || eptr == saved_eptr)
        {
        ecode += 1 + 2;
        break;
        }




      if (*ecode == OP_KETRMIN)
        {
        rrc = match(eptr,ecode + 1+2,offset_top,md,ims,eptrb,0);
        if (rrc != 0) return rrc;
        rrc = match(eptr,prev,offset_top,md,ims,eptrb,0x02);
        if (rrc != 0) return rrc;
        }
      else
        {
        rrc = match(eptr,prev,offset_top,md,ims,eptrb,0x02);
        if (rrc != 0) return rrc;
        rrc = match(eptr,ecode + 1+2,offset_top,md,ims,eptrb,0);
        if (rrc != 0) return rrc;
        }
      }

    return 0;



    case OP_CIRC:
    if (md->notbol && eptr == md->start_subject) return 0;
    if ((ims & 0x0002) != 0)
      {
      if (eptr != md->start_subject && eptr[-1] != '\n')
        return 0;
      ecode++;
      break;
      }




    case OP_SOD:
    if (eptr != md->start_subject) return 0;
    ecode++;
    break;



    case OP_SOM:
    if (eptr != md->start_subject + md->start_offset) return 0;
    ecode++;
    break;




    case OP_DOLL:
    if ((ims & 0x0002) != 0)
      {
      if (eptr < md->end_subject)
        { if (*eptr != '\n') return 0; }
      else
        { if (md->noteol) return 0; }
      ecode++;
      break;
      }
    else
      {
      if (md->noteol) return 0;
      if (!md->endonly)
        {
        if (eptr < md->end_subject - 1 ||
           (eptr == md->end_subject - 1 && *eptr != '\n'))
          return 0;
        ecode++;
        break;
        }
      }




    case OP_EOD:
    if (eptr < md->end_subject) return 0;
    ecode++;
    break;



    case OP_EODN:
    if (eptr < md->end_subject - 1 ||
       (eptr == md->end_subject - 1 && *eptr != '\n')) return 0;
    ecode++;
    break;



    case OP_NOT_WORD_BOUNDARY:
    case OP_WORD_BOUNDARY:
      {
# 6836 "pcre.c"
        {
        prev_is_word = (eptr != md->start_subject) &&
          ((md->ctypes[eptr[-1]] & 0x10) != 0);
        cur_is_word = (eptr < md->end_subject) &&
          ((md->ctypes[*eptr] & 0x10) != 0);
        }



      if ((*ecode++ == OP_WORD_BOUNDARY)?
           cur_is_word == prev_is_word : cur_is_word != prev_is_word)
        return 0;
      }
    break;



    case OP_ANY:
    if ((ims & 0x0004) == 0 && eptr < md->end_subject && *eptr == '\n')
      return 0;
    if (eptr++ >= md->end_subject) return 0;




    ecode++;
    break;




    case OP_ANYBYTE:
    if (eptr++ >= md->end_subject) return 0;
    ecode++;
    break;

    case OP_NOT_DIGIT:
    if (eptr >= md->end_subject) return 0;
    c = *eptr++;;
    if (



       (md->ctypes[c] & 0x04) != 0
       )
      return 0;
    ecode++;
    break;

    case OP_DIGIT:
    if (eptr >= md->end_subject) return 0;
    c = *eptr++;;
    if (



       (md->ctypes[c] & 0x04) == 0
       )
      return 0;
    ecode++;
    break;

    case OP_NOT_WHITESPACE:
    if (eptr >= md->end_subject) return 0;
    c = *eptr++;;
    if (



       (md->ctypes[c] & 0x01) != 0
       )
      return 0;
    ecode++;
    break;

    case OP_WHITESPACE:
    if (eptr >= md->end_subject) return 0;
    c = *eptr++;;
    if (



       (md->ctypes[c] & 0x01) == 0
       )
      return 0;
    ecode++;
    break;

    case OP_NOT_WORDCHAR:
    if (eptr >= md->end_subject) return 0;
    c = *eptr++;;
    if (



       (md->ctypes[c] & 0x10) != 0
       )
      return 0;
    ecode++;
    break;

    case OP_WORDCHAR:
    if (eptr >= md->end_subject) return 0;
    c = *eptr++;;
    if (



       (md->ctypes[c] & 0x10) == 0
       )
      return 0;
    ecode++;
    break;
# 7015 "pcre.c"
    case OP_REF:
      {
      offset = (((ecode)[1] << 8) | (ecode)[(1)+1]) << 1;
      ecode += 3;






      length = (offset >= offset_top || md->offset_vector[offset] < 0)?
        md->end_subject - eptr + 1 :
        md->offset_vector[offset+1] - md->offset_vector[offset];



      switch (*ecode)
        {
        case OP_CRSTAR:
        case OP_CRMINSTAR:
        case OP_CRPLUS:
        case OP_CRMINPLUS:
        case OP_CRQUERY:
        case OP_CRMINQUERY:
        c = *ecode++ - OP_CRSTAR;
        minimize = (c & 1) != 0;
        min = rep_min[c];
        max = rep_max[c];
        if (max == 0) max = 2147483647;
        break;

        case OP_CRRANGE:
        case OP_CRMINRANGE:
        minimize = (*ecode == OP_CRMINRANGE);
        min = (((ecode)[1] << 8) | (ecode)[(1)+1]);
        max = (((ecode)[3] << 8) | (ecode)[(3)+1]);
        if (max == 0) max = 2147483647;
        ecode += 5;
        break;

        default:
        if (!match_ref(offset, eptr, length, md, ims)) return 0;
        eptr += length;
        continue;
        }




      if (length == 0) continue;





      for (i = 1; i <= min; i++)
        {
        if (!match_ref(offset, eptr, length, md, ims)) return 0;
        eptr += length;
        }




      if (min == max) continue;



      if (minimize)
        {
        for (i = min;; i++)
          {
          rrc = match(eptr,ecode,offset_top,md,ims,eptrb,0);
          if (rrc != 0) return rrc;
          if (i >= max || !match_ref(offset, eptr, length, md, ims))
            return 0;
          eptr += length;
          }

        }



      else
        {
        pp = eptr;
        for (i = min; i < max; i++)
          {
          if (!match_ref(offset, eptr, length, md, ims)) break;
          eptr += length;
          }
        while (eptr >= pp)
          {
          rrc = match(eptr,ecode,offset_top,md,ims,eptrb,0);
          if (rrc != 0) return rrc;
          eptr -= length;
          }
        return 0;
        }
      }
# 7130 "pcre.c"
    case OP_NCLASS:
    case OP_CLASS:
      {
      data = ecode + 1;
      ecode += 33;

      switch (*ecode)
        {
        case OP_CRSTAR:
        case OP_CRMINSTAR:
        case OP_CRPLUS:
        case OP_CRMINPLUS:
        case OP_CRQUERY:
        case OP_CRMINQUERY:
        c = *ecode++ - OP_CRSTAR;
        minimize = (c & 1) != 0;
        min = rep_min[c];
        max = rep_max[c];
        if (max == 0) max = 2147483647;
        break;

        case OP_CRRANGE:
        case OP_CRMINRANGE:
        minimize = (*ecode == OP_CRMINRANGE);
        min = (((ecode)[1] << 8) | (ecode)[(1)+1]);
        max = (((ecode)[3] << 8) | (ecode)[(3)+1]);
        if (max == 0) max = 2147483647;
        ecode += 5;
        break;

        default:
        min = max = 1;
        break;
        }
# 7188 "pcre.c"
        {
        for (i = 1; i <= min; i++)
          {
          if (eptr >= md->end_subject) return 0;
          c = *eptr++;
          if ((data[c/8] & (1 << (c&7))) == 0) return 0;
          }
        }




      if (min == max) continue;




      if (minimize)
        {
# 7230 "pcre.c"
          {
          for (i = min;; i++)
            {
            rrc = match(eptr,ecode,offset_top,md,ims,eptrb,0);
            if (rrc != 0) return rrc;
            if (i >= max || eptr >= md->end_subject) return 0;
            c = *eptr++;
            if ((data[c/8] & (1 << (c&7))) == 0) return 0;
            }
          }

        }



      else
        {
        pp = eptr;
# 7279 "pcre.c"
          {
          for (i = min; i < max; i++)
            {
            if (eptr >= md->end_subject) break;
            c = *eptr;
            if ((data[c/8] & (1 << (c&7))) == 0) break;
            eptr++;
            }
          while (eptr >= pp)
            {
            rrc = match(eptr,ecode,offset_top,md,ims,eptrb,0);
            eptr--;
            if (rrc != 0) return rrc;
            }
          }

        return 0;
        }
      }
# 7398 "pcre.c"
    case OP_CHAR:
# 7412 "pcre.c"
      {
      if (md->end_subject - eptr < 1) return 0;
      if (ecode[1] != *eptr++) return 0;
      ecode += 2;
      }
    break;



    case OP_CHARNC:
# 7467 "pcre.c"
      {
      if (md->end_subject - eptr < 1) return 0;
      if (md->lcc[ecode[1]] != md->lcc[*eptr++]) return 0;
      ecode += 2;
      }
    break;



    case OP_EXACT:
    min = max = (((ecode)[1] << 8) | (ecode)[(1)+1]);
    ecode += 3;
    goto REPEATCHAR;

    case OP_UPTO:
    case OP_MINUPTO:
    min = 0;
    max = (((ecode)[1] << 8) | (ecode)[(1)+1]);
    minimize = *ecode == OP_MINUPTO;
    ecode += 3;
    goto REPEATCHAR;

    case OP_STAR:
    case OP_MINSTAR:
    case OP_PLUS:
    case OP_MINPLUS:
    case OP_QUERY:
    case OP_MINQUERY:
    c = *ecode++ - OP_STAR;
    minimize = (c & 1) != 0;
    min = rep_min[c];
    max = rep_max[c];
    if (max == 0) max = 2147483647;





    REPEATCHAR:
# 7597 "pcre.c"
      {
      if (min > md->end_subject - eptr) return 0;
      c = *ecode++;
      }
# 7611 "pcre.c"
   
                 ;

    if ((ims & 0x0001) != 0)
      {
      c = md->lcc[c];
      for (i = 1; i <= min; i++)
        if (c != md->lcc[*eptr++]) return 0;
      if (min == max) continue;
      if (minimize)
        {
        for (i = min;; i++)
          {
          rrc = match(eptr,ecode,offset_top,md,ims,eptrb,0);
          if (rrc != 0) return rrc;
          if (i >= max || eptr >= md->end_subject ||
              c != md->lcc[*eptr++])
            return 0;
          }

        }
      else
        {
        pp = eptr;
        for (i = min; i < max; i++)
          {
          if (eptr >= md->end_subject || c != md->lcc[*eptr]) break;
          eptr++;
          }
        while (eptr >= pp)
          {
          rrc = match(eptr,ecode,offset_top,md,ims,eptrb,0);
          eptr--;
          if (rrc != 0) return rrc;
          }
        return 0;
        }

      }



    else
      {
      for (i = 1; i <= min; i++) if (c != *eptr++) return 0;
      if (min == max) continue;
      if (minimize)
        {
        for (i = min;; i++)
          {
          rrc = match(eptr,ecode,offset_top,md,ims,eptrb,0);
          if (rrc != 0) return rrc;
          if (i >= max || eptr >= md->end_subject || c != *eptr++)
            return 0;
          }

        }
      else
        {
        pp = eptr;
        for (i = min; i < max; i++)
          {
          if (eptr >= md->end_subject || c != *eptr) break;
          eptr++;
          }
        while (eptr >= pp)
          {
          rrc = match(eptr,ecode,offset_top,md,ims,eptrb,0);
          eptr--;
          if (rrc != 0) return rrc;
          }
        return 0;
        }
      }





    case OP_NOT:
    if (eptr >= md->end_subject) return 0;
    ecode++;
    c = *eptr++;;
    if ((ims & 0x0001) != 0)
      {



      c = md->lcc[c];
      if (md->lcc[*ecode++] == c) return 0;
      }
    else
      {
      if (*ecode++ == c) return 0;
      }
    break;
# 7715 "pcre.c"
    case OP_NOTEXACT:
    min = max = (((ecode)[1] << 8) | (ecode)[(1)+1]);
    ecode += 3;
    goto REPEATNOTCHAR;

    case OP_NOTUPTO:
    case OP_NOTMINUPTO:
    min = 0;
    max = (((ecode)[1] << 8) | (ecode)[(1)+1]);
    minimize = *ecode == OP_NOTMINUPTO;
    ecode += 3;
    goto REPEATNOTCHAR;

    case OP_NOTSTAR:
    case OP_NOTMINSTAR:
    case OP_NOTPLUS:
    case OP_NOTMINPLUS:
    case OP_NOTQUERY:
    case OP_NOTMINQUERY:
    c = *ecode++ - OP_NOTSTAR;
    minimize = (c & 1) != 0;
    min = rep_min[c];
    max = rep_max[c];
    if (max == 0) max = 2147483647;





    REPEATNOTCHAR:
    if (min > md->end_subject - eptr) return 0;
    c = *ecode++;
# 7756 "pcre.c"
   
                 ;

    if ((ims & 0x0001) != 0)
      {
      c = md->lcc[c];
# 7779 "pcre.c"
        {
        for (i = 1; i <= min; i++)
          if (c == md->lcc[*eptr++]) return 0;
        }

      if (min == max) continue;

      if (minimize)
        {
# 7806 "pcre.c"
          {
          for (i = min;; i++)
            {
            rrc = match(eptr,ecode,offset_top,md,ims,eptrb,0);
            if (rrc != 0) return rrc;
            if (i >= max || eptr >= md->end_subject || c == md->lcc[*eptr++])
              return 0;
            }
          }

        }



      else
        {
        pp = eptr;
# 7849 "pcre.c"
          {
          for (i = min; i < max; i++)
            {
            if (eptr >= md->end_subject || c == md->lcc[*eptr]) break;
            eptr++;
            }
          while (eptr >= pp)
            {
            rrc = match(eptr,ecode,offset_top,md,ims,eptrb,0);
            if (rrc != 0) return rrc;
            eptr--;
            }
          }

        return 0;
        }

      }



    else
      {
# 7886 "pcre.c"
        {
        for (i = 1; i <= min; i++)
          if (c == *eptr++) return 0;
        }

      if (min == max) continue;

      if (minimize)
        {
# 7912 "pcre.c"
          {
          for (i = min;; i++)
            {
            rrc = match(eptr,ecode,offset_top,md,ims,eptrb,0);
            if (rrc != 0) return rrc;
            if (i >= max || eptr >= md->end_subject || c == *eptr++)
              return 0;
            }
          }

        }



      else
        {
        pp = eptr;
# 7954 "pcre.c"
          {
          for (i = min; i < max; i++)
            {
            if (eptr >= md->end_subject || c == *eptr) break;
            eptr++;
            }
          while (eptr >= pp)
            {
            rrc = match(eptr,ecode,offset_top,md,ims,eptrb,0);
            if (rrc != 0) return rrc;
            eptr--;
            }
          }

        return 0;
        }
      }






    case OP_TYPEEXACT:
    min = max = (((ecode)[1] << 8) | (ecode)[(1)+1]);
    minimize = 1;
    ecode += 3;
    goto REPEATTYPE;

    case OP_TYPEUPTO:
    case OP_TYPEMINUPTO:
    min = 0;
    max = (((ecode)[1] << 8) | (ecode)[(1)+1]);
    minimize = *ecode == OP_TYPEMINUPTO;
    ecode += 3;
    goto REPEATTYPE;

    case OP_TYPESTAR:
    case OP_TYPEMINSTAR:
    case OP_TYPEPLUS:
    case OP_TYPEMINPLUS:
    case OP_TYPEQUERY:
    case OP_TYPEMINQUERY:
    c = *ecode++ - OP_TYPESTAR;
    minimize = (c & 1) != 0;
    min = rep_min[c];
    max = rep_max[c];
    if (max == 0) max = 2147483647;





    REPEATTYPE:
    ctype = *ecode++;
# 8037 "pcre.c"
    if (min > md->end_subject - eptr) return 0;
    if (min > 0)
      {
# 8168 "pcre.c"
      switch(ctype)
        {
        case OP_ANY:
        if ((ims & 0x0004) == 0)
          {
          for (i = 1; i <= min; i++)
            if (*eptr++ == '\n') return 0;
          }
        else eptr += min;
        break;

        case OP_ANYBYTE:
        eptr += min;
        break;

        case OP_NOT_DIGIT:
        for (i = 1; i <= min; i++)
          if ((md->ctypes[*eptr++] & 0x04) != 0) return 0;
        break;

        case OP_DIGIT:
        for (i = 1; i <= min; i++)
          if ((md->ctypes[*eptr++] & 0x04) == 0) return 0;
        break;

        case OP_NOT_WHITESPACE:
        for (i = 1; i <= min; i++)
          if ((md->ctypes[*eptr++] & 0x01) != 0) return 0;
        break;

        case OP_WHITESPACE:
        for (i = 1; i <= min; i++)
          if ((md->ctypes[*eptr++] & 0x01) == 0) return 0;
        break;

        case OP_NOT_WORDCHAR:
        for (i = 1; i <= min; i++)
          if ((md->ctypes[*eptr++] & 0x10) != 0)
            return 0;
        break;

        case OP_WORDCHAR:
        for (i = 1; i <= min; i++)
          if ((md->ctypes[*eptr++] & 0x10) == 0)
            return 0;
        break;

        default:
        return (-14);
        }
      }



    if (min == max) continue;





    if (minimize)
      {
# 8333 "pcre.c"
        {
        for (i = min;; i++)
          {
          rrc = match(eptr,ecode,offset_top,md,ims,eptrb,0);
          if (rrc != 0) return rrc;
          if (i >= max || eptr >= md->end_subject) return 0;
          c = *eptr++;
          switch(ctype)
            {
            case OP_ANY:
            if ((ims & 0x0004) == 0 && c == '\n') return 0;
            break;

            case OP_ANYBYTE:
            break;

            case OP_NOT_DIGIT:
            if ((md->ctypes[c] & 0x04) != 0) return 0;
            break;

            case OP_DIGIT:
            if ((md->ctypes[c] & 0x04) == 0) return 0;
            break;

            case OP_NOT_WHITESPACE:
            if ((md->ctypes[c] & 0x01) != 0) return 0;
            break;

            case OP_WHITESPACE:
            if ((md->ctypes[c] & 0x01) == 0) return 0;
            break;

            case OP_NOT_WORDCHAR:
            if ((md->ctypes[c] & 0x10) != 0) return 0;
            break;

            case OP_WORDCHAR:
            if ((md->ctypes[c] & 0x10) == 0) return 0;
            break;

            default:
            return (-14);
            }
          }
        }

      }





    else
      {
      pp = eptr;
# 8611 "pcre.c"
        {
        switch(ctype)
          {
          case OP_ANY:
          if ((ims & 0x0004) == 0)
            {
            for (i = min; i < max; i++)
              {
              if (eptr >= md->end_subject || *eptr == '\n') break;
              eptr++;
              }
            break;
            }


          case OP_ANYBYTE:
          c = max - min;
          if (c > md->end_subject - eptr) c = md->end_subject - eptr;
          eptr += c;
          break;

          case OP_NOT_DIGIT:
          for (i = min; i < max; i++)
            {
            if (eptr >= md->end_subject || (md->ctypes[*eptr] & 0x04) != 0)
              break;
            eptr++;
            }
          break;

          case OP_DIGIT:
          for (i = min; i < max; i++)
            {
            if (eptr >= md->end_subject || (md->ctypes[*eptr] & 0x04) == 0)
              break;
            eptr++;
            }
          break;

          case OP_NOT_WHITESPACE:
          for (i = min; i < max; i++)
            {
            if (eptr >= md->end_subject || (md->ctypes[*eptr] & 0x01) != 0)
              break;
            eptr++;
            }
          break;

          case OP_WHITESPACE:
          for (i = min; i < max; i++)
            {
            if (eptr >= md->end_subject || (md->ctypes[*eptr] & 0x01) == 0)
              break;
            eptr++;
            }
          break;

          case OP_NOT_WORDCHAR:
          for (i = min; i < max; i++)
            {
            if (eptr >= md->end_subject || (md->ctypes[*eptr] & 0x10) != 0)
              break;
            eptr++;
            }
          break;

          case OP_WORDCHAR:
          for (i = min; i < max; i++)
            {
            if (eptr >= md->end_subject || (md->ctypes[*eptr] & 0x10) == 0)
              break;
            eptr++;
            }
          break;

          default:
          return (-14);
          }



        while (eptr >= pp)
          {
          rrc = match(eptr,ecode,offset_top,md,ims,eptrb,0);
          eptr--;
          if (rrc != 0) return rrc;
          }
        }



      return 0;
      }







    default:
    ;
    return (-5);
    }





  }

}
# 8807 "pcre.c"
 int
pcre_exec(const pcre *argument_re, const pcre_extra *extra_data,
  const char *subject, int length, int start_offset, int options, int *offsets,
  int offsetcount)
{
int rc, resetcount, ocount;
int first_byte = -1;
int req_byte = -1;
int req_byte2 = -1;
unsigned long int ims = 0;
BOOL using_temporary_offsets = 0;
BOOL anchored;
BOOL startline;
BOOL first_byte_caseless = 0;
BOOL req_byte_caseless = 0;
match_data match_block;
const uschar *tables;
const uschar *start_bits = ((void *)0);
const uschar *start_match = (const uschar *)subject + start_offset;
const uschar *end_subject;
const uschar *req_byte_ptr = start_match - 1;

pcre_study_data internal_study;
const pcre_study_data *study;

real_pcre internal_re;
const real_pcre *external_re = (const real_pcre *)argument_re;
const real_pcre *re = external_re;



if ((options & ~(0x0010|0x0080|0x0100|0x0400|0x2000| 0x8000)) != 0) return (-3);
if (re == ((void *)0) || subject == ((void *)0) ||
   (offsets == ((void *)0) && offsetcount > 0)) return (-2);
if (offsetcount < 0) return (-15);




study = ((void *)0);
match_block.match_limit = 10000000;
match_block.callout_data = ((void *)0);



tables = external_re->tables;

if (extra_data != ((void *)0))
  {
  register unsigned int flags = extra_data->flags;
  if ((flags & 0x0001) != 0)
    study = (const pcre_study_data *)extra_data->study_data;
  if ((flags & 0x0002) != 0)
    match_block.match_limit = extra_data->match_limit;
  if ((flags & 0x0004) != 0)
    match_block.callout_data = extra_data->callout_data;
  if ((flags & 0x0008) != 0) tables = extra_data->tables;
  }





if (tables == ((void *)0)) tables = pcre_default_tables;






if (re->magic_number != 0x50435245UL)
  {
  re = try_flipped(re, &internal_re, study, &internal_study);
  if (re == ((void *)0)) return (-4);
  if (study != ((void *)0)) study = &internal_study;
  }



anchored = ((re->options | options) & 0x0010) != 0;
startline = (re->options & 0x10000000) != 0;



match_block.start_code = (const uschar *)external_re + re->name_table_offset +
  re->name_count * re->name_entry_size;

match_block.start_subject = (const uschar *)subject;
match_block.start_offset = start_offset;
match_block.end_subject = match_block.start_subject + length;
end_subject = match_block.end_subject;

match_block.endonly = (re->options & 0x0020) != 0;
match_block.utf8 = (re->options & 0x0800) != 0;

match_block.notbol = (options & 0x0080) != 0;
match_block.noteol = (options & 0x0100) != 0;
match_block.notempty = (options & 0x0400) != 0;
match_block.partial = (options & 0x8000) != 0;
match_block.hitend = 0;

match_block.recursive = ((void *)0);

match_block.lcc = tables + 0;
match_block.ctypes = tables + (512 + 320);




if (match_block.partial && (re->options & 0x04000000) != 0)
  return (-13);
# 8943 "pcre.c"
ims = re->options & (0x0001|0x0002|0x0004);






ocount = offsetcount - (offsetcount % 3);

if (re->top_backref > 0 && re->top_backref >= ocount/3)
  {
  ocount = re->top_backref * 3 + 3;
  match_block.offset_vector = (int *)(pcre_malloc)(ocount * sizeof(int));
  if (match_block.offset_vector == ((void *)0)) return (-6);
  using_temporary_offsets = 1;
  ;
  }
else match_block.offset_vector = offsets;

match_block.offset_end = ocount;
match_block.offset_max = (2*ocount)/3;
match_block.offset_overflow = 0;
match_block.capture_last = -1;





resetcount = 2 + re->top_bracket * 2;
if (resetcount > offsetcount) resetcount = ocount;





if (match_block.offset_vector != ((void *)0))
  {
  register int *iptr = match_block.offset_vector + ocount;
  register int *iend = iptr - resetcount/2 + 1;
  while (--iptr >= iend) *iptr = -1;
  }







if (!anchored)
  {
  if ((re->options & 0x40000000) != 0)
    {
    first_byte = re->first_byte & 255;
    if ((first_byte_caseless = ((re->first_byte & 0x0100) != 0)) == 1)
      first_byte = match_block.lcc[first_byte];
    }
  else
    if (!startline && study != ((void *)0) &&
      (study->options & 0x01) != 0)
        start_bits = study->start_bits;
  }




if ((re->options & 0x20000000) != 0)
  {
  req_byte = re->req_byte & 255;
  req_byte_caseless = (re->req_byte & 0x0100) != 0;
  req_byte2 = (tables + 256)[req_byte];
  }




do
  {


  if (match_block.offset_vector != ((void *)0))
    {
    register int *iptr = match_block.offset_vector;
    register int *iend = iptr + resetcount;
    while (iptr < iend) *iptr++ = -1;
    }



  if (first_byte >= 0)
    {
    if (first_byte_caseless)
      while (start_match < end_subject &&
             match_block.lcc[*start_match] != first_byte)
        start_match++;
    else
      while (start_match < end_subject && *start_match != first_byte)
        start_match++;
    }



  else if (startline)
    {
    if (start_match > match_block.start_subject + start_offset)
      {
      while (start_match < end_subject && start_match[-1] != '\n')
        start_match++;
      }
    }



  else if (start_bits != ((void *)0))
    {
    while (start_match < end_subject)
      {
      register unsigned int c = *start_match;
      if ((start_bits[c/8] & (1 << (c&7))) == 0) start_match++; else break;
      }
    }
# 9086 "pcre.c"
  if (req_byte >= 0 &&
      end_subject - start_match < 1000 &&
      !match_block.partial)
    {
    register const uschar *p = start_match + ((first_byte >= 0)? 1 : 0);




    if (p > req_byte_ptr)
      {
      if (req_byte_caseless)
        {
        while (p < end_subject)
          {
          register int pp = *p++;
          if (pp == req_byte || pp == req_byte2) { p--; break; }
          }
        }
      else
        {
        while (p < end_subject)
          {
          if (*p++ == req_byte) { p--; break; }
          }
        }



      if (p >= end_subject) break;





      req_byte_ptr = p;
      }
    }
# 9132 "pcre.c"
  match_block.start_match = start_match;
  match_block.match_call_count = 0;

  rc = match(start_match, match_block.start_code, 2, &match_block, ims, ((void *)0),
    0x02);

  if (rc == 0)
    {
    start_match++;





    continue;
    }

  if (rc != 1)
    {
    ;
    return rc;
    }




  if (using_temporary_offsets)
    {
    if (offsetcount >= 4)
      {
      memcpy(offsets + 2, match_block.offset_vector + 2,
        (offsetcount - 2) * sizeof(int));
      ;
      }
    if (match_block.end_offset_top > offsetcount)
      match_block.offset_overflow = 1;

    ;
    (pcre_free)(match_block.offset_vector);
    }

  rc = match_block.offset_overflow? 0 : match_block.end_offset_top/2;

  if (offsetcount < 2) rc = 0; else
    {
    offsets[0] = start_match - match_block.start_subject;
    offsets[1] = match_block.end_match_ptr - match_block.start_subject;
    }

  ;
  return rc;
  }



while (!anchored && start_match <= end_subject);

if (using_temporary_offsets)
  {
  ;
  (pcre_free)(match_block.offset_vector);
  }

if (match_block.partial && match_block.hitend)
  {
  ;
  return (-12);
  }
else
  {
  ;
  return (-1);
  }
}
