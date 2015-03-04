# 1 "core.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "core.c"
# 17 "core.c"
# 1 "/usr/include/apr-1/apr.h" 1
# 164 "/usr/include/apr-1/apr.h"
# 1 "/usr/include/sys/types.h" 1 3 4
# 25 "/usr/include/sys/types.h" 3 4
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
# 26 "/usr/include/sys/types.h" 2 3 4



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
# 30 "/usr/include/sys/types.h" 2 3 4



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





typedef __off_t off_t;






typedef __off64_t off64_t;




typedef __pid_t pid_t;





typedef __id_t id_t;




typedef __ssize_t ssize_t;





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
# 212 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 3 4
typedef long unsigned int size_t;
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
# 216 "/usr/include/sys/types.h" 3 4
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
# 217 "/usr/include/sys/types.h" 2 3 4


# 1 "/usr/include/sys/select.h" 1 3 4
# 30 "/usr/include/sys/select.h" 3 4
# 1 "/usr/include/bits/select.h" 1 3 4
# 22 "/usr/include/bits/select.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 23 "/usr/include/bits/select.h" 2 3 4
# 31 "/usr/include/sys/select.h" 2 3 4


# 1 "/usr/include/bits/sigset.h" 1 3 4
# 22 "/usr/include/bits/sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
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



# 165 "/usr/include/apr-1/apr.h" 2



# 1 "/usr/include/sys/socket.h" 1 3 4
# 24 "/usr/include/sys/socket.h" 3 4


# 1 "/usr/include/sys/uio.h" 1 3 4
# 25 "/usr/include/sys/uio.h" 3 4



# 1 "/usr/include/bits/uio.h" 1 3 4
# 43 "/usr/include/bits/uio.h" 3 4
struct iovec
  {
    void *iov_base;
    size_t iov_len;
  };
# 56 "/usr/include/bits/uio.h" 3 4



extern ssize_t process_vm_readv (pid_t __pid, const struct iovec *__lvec,
     unsigned long int __liovcnt,
     const struct iovec *__rvec,
     unsigned long int __riovcnt,
     unsigned long int __flags)
  __attribute__ ((__nothrow__ , __leaf__));


extern ssize_t process_vm_writev (pid_t __pid, const struct iovec *__lvec,
      unsigned long int __liovcnt,
      const struct iovec *__rvec,
      unsigned long int __riovcnt,
      unsigned long int __flags)
  __attribute__ ((__nothrow__ , __leaf__));


# 29 "/usr/include/sys/uio.h" 2 3 4
# 39 "/usr/include/sys/uio.h" 3 4
extern ssize_t readv (int __fd, const struct iovec *__iovec, int __count)
  ;
# 50 "/usr/include/sys/uio.h" 3 4
extern ssize_t writev (int __fd, const struct iovec *__iovec, int __count)
  ;
# 65 "/usr/include/sys/uio.h" 3 4
extern ssize_t preadv (int __fd, const struct iovec *__iovec, int __count,
         __off_t __offset) ;
# 77 "/usr/include/sys/uio.h" 3 4
extern ssize_t pwritev (int __fd, const struct iovec *__iovec, int __count,
   __off_t __offset) ;
# 103 "/usr/include/sys/uio.h" 3 4
extern ssize_t preadv64 (int __fd, const struct iovec *__iovec, int __count,
    __off64_t __offset) ;
# 115 "/usr/include/sys/uio.h" 3 4
extern ssize_t pwritev64 (int __fd, const struct iovec *__iovec, int __count,
     __off64_t __offset) ;




# 27 "/usr/include/sys/socket.h" 2 3 4

# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 1 3 4
# 29 "/usr/include/sys/socket.h" 2 3 4


# 1 "/usr/include/bits/sigset.h" 1 3 4
# 32 "/usr/include/sys/socket.h" 2 3 4






# 1 "/usr/include/bits/socket.h" 1 3 4
# 27 "/usr/include/bits/socket.h" 3 4
# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 1 3 4
# 28 "/usr/include/bits/socket.h" 2 3 4





typedef __socklen_t socklen_t;




# 1 "/usr/include/bits/socket_type.h" 1 3 4
# 24 "/usr/include/bits/socket_type.h" 3 4
enum __socket_type
{
  SOCK_STREAM = 1,


  SOCK_DGRAM = 2,


  SOCK_RAW = 3,

  SOCK_RDM = 4,

  SOCK_SEQPACKET = 5,


  SOCK_DCCP = 6,

  SOCK_PACKET = 10,







  SOCK_CLOEXEC = 02000000,


  SOCK_NONBLOCK = 00004000


};
# 39 "/usr/include/bits/socket.h" 2 3 4
# 146 "/usr/include/bits/socket.h" 3 4
# 1 "/usr/include/bits/sockaddr.h" 1 3 4
# 28 "/usr/include/bits/sockaddr.h" 3 4
typedef unsigned short int sa_family_t;
# 147 "/usr/include/bits/socket.h" 2 3 4


struct sockaddr
  {
    sa_family_t sa_family;
    char sa_data[14];
  };
# 162 "/usr/include/bits/socket.h" 3 4
struct sockaddr_storage
  {
    sa_family_t ss_family;
    unsigned long int __ss_align;
    char __ss_padding[(128 - (2 * sizeof (unsigned long int)))];
  };



enum
  {
    MSG_OOB = 0x01,

    MSG_PEEK = 0x02,

    MSG_DONTROUTE = 0x04,



    MSG_TRYHARD = MSG_DONTROUTE,


    MSG_CTRUNC = 0x08,

    MSG_PROXY = 0x10,

    MSG_TRUNC = 0x20,

    MSG_DONTWAIT = 0x40,

    MSG_EOR = 0x80,

    MSG_WAITALL = 0x100,

    MSG_FIN = 0x200,

    MSG_SYN = 0x400,

    MSG_CONFIRM = 0x800,

    MSG_RST = 0x1000,

    MSG_ERRQUEUE = 0x2000,

    MSG_NOSIGNAL = 0x4000,

    MSG_MORE = 0x8000,

    MSG_WAITFORONE = 0x10000,

    MSG_FASTOPEN = 0x20000000,


    MSG_CMSG_CLOEXEC = 0x40000000



  };




struct msghdr
  {
    void *msg_name;
    socklen_t msg_namelen;

    struct iovec *msg_iov;
    size_t msg_iovlen;

    void *msg_control;
    size_t msg_controllen;




    int msg_flags;
  };


struct cmsghdr
  {
    size_t cmsg_len;




    int cmsg_level;
    int cmsg_type;

    __extension__ unsigned char __cmsg_data [];

  };
# 272 "/usr/include/bits/socket.h" 3 4
extern struct cmsghdr *__cmsg_nxthdr (struct msghdr *__mhdr,
          struct cmsghdr *__cmsg) __attribute__ ((__nothrow__ , __leaf__));
# 299 "/usr/include/bits/socket.h" 3 4
enum
  {
    SCM_RIGHTS = 0x01


    , SCM_CREDENTIALS = 0x02


  };



struct ucred
{
  pid_t pid;
  uid_t uid;
  gid_t gid;
};
# 345 "/usr/include/bits/socket.h" 3 4
# 1 "/usr/include/asm/socket.h" 1 3 4
# 1 "/usr/include/asm-generic/socket.h" 1 3 4



# 1 "/usr/include/asm/sockios.h" 1 3 4
# 1 "/usr/include/asm-generic/sockios.h" 1 3 4
# 1 "/usr/include/asm/sockios.h" 2 3 4
# 5 "/usr/include/asm-generic/socket.h" 2 3 4
# 1 "/usr/include/asm/socket.h" 2 3 4
# 346 "/usr/include/bits/socket.h" 2 3 4
# 379 "/usr/include/bits/socket.h" 3 4
struct linger
  {
    int l_onoff;
    int l_linger;
  };
# 39 "/usr/include/sys/socket.h" 2 3 4




struct osockaddr
  {
    unsigned short int sa_family;
    unsigned char sa_data[14];
  };




enum
{
  SHUT_RD = 0,

  SHUT_WR,

  SHUT_RDWR

};
# 90 "/usr/include/sys/socket.h" 3 4
typedef union { struct sockaddr *__restrict __sockaddr__; struct sockaddr_at *__restrict __sockaddr_at__; struct sockaddr_ax25 *__restrict __sockaddr_ax25__; struct sockaddr_dl *__restrict __sockaddr_dl__; struct sockaddr_eon *__restrict __sockaddr_eon__; struct sockaddr_in *__restrict __sockaddr_in__; struct sockaddr_in6 *__restrict __sockaddr_in6__; struct sockaddr_inarp *__restrict __sockaddr_inarp__; struct sockaddr_ipx *__restrict __sockaddr_ipx__; struct sockaddr_iso *__restrict __sockaddr_iso__; struct sockaddr_ns *__restrict __sockaddr_ns__; struct sockaddr_un *__restrict __sockaddr_un__; struct sockaddr_x25 *__restrict __sockaddr_x25__;
       } __SOCKADDR_ARG __attribute__ ((__transparent_union__));


typedef union { const struct sockaddr *__restrict __sockaddr__; const struct sockaddr_at *__restrict __sockaddr_at__; const struct sockaddr_ax25 *__restrict __sockaddr_ax25__; const struct sockaddr_dl *__restrict __sockaddr_dl__; const struct sockaddr_eon *__restrict __sockaddr_eon__; const struct sockaddr_in *__restrict __sockaddr_in__; const struct sockaddr_in6 *__restrict __sockaddr_in6__; const struct sockaddr_inarp *__restrict __sockaddr_inarp__; const struct sockaddr_ipx *__restrict __sockaddr_ipx__; const struct sockaddr_iso *__restrict __sockaddr_iso__; const struct sockaddr_ns *__restrict __sockaddr_ns__; const struct sockaddr_un *__restrict __sockaddr_un__; const struct sockaddr_x25 *__restrict __sockaddr_x25__;
       } __CONST_SOCKADDR_ARG __attribute__ ((__transparent_union__));





struct mmsghdr
  {
    struct msghdr msg_hdr;
    unsigned int msg_len;

  };






extern int socket (int __domain, int __type, int __protocol) __attribute__ ((__nothrow__ , __leaf__));





extern int socketpair (int __domain, int __type, int __protocol,
         int __fds[2]) __attribute__ ((__nothrow__ , __leaf__));


extern int bind (int __fd, __CONST_SOCKADDR_ARG __addr, socklen_t __len)
     __attribute__ ((__nothrow__ , __leaf__));


extern int getsockname (int __fd, __SOCKADDR_ARG __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__ , __leaf__));
# 137 "/usr/include/sys/socket.h" 3 4
extern int connect (int __fd, __CONST_SOCKADDR_ARG __addr, socklen_t __len);



extern int getpeername (int __fd, __SOCKADDR_ARG __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__ , __leaf__));






extern ssize_t send (int __fd, const void *__buf, size_t __n, int __flags);






extern ssize_t recv (int __fd, void *__buf, size_t __n, int __flags);






extern ssize_t sendto (int __fd, const void *__buf, size_t __n,
         int __flags, __CONST_SOCKADDR_ARG __addr,
         socklen_t __addr_len);
# 174 "/usr/include/sys/socket.h" 3 4
extern ssize_t recvfrom (int __fd, void *__restrict __buf, size_t __n,
    int __flags, __SOCKADDR_ARG __addr,
    socklen_t *__restrict __addr_len);







extern ssize_t sendmsg (int __fd, const struct msghdr *__message,
   int __flags);







extern int sendmmsg (int __fd, struct mmsghdr *__vmessages,
       unsigned int __vlen, int __flags);







extern ssize_t recvmsg (int __fd, struct msghdr *__message, int __flags);







extern int recvmmsg (int __fd, struct mmsghdr *__vmessages,
       unsigned int __vlen, int __flags,
       struct timespec *__tmo);






extern int getsockopt (int __fd, int __level, int __optname,
         void *__restrict __optval,
         socklen_t *__restrict __optlen) __attribute__ ((__nothrow__ , __leaf__));




extern int setsockopt (int __fd, int __level, int __optname,
         const void *__optval, socklen_t __optlen) __attribute__ ((__nothrow__ , __leaf__));





extern int listen (int __fd, int __n) __attribute__ ((__nothrow__ , __leaf__));
# 243 "/usr/include/sys/socket.h" 3 4
extern int accept (int __fd, __SOCKADDR_ARG __addr,
     socklen_t *__restrict __addr_len);






extern int accept4 (int __fd, __SOCKADDR_ARG __addr,
      socklen_t *__restrict __addr_len, int __flags);
# 261 "/usr/include/sys/socket.h" 3 4
extern int shutdown (int __fd, int __how) __attribute__ ((__nothrow__ , __leaf__));




extern int sockatmark (int __fd) __attribute__ ((__nothrow__ , __leaf__));







extern int isfdtype (int __fd, int __fdtype) __attribute__ ((__nothrow__ , __leaf__));
# 283 "/usr/include/sys/socket.h" 3 4

# 169 "/usr/include/apr-1/apr.h" 2
# 178 "/usr/include/apr-1/apr.h"
# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/bits/wchar.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/stdint.h" 2 3 4
# 48 "/usr/include/stdint.h" 3 4
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;



typedef unsigned long int uint64_t;
# 65 "/usr/include/stdint.h" 3 4
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;

typedef long int int_least64_t;






typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;

typedef unsigned long int uint_least64_t;
# 90 "/usr/include/stdint.h" 3 4
typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 103 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 119 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 134 "/usr/include/stdint.h" 3 4
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
# 10 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stdint.h" 2 3 4
# 179 "/usr/include/apr-1/apr.h" 2



# 1 "/usr/include/sys/wait.h" 1 3 4
# 27 "/usr/include/sys/wait.h" 3 4


# 1 "/usr/include/signal.h" 1 3 4
# 30 "/usr/include/signal.h" 3 4


# 1 "/usr/include/bits/sigset.h" 1 3 4
# 102 "/usr/include/bits/sigset.h" 3 4
extern int __sigismember (const __sigset_t *, int);
extern int __sigaddset (__sigset_t *, int);
extern int __sigdelset (__sigset_t *, int);
# 33 "/usr/include/signal.h" 2 3 4







typedef __sig_atomic_t sig_atomic_t;

# 57 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/signum.h" 1 3 4
# 58 "/usr/include/signal.h" 2 3 4
# 75 "/usr/include/signal.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 76 "/usr/include/signal.h" 2 3 4




# 1 "/usr/include/bits/siginfo.h" 1 3 4
# 24 "/usr/include/bits/siginfo.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 25 "/usr/include/bits/siginfo.h" 2 3 4







typedef union sigval
  {
    int sival_int;
    void *sival_ptr;
  } sigval_t;
# 58 "/usr/include/bits/siginfo.h" 3 4
typedef __clock_t __sigchld_clock_t;



typedef struct
  {
    int si_signo;
    int si_errno;

    int si_code;

    union
      {
 int _pad[((128 / sizeof (int)) - 4)];


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
   } _kill;


 struct
   {
     int si_tid;
     int si_overrun;
     sigval_t si_sigval;
   } _timer;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     sigval_t si_sigval;
   } _rt;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     int si_status;
     __sigchld_clock_t si_utime;
     __sigchld_clock_t si_stime;
   } _sigchld;


 struct
   {
     void *si_addr;
     short int si_addr_lsb;
   } _sigfault;


 struct
   {
     long int si_band;
     int si_fd;
   } _sigpoll;


 struct
   {
     void *_call_addr;
     int _syscall;
     unsigned int _arch;
   } _sigsys;
      } _sifields;
  } siginfo_t ;
# 153 "/usr/include/bits/siginfo.h" 3 4
enum
{
  SI_ASYNCNL = -60,

  SI_TKILL = -6,

  SI_SIGIO,

  SI_ASYNCIO,

  SI_MESGQ,

  SI_TIMER,

  SI_QUEUE,

  SI_USER,

  SI_KERNEL = 0x80

};




enum
{
  ILL_ILLOPC = 1,

  ILL_ILLOPN,

  ILL_ILLADR,

  ILL_ILLTRP,

  ILL_PRVOPC,

  ILL_PRVREG,

  ILL_COPROC,

  ILL_BADSTK

};


enum
{
  FPE_INTDIV = 1,

  FPE_INTOVF,

  FPE_FLTDIV,

  FPE_FLTOVF,

  FPE_FLTUND,

  FPE_FLTRES,

  FPE_FLTINV,

  FPE_FLTSUB

};


enum
{
  SEGV_MAPERR = 1,

  SEGV_ACCERR

};


enum
{
  BUS_ADRALN = 1,

  BUS_ADRERR,

  BUS_OBJERR,

  BUS_MCEERR_AR,

  BUS_MCEERR_AO

};




enum
{
  TRAP_BRKPT = 1,

  TRAP_TRACE

};




enum
{
  CLD_EXITED = 1,

  CLD_KILLED,

  CLD_DUMPED,

  CLD_TRAPPED,

  CLD_STOPPED,

  CLD_CONTINUED

};


enum
{
  POLL_IN = 1,

  POLL_OUT,

  POLL_MSG,

  POLL_ERR,

  POLL_PRI,

  POLL_HUP

};
# 313 "/usr/include/bits/siginfo.h" 3 4
typedef struct sigevent
  {
    sigval_t sigev_value;
    int sigev_signo;
    int sigev_notify;

    union
      {
 int _pad[((64 / sizeof (int)) - 4)];



 __pid_t _tid;

 struct
   {
     void (*_function) (sigval_t);
     pthread_attr_t *_attribute;
   } _sigev_thread;
      } _sigev_un;
  } sigevent_t;






enum
{
  SIGEV_SIGNAL = 0,

  SIGEV_NONE,

  SIGEV_THREAD,


  SIGEV_THREAD_ID = 4

};
# 81 "/usr/include/signal.h" 2 3 4




typedef void (*__sighandler_t) (int);




extern __sighandler_t __sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));

extern __sighandler_t sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));







extern __sighandler_t signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
# 114 "/usr/include/signal.h" 3 4





extern __sighandler_t bsd_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));






extern int kill (__pid_t __pid, int __sig) __attribute__ ((__nothrow__ , __leaf__));






extern int killpg (__pid_t __pgrp, int __sig) __attribute__ ((__nothrow__ , __leaf__));




extern int raise (int __sig) __attribute__ ((__nothrow__ , __leaf__));




extern __sighandler_t ssignal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
extern int gsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));




extern void psignal (int __sig, const char *__s);




extern void psiginfo (const siginfo_t *__pinfo, const char *__s);
# 170 "/usr/include/signal.h" 3 4
extern int sigpause (int __sig) __asm__ ("__xpg_sigpause");
# 189 "/usr/include/signal.h" 3 4
extern int sigblock (int __mask) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));


extern int sigsetmask (int __mask) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));


extern int siggetmask (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
# 204 "/usr/include/signal.h" 3 4
typedef __sighandler_t sighandler_t;




typedef __sighandler_t sig_t;





extern int sigemptyset (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigfillset (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigaddset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigdelset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigismember (const sigset_t *__set, int __signo)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int sigisemptyset (const sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int sigandset (sigset_t *__set, const sigset_t *__left,
        const sigset_t *__right) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3)));


extern int sigorset (sigset_t *__set, const sigset_t *__left,
       const sigset_t *__right) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3)));




# 1 "/usr/include/bits/sigaction.h" 1 3 4
# 24 "/usr/include/bits/sigaction.h" 3 4
struct sigaction
  {


    union
      {

 __sighandler_t sa_handler;

 void (*sa_sigaction) (int, siginfo_t *, void *);
      }
    __sigaction_handler;







    __sigset_t sa_mask;


    int sa_flags;


    void (*sa_restorer) (void);
  };
# 246 "/usr/include/signal.h" 2 3 4


extern int sigprocmask (int __how, const sigset_t *__restrict __set,
   sigset_t *__restrict __oset) __attribute__ ((__nothrow__ , __leaf__));






extern int sigsuspend (const sigset_t *__set) __attribute__ ((__nonnull__ (1)));


extern int sigaction (int __sig, const struct sigaction *__restrict __act,
        struct sigaction *__restrict __oact) __attribute__ ((__nothrow__ , __leaf__));


extern int sigpending (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int sigwait (const sigset_t *__restrict __set, int *__restrict __sig)
     __attribute__ ((__nonnull__ (1, 2)));






extern int sigwaitinfo (const sigset_t *__restrict __set,
   siginfo_t *__restrict __info) __attribute__ ((__nonnull__ (1)));






extern int sigtimedwait (const sigset_t *__restrict __set,
    siginfo_t *__restrict __info,
    const struct timespec *__restrict __timeout)
     __attribute__ ((__nonnull__ (1)));



extern int sigqueue (__pid_t __pid, int __sig, const union sigval __val)
     __attribute__ ((__nothrow__ , __leaf__));
# 303 "/usr/include/signal.h" 3 4
extern const char *const _sys_siglist[65];
extern const char *const sys_siglist[65];



# 1 "/usr/include/bits/sigcontext.h" 1 3 4
# 29 "/usr/include/bits/sigcontext.h" 3 4
struct _fpx_sw_bytes
{
  __uint32_t magic1;
  __uint32_t extended_size;
  __uint64_t xstate_bv;
  __uint32_t xstate_size;
  __uint32_t padding[7];
};

struct _fpreg
{
  unsigned short significand[4];
  unsigned short exponent;
};

struct _fpxreg
{
  unsigned short significand[4];
  unsigned short exponent;
  unsigned short padding[3];
};

struct _xmmreg
{
  __uint32_t element[4];
};
# 121 "/usr/include/bits/sigcontext.h" 3 4
struct _fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _fpxreg _st[8];
  struct _xmmreg _xmm[16];
  __uint32_t padding[24];
};

struct sigcontext
{
  __uint64_t r8;
  __uint64_t r9;
  __uint64_t r10;
  __uint64_t r11;
  __uint64_t r12;
  __uint64_t r13;
  __uint64_t r14;
  __uint64_t r15;
  __uint64_t rdi;
  __uint64_t rsi;
  __uint64_t rbp;
  __uint64_t rbx;
  __uint64_t rdx;
  __uint64_t rax;
  __uint64_t rcx;
  __uint64_t rsp;
  __uint64_t rip;
  __uint64_t eflags;
  unsigned short cs;
  unsigned short gs;
  unsigned short fs;
  unsigned short __pad0;
  __uint64_t err;
  __uint64_t trapno;
  __uint64_t oldmask;
  __uint64_t cr2;
  __extension__ union
    {
      struct _fpstate * fpstate;
      __uint64_t __fpstate_word;
    };
  __uint64_t __reserved1 [8];
};



struct _xsave_hdr
{
  __uint64_t xstate_bv;
  __uint64_t reserved1[2];
  __uint64_t reserved2[5];
};

struct _ymmh_state
{
  __uint32_t ymmh_space[64];
};

struct _xstate
{
  struct _fpstate fpstate;
  struct _xsave_hdr xstate_hdr;
  struct _ymmh_state ymmh;
};
# 309 "/usr/include/signal.h" 2 3 4


extern int sigreturn (struct sigcontext *__scp) __attribute__ ((__nothrow__ , __leaf__));






# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 1 3 4
# 319 "/usr/include/signal.h" 2 3 4




extern int siginterrupt (int __sig, int __interrupt) __attribute__ ((__nothrow__ , __leaf__));

# 1 "/usr/include/bits/sigstack.h" 1 3 4
# 25 "/usr/include/bits/sigstack.h" 3 4
struct sigstack
  {
    void *ss_sp;
    int ss_onstack;
  };



enum
{
  SS_ONSTACK = 1,

  SS_DISABLE

};
# 49 "/usr/include/bits/sigstack.h" 3 4
typedef struct sigaltstack
  {
    void *ss_sp;
    int ss_flags;
    size_t ss_size;
  } stack_t;
# 326 "/usr/include/signal.h" 2 3 4


# 1 "/usr/include/sys/ucontext.h" 1 3 4
# 22 "/usr/include/sys/ucontext.h" 3 4
# 1 "/usr/include/signal.h" 1 3 4
# 23 "/usr/include/sys/ucontext.h" 2 3 4
# 31 "/usr/include/sys/ucontext.h" 3 4
__extension__ typedef long long int greg_t;





typedef greg_t gregset_t[23];



enum
{
  REG_R8 = 0,

  REG_R9,

  REG_R10,

  REG_R11,

  REG_R12,

  REG_R13,

  REG_R14,

  REG_R15,

  REG_RDI,

  REG_RSI,

  REG_RBP,

  REG_RBX,

  REG_RDX,

  REG_RAX,

  REG_RCX,

  REG_RSP,

  REG_RIP,

  REG_EFL,

  REG_CSGSFS,

  REG_ERR,

  REG_TRAPNO,

  REG_OLDMASK,

  REG_CR2

};


struct _libc_fpxreg
{
  unsigned short int significand[4];
  unsigned short int exponent;
  unsigned short int padding[3];
};

struct _libc_xmmreg
{
  __uint32_t element[4];
};

struct _libc_fpstate
{

  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _libc_fpxreg _st[8];
  struct _libc_xmmreg _xmm[16];
  __uint32_t padding[24];
};


typedef struct _libc_fpstate *fpregset_t;


typedef struct
  {
    gregset_t gregs;

    fpregset_t fpregs;
    __extension__ unsigned long long __reserved1 [8];
} mcontext_t;


typedef struct ucontext
  {
    unsigned long int uc_flags;
    struct ucontext *uc_link;
    stack_t uc_stack;
    mcontext_t uc_mcontext;
    __sigset_t uc_sigmask;
    struct _libc_fpstate __fpregs_mem;
  } ucontext_t;
# 329 "/usr/include/signal.h" 2 3 4





extern int sigstack (struct sigstack *__ss, struct sigstack *__oss)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));



extern int sigaltstack (const struct sigaltstack *__restrict __ss,
   struct sigaltstack *__restrict __oss) __attribute__ ((__nothrow__ , __leaf__));







extern int sighold (int __sig) __attribute__ ((__nothrow__ , __leaf__));


extern int sigrelse (int __sig) __attribute__ ((__nothrow__ , __leaf__));


extern int sigignore (int __sig) __attribute__ ((__nothrow__ , __leaf__));


extern __sighandler_t sigset (int __sig, __sighandler_t __disp) __attribute__ ((__nothrow__ , __leaf__));






# 1 "/usr/include/bits/sigthread.h" 1 3 4
# 30 "/usr/include/bits/sigthread.h" 3 4
extern int pthread_sigmask (int __how,
       const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__ , __leaf__));


extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__ , __leaf__));



extern int pthread_sigqueue (pthread_t __threadid, int __signo,
        const union sigval __value) __attribute__ ((__nothrow__ , __leaf__));
# 365 "/usr/include/signal.h" 2 3 4






extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__ , __leaf__));

extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__ , __leaf__));




# 30 "/usr/include/sys/wait.h" 2 3 4





# 1 "/usr/include/bits/waitflags.h" 1 3 4
# 36 "/usr/include/sys/wait.h" 2 3 4
# 60 "/usr/include/sys/wait.h" 3 4
typedef union
  {
    union wait *__uptr;
    int *__iptr;
  } __WAIT_STATUS __attribute__ ((__transparent_union__));
# 77 "/usr/include/sys/wait.h" 3 4
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
# 78 "/usr/include/sys/wait.h" 2 3 4
# 99 "/usr/include/sys/wait.h" 3 4
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
# 113 "/usr/include/sys/wait.h" 3 4
extern __pid_t wait (__WAIT_STATUS __stat_loc);
# 136 "/usr/include/sys/wait.h" 3 4
extern __pid_t waitpid (__pid_t __pid, int *__stat_loc, int __options);
# 146 "/usr/include/sys/wait.h" 3 4
# 1 "/usr/include/bits/siginfo.h" 1 3 4
# 24 "/usr/include/bits/siginfo.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 25 "/usr/include/bits/siginfo.h" 2 3 4
# 147 "/usr/include/sys/wait.h" 2 3 4
# 159 "/usr/include/sys/wait.h" 3 4
extern int waitid (idtype_t __idtype, __id_t __id, siginfo_t *__infop,
     int __options);





struct rusage;






extern __pid_t wait3 (__WAIT_STATUS __stat_loc, int __options,
        struct rusage * __usage) __attribute__ ((__nothrow__));




extern __pid_t wait4 (__pid_t __pid, __WAIT_STATUS __stat_loc, int __options,
        struct rusage *__usage) __attribute__ ((__nothrow__));




# 183 "/usr/include/apr-1/apr.h" 2
# 193 "/usr/include/apr-1/apr.h"
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
# 194 "/usr/include/apr-1/apr.h" 2
# 309 "/usr/include/apr-1/apr.h"
typedef unsigned char apr_byte_t;

typedef short apr_int16_t;
typedef unsigned short apr_uint16_t;

typedef int apr_int32_t;
typedef unsigned int apr_uint32_t;
# 352 "/usr/include/apr-1/apr.h"
 typedef long apr_int64_t;
 typedef unsigned long apr_uint64_t;


typedef size_t apr_size_t;
typedef ssize_t apr_ssize_t;
typedef off_t apr_off_t;
typedef socklen_t apr_socklen_t;
typedef ino_t apr_ino_t;


typedef apr_uint64_t apr_uintptr_t;
# 18 "core.c" 2
# 1 "/usr/include/apr-1/apr_strings.h" 1
# 48 "/usr/include/apr-1/apr_strings.h"
# 1 "/usr/include/apr-1/apr.h" 1
# 49 "/usr/include/apr-1/apr_strings.h" 2
# 1 "/usr/include/apr-1/apr_errno.h" 1
# 28 "/usr/include/apr-1/apr_errno.h"
# 1 "/usr/include/errno.h" 1 3 4
# 31 "/usr/include/errno.h" 3 4




# 1 "/usr/include/bits/errno.h" 1 3 4
# 24 "/usr/include/bits/errno.h" 3 4
# 1 "/usr/include/linux/errno.h" 1 3 4
# 1 "/usr/include/asm/errno.h" 1 3 4
# 1 "/usr/include/asm-generic/errno.h" 1 3 4



# 1 "/usr/include/asm-generic/errno-base.h" 1 3 4
# 5 "/usr/include/asm-generic/errno.h" 2 3 4
# 1 "/usr/include/asm/errno.h" 2 3 4
# 1 "/usr/include/linux/errno.h" 2 3 4
# 25 "/usr/include/bits/errno.h" 2 3 4
# 50 "/usr/include/bits/errno.h" 3 4
extern int *__errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 36 "/usr/include/errno.h" 2 3 4
# 54 "/usr/include/errno.h" 3 4
extern char *program_invocation_name, *program_invocation_short_name;




# 68 "/usr/include/errno.h" 3 4
typedef int error_t;
# 29 "/usr/include/apr-1/apr_errno.h" 2
# 44 "/usr/include/apr-1/apr_errno.h"
typedef int apr_status_t;







char * apr_strerror(apr_status_t statcode, char *buf,
                                 apr_size_t bufsize);
# 50 "/usr/include/apr-1/apr_strings.h" 2
# 1 "/usr/include/apr-1/apr_pools.h" 1
# 45 "/usr/include/apr-1/apr_pools.h"
# 1 "/usr/include/apr-1/apr_general.h" 1
# 29 "/usr/include/apr-1/apr_general.h"
# 1 "/usr/include/apr-1/apr_pools.h" 1
# 30 "/usr/include/apr-1/apr_general.h" 2
# 68 "/usr/include/apr-1/apr_general.h"
typedef int apr_signum_t;
# 177 "/usr/include/apr-1/apr_general.h"
apr_status_t apr_initialize(void);
# 191 "/usr/include/apr-1/apr_general.h"
apr_status_t apr_app_initialize(int *argc,
                                             char const * const * *argv,
                                             char const * const * *env);
# 205 "/usr/include/apr-1/apr_general.h"
void apr_terminate(void);
# 216 "/usr/include/apr-1/apr_general.h"
void apr_terminate2(void);
# 233 "/usr/include/apr-1/apr_general.h"
apr_status_t apr_generate_random_bytes(unsigned char * buf,
                                                    apr_size_t length);
# 46 "/usr/include/apr-1/apr_pools.h" 2

# 1 "/usr/include/apr-1/apr_want.h" 1
# 63 "/usr/include/apr-1/apr_want.h"
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
# 164 "/usr/include/string.h" 2 3 4


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

# 64 "/usr/include/apr-1/apr_want.h" 2
# 48 "/usr/include/apr-1/apr_pools.h" 2
# 60 "/usr/include/apr-1/apr_pools.h"
typedef struct apr_pool_t apr_pool_t;
# 148 "/usr/include/apr-1/apr_pools.h"
typedef int (*apr_abortfunc_t)(int retcode);
# 164 "/usr/include/apr-1/apr_pools.h"
apr_status_t apr_pool_initialize(void);







void apr_pool_terminate(void);






# 1 "/usr/include/apr-1/apr_allocator.h" 1
# 28 "/usr/include/apr-1/apr_allocator.h"
# 1 "/usr/include/apr-1/apr_want.h" 1
# 29 "/usr/include/apr-1/apr_allocator.h" 2
# 41 "/usr/include/apr-1/apr_allocator.h"
typedef struct apr_allocator_t apr_allocator_t;

typedef struct apr_memnode_t apr_memnode_t;
# 54 "/usr/include/apr-1/apr_allocator.h"
struct apr_memnode_t {
    apr_memnode_t *next;
    apr_memnode_t **ref;
    apr_uint32_t index;
    apr_uint32_t free_index;
    char *first_avail;
    char *endp;
};
# 74 "/usr/include/apr-1/apr_allocator.h"
apr_status_t apr_allocator_create(apr_allocator_t **allocator)
                          __attribute__((nonnull(1)));







void apr_allocator_destroy(apr_allocator_t *allocator)
                  __attribute__((nonnull(1)));







apr_memnode_t * apr_allocator_alloc(apr_allocator_t *allocator,
                                                 apr_size_t size)
                             __attribute__((nonnull(1)));
# 103 "/usr/include/apr-1/apr_allocator.h"
void apr_allocator_free(apr_allocator_t *allocator,
                                     apr_memnode_t *memnode)
                  __attribute__((nonnull(1,2)));
# 120 "/usr/include/apr-1/apr_allocator.h"
void apr_allocator_owner_set(apr_allocator_t *allocator,
                                          apr_pool_t *pool)
                  __attribute__((nonnull(1)));





apr_pool_t * apr_allocator_owner_get(apr_allocator_t *allocator)
                          __attribute__((nonnull(1)));







void apr_allocator_max_free_set(apr_allocator_t *allocator,
                                             apr_size_t size)
                  __attribute__((nonnull(1)));

# 1 "/usr/include/apr-1/apr_thread_mutex.h" 1
# 41 "/usr/include/apr-1/apr_thread_mutex.h"
typedef struct apr_thread_mutex_t apr_thread_mutex_t;
# 65 "/usr/include/apr-1/apr_thread_mutex.h"
apr_status_t apr_thread_mutex_create(apr_thread_mutex_t **mutex,
                                                  unsigned int flags,
                                                  apr_pool_t *pool);





apr_status_t apr_thread_mutex_lock(apr_thread_mutex_t *mutex);
# 82 "/usr/include/apr-1/apr_thread_mutex.h"
apr_status_t apr_thread_mutex_trylock(apr_thread_mutex_t *mutex);





apr_status_t apr_thread_mutex_unlock(apr_thread_mutex_t *mutex);





apr_status_t apr_thread_mutex_destroy(apr_thread_mutex_t *mutex);





apr_pool_t * apr_thread_mutex_pool_get (const apr_thread_mutex_t *thethread_mutex);
# 142 "/usr/include/apr-1/apr_allocator.h" 2







void apr_allocator_mutex_set(apr_allocator_t *allocator,
                                          apr_thread_mutex_t *mutex)
                  __attribute__((nonnull(1)));





apr_thread_mutex_t * apr_allocator_mutex_get(
                                          apr_allocator_t *allocator)
                                  __attribute__((nonnull(1)));
# 180 "/usr/include/apr-1/apr_pools.h" 2
# 196 "/usr/include/apr-1/apr_pools.h"
apr_status_t apr_pool_create_ex(apr_pool_t **newpool,
                                             apr_pool_t *parent,
                                             apr_abortfunc_t abort_fn,
                                             apr_allocator_t *allocator)
                          __attribute__((nonnull(1)));





apr_status_t apr_pool_create_core_ex(apr_pool_t **newpool,
                                                  apr_abortfunc_t abort_fn,
                                                  apr_allocator_t *allocator);
# 226 "/usr/include/apr-1/apr_pools.h"
apr_status_t apr_pool_create_unmanaged_ex(apr_pool_t **newpool,
                                                   apr_abortfunc_t abort_fn,
                                                   apr_allocator_t *allocator)
                          __attribute__((nonnull(1)));
# 247 "/usr/include/apr-1/apr_pools.h"
apr_status_t apr_pool_create_ex_debug(apr_pool_t **newpool,
                                                   apr_pool_t *parent,
                                                   apr_abortfunc_t abort_fn,
                                                   apr_allocator_t *allocator,
                                                   const char *file_line)
                          __attribute__((nonnull(1)));
# 264 "/usr/include/apr-1/apr_pools.h"
apr_status_t apr_pool_create_core_ex_debug(apr_pool_t **newpool,
                                                   apr_abortfunc_t abort_fn,
                                                   apr_allocator_t *allocator,
                                                   const char *file_line);
# 284 "/usr/include/apr-1/apr_pools.h"
apr_status_t apr_pool_create_unmanaged_ex_debug(apr_pool_t **newpool,
                                                   apr_abortfunc_t abort_fn,
                                                   apr_allocator_t *allocator,
                                                   const char *file_line)
                          __attribute__((nonnull(1)));
# 354 "/usr/include/apr-1/apr_pools.h"
apr_allocator_t * apr_pool_allocator_get(apr_pool_t *pool)
                               __attribute__((nonnull(1)));
# 365 "/usr/include/apr-1/apr_pools.h"
void apr_pool_clear(apr_pool_t *p) __attribute__((nonnull(1)));
# 380 "/usr/include/apr-1/apr_pools.h"
void apr_pool_clear_debug(apr_pool_t *p,
                                       const char *file_line)
                  __attribute__((nonnull(1)));
# 395 "/usr/include/apr-1/apr_pools.h"
void apr_pool_destroy(apr_pool_t *p) __attribute__((nonnull(1)));
# 410 "/usr/include/apr-1/apr_pools.h"
void apr_pool_destroy_debug(apr_pool_t *p,
                                         const char *file_line)
                  __attribute__((nonnull(1)));
# 430 "/usr/include/apr-1/apr_pools.h"
void * apr_palloc(apr_pool_t *p, apr_size_t size)

                    __attribute__((alloc_size(2)))

                    __attribute__((nonnull(1)));
# 444 "/usr/include/apr-1/apr_pools.h"
void * apr_palloc_debug(apr_pool_t *p, apr_size_t size,
                                     const char *file_line)

                    __attribute__((alloc_size(2)))

                    __attribute__((nonnull(1)));
# 476 "/usr/include/apr-1/apr_pools.h"
void * apr_pcalloc_debug(apr_pool_t *p, apr_size_t size,
                                      const char *file_line)
                    __attribute__((nonnull(1)));
# 498 "/usr/include/apr-1/apr_pools.h"
void apr_pool_abort_set(apr_abortfunc_t abortfunc,
                                     apr_pool_t *pool)
                  __attribute__((nonnull(2)));






apr_abortfunc_t apr_pool_abort_get(apr_pool_t *pool)
                             __attribute__((nonnull(1)));






apr_pool_t * apr_pool_parent_get(apr_pool_t *pool)
                          __attribute__((nonnull(1)));
# 529 "/usr/include/apr-1/apr_pools.h"
int apr_pool_is_ancestor(apr_pool_t *a, apr_pool_t *b);






void apr_pool_tag(apr_pool_t *pool, const char *tag)
                  __attribute__((nonnull(1)));
# 563 "/usr/include/apr-1/apr_pools.h"
apr_status_t apr_pool_userdata_set(const void *data,
                                                const char *key,
                                                apr_status_t (*cleanup)(void *),
                                                apr_pool_t *pool)
                          __attribute__((nonnull(2,4)));
# 588 "/usr/include/apr-1/apr_pools.h"
apr_status_t apr_pool_userdata_setn(
                                const void *data, const char *key,
                                apr_status_t (*cleanup)(void *),
                                apr_pool_t *pool)
                          __attribute__((nonnull(2,4)));







apr_status_t apr_pool_userdata_get(void **data, const char *key,
                                                apr_pool_t *pool)
                          __attribute__((nonnull(1,2,3)));
# 628 "/usr/include/apr-1/apr_pools.h"
void apr_pool_cleanup_register(
                            apr_pool_t *p, const void *data,
                            apr_status_t (*plain_cleanup)(void *),
                            apr_status_t (*child_cleanup)(void *))
                  __attribute__((nonnull(3,4)));
# 646 "/usr/include/apr-1/apr_pools.h"
void apr_pool_pre_cleanup_register(
                            apr_pool_t *p, const void *data,
                            apr_status_t (*plain_cleanup)(void *))
                  __attribute__((nonnull(3)));
# 663 "/usr/include/apr-1/apr_pools.h"
void apr_pool_cleanup_kill(apr_pool_t *p, const void *data,
                                        apr_status_t (*cleanup)(void *))
                  __attribute__((nonnull(3)));
# 679 "/usr/include/apr-1/apr_pools.h"
void apr_pool_child_cleanup_set(
                        apr_pool_t *p, const void *data,
                        apr_status_t (*plain_cleanup)(void *),
                        apr_status_t (*child_cleanup)(void *))
                  __attribute__((nonnull(3,4)));
# 696 "/usr/include/apr-1/apr_pools.h"
apr_status_t apr_pool_cleanup_run(apr_pool_t *p, void *data,
                                               apr_status_t (*cleanup)(void *))
                          __attribute__((nonnull(3)));
# 707 "/usr/include/apr-1/apr_pools.h"
apr_status_t apr_pool_cleanup_null(void *data);







void apr_pool_cleanup_for_exec(void);
# 51 "/usr/include/apr-1/apr_strings.h" 2

# 1 "/usr/include/apr-1/apr_want.h" 1
# 53 "/usr/include/apr-1/apr_strings.h" 2


# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 98 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 56 "/usr/include/apr-1/apr_strings.h" 2
# 76 "/usr/include/apr-1/apr_strings.h"
int apr_strnatcmp(char const *a, char const *b);
# 87 "/usr/include/apr-1/apr_strings.h"
int apr_strnatcasecmp(char const *a, char const *b);







char * apr_pstrdup(apr_pool_t *p, const char *s);
# 109 "/usr/include/apr-1/apr_strings.h"
char * apr_pstrmemdup(apr_pool_t *p, const char *s, apr_size_t n)

    __attribute__((alloc_size(3)))

    ;
# 125 "/usr/include/apr-1/apr_strings.h"
char * apr_pstrndup(apr_pool_t *p, const char *s, apr_size_t n);
# 135 "/usr/include/apr-1/apr_strings.h"
void * apr_pmemdup(apr_pool_t *p, const void *m, apr_size_t n)

    __attribute__((alloc_size(3)))

    ;







char * apr_pstrcat(apr_pool_t *p, ...)

    __attribute__((sentinel))

    ;
# 161 "/usr/include/apr-1/apr_strings.h"
char * apr_pstrcatv(apr_pool_t *p, const struct iovec *vec,
                                 apr_size_t nvec, apr_size_t *nbytes);
# 172 "/usr/include/apr-1/apr_strings.h"
char * apr_pvsprintf(apr_pool_t *p, const char *fmt, va_list ap);
# 182 "/usr/include/apr-1/apr_strings.h"
char * apr_psprintf(apr_pool_t *p, const char *fmt, ...)
        __attribute__((format(printf,2,3)));
# 207 "/usr/include/apr-1/apr_strings.h"
char * apr_cpystrn(char *dst, const char *src,
                                apr_size_t dst_size);
# 217 "/usr/include/apr-1/apr_strings.h"
char * apr_collapse_spaces(char *dest, const char *src);
# 226 "/usr/include/apr-1/apr_strings.h"
apr_status_t apr_tokenize_to_argv(const char *arg_str,
                                               char ***argv_out,
                                               apr_pool_t *token_context);
# 247 "/usr/include/apr-1/apr_strings.h"
char * apr_strtok(char *str, const char *sep, char **last);
# 279 "/usr/include/apr-1/apr_strings.h"
int apr_snprintf(char *buf, apr_size_t len,
                                     const char *format, ...)
        __attribute__((format(printf,3,4)));
# 291 "/usr/include/apr-1/apr_strings.h"
int apr_vsnprintf(char *buf, apr_size_t len, const char *format,
                               va_list ap);
# 301 "/usr/include/apr-1/apr_strings.h"
char * apr_itoa(apr_pool_t *p, int n);







char * apr_ltoa(apr_pool_t *p, long n);







char * apr_off_t_toa(apr_pool_t *p, apr_off_t n);
# 335 "/usr/include/apr-1/apr_strings.h"
apr_status_t apr_strtoff(apr_off_t *offset, const char *buf,
                                      char **end, int base);
# 353 "/usr/include/apr-1/apr_strings.h"
apr_int64_t apr_strtoi64(const char *buf, char **end, int base);
# 362 "/usr/include/apr-1/apr_strings.h"
apr_int64_t apr_atoi64(const char *buf);
# 372 "/usr/include/apr-1/apr_strings.h"
char * apr_strfsize(apr_off_t size, char *buf);
# 19 "core.c" 2
# 1 "/usr/include/apr-1/apr_lib.h" 1
# 32 "/usr/include/apr-1/apr_lib.h"
# 1 "/usr/include/ctype.h" 1 3 4
# 28 "/usr/include/ctype.h" 3 4

# 46 "/usr/include/ctype.h" 3 4
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

# 33 "/usr/include/apr-1/apr_lib.h" 2
# 59 "/usr/include/apr-1/apr_lib.h"
typedef struct apr_vformatter_buff_t apr_vformatter_buff_t;




struct apr_vformatter_buff_t {

    char *curpos;

    char *endpos;
};
# 84 "/usr/include/apr-1/apr_lib.h"
const char * apr_filepath_name_get(const char *pathname);
# 174 "/usr/include/apr-1/apr_lib.h"
int apr_vformatter(int (*flush_func)(apr_vformatter_buff_t *b),
           apr_vformatter_buff_t *c, const char *fmt,
           va_list ap);
# 189 "/usr/include/apr-1/apr_lib.h"
apr_status_t apr_password_get(const char *prompt, char *pwbuf,
                                           apr_size_t *bufsize);
# 20 "core.c" 2
# 1 "/usr/include/apr-1/apr_fnmatch.h" 1
# 46 "/usr/include/apr-1/apr_fnmatch.h"
# 1 "/usr/include/apr-1/apr_tables.h" 1
# 56 "/usr/include/apr-1/apr_tables.h"
typedef struct apr_table_t apr_table_t;


typedef struct apr_array_header_t apr_array_header_t;


struct apr_array_header_t {

    apr_pool_t *pool;

    int elt_size;

    int nelts;

    int nalloc;

    char *elts;
};




typedef struct apr_table_entry_t apr_table_entry_t;


struct apr_table_entry_t {

    char *key;



    char *val;


    apr_uint32_t key_checksum;
};






const apr_array_header_t * apr_table_elts(const apr_table_t *t);






int apr_is_empty_table(const apr_table_t *t);






int apr_is_empty_array(const apr_array_header_t *a);
# 121 "/usr/include/apr-1/apr_tables.h"
apr_array_header_t * apr_array_make(apr_pool_t *p,
                                                 int nelts, int elt_size);
# 131 "/usr/include/apr-1/apr_tables.h"
void * apr_array_push(apr_array_header_t *arr);
# 158 "/usr/include/apr-1/apr_tables.h"
void * apr_array_pop(apr_array_header_t *arr);







void apr_array_clear(apr_array_header_t *arr);







void apr_array_cat(apr_array_header_t *dst,
           const apr_array_header_t *src);
# 186 "/usr/include/apr-1/apr_tables.h"
apr_array_header_t * apr_array_copy(apr_pool_t *p,
                                      const apr_array_header_t *arr);
# 196 "/usr/include/apr-1/apr_tables.h"
apr_array_header_t * apr_array_copy_hdr(apr_pool_t *p,
                                      const apr_array_header_t *arr);
# 206 "/usr/include/apr-1/apr_tables.h"
apr_array_header_t * apr_array_append(apr_pool_t *p,
                                      const apr_array_header_t *first,
                                      const apr_array_header_t *second);
# 221 "/usr/include/apr-1/apr_tables.h"
char * apr_array_pstrcat(apr_pool_t *p,
          const apr_array_header_t *arr,
          const char sep);
# 232 "/usr/include/apr-1/apr_tables.h"
apr_table_t * apr_table_make(apr_pool_t *p, int nelts);
# 241 "/usr/include/apr-1/apr_tables.h"
apr_table_t * apr_table_copy(apr_pool_t *p,
                                          const apr_table_t *t);
# 252 "/usr/include/apr-1/apr_tables.h"
apr_table_t * apr_table_clone(apr_pool_t *p,
                                           const apr_table_t *t);





void apr_table_clear(apr_table_t *t);
# 268 "/usr/include/apr-1/apr_tables.h"
const char * apr_table_get(const apr_table_t *t, const char *key);
# 279 "/usr/include/apr-1/apr_tables.h"
const char * apr_table_getm(apr_pool_t *p, const apr_table_t *t,
                                         const char *key);
# 291 "/usr/include/apr-1/apr_tables.h"
void apr_table_set(apr_table_t *t, const char *key,
                                const char *val);
# 304 "/usr/include/apr-1/apr_tables.h"
void apr_table_setn(apr_table_t *t, const char *key,
                                 const char *val);






void apr_table_unset(apr_table_t *t, const char *key);
# 323 "/usr/include/apr-1/apr_tables.h"
void apr_table_merge(apr_table_t *t, const char *key,
                                  const char *val);
# 335 "/usr/include/apr-1/apr_tables.h"
void apr_table_mergen(apr_table_t *t, const char *key,
                                   const char *val);
# 347 "/usr/include/apr-1/apr_tables.h"
void apr_table_add(apr_table_t *t, const char *key,
                                const char *val);
# 360 "/usr/include/apr-1/apr_tables.h"
void apr_table_addn(apr_table_t *t, const char *key,
                                 const char *val);
# 370 "/usr/include/apr-1/apr_tables.h"
apr_table_t * apr_table_overlay(apr_pool_t *p,
                                             const apr_table_t *overlay,
                                             const apr_table_t *base);
# 384 "/usr/include/apr-1/apr_tables.h"
typedef int (apr_table_do_callback_fn_t)(void *rec, const char *key,
                                                    const char *value);
# 406 "/usr/include/apr-1/apr_tables.h"
int apr_table_do(apr_table_do_callback_fn_t *comp,
                                     void *rec, const apr_table_t *t, ...)

    __attribute__((sentinel))

    ;
# 432 "/usr/include/apr-1/apr_tables.h"
int apr_table_vdo(apr_table_do_callback_fn_t *comp,
                               void *rec, const apr_table_t *t, va_list vp);
# 478 "/usr/include/apr-1/apr_tables.h"
void apr_table_overlap(apr_table_t *a, const apr_table_t *b,
                                     unsigned flags);
# 491 "/usr/include/apr-1/apr_tables.h"
void apr_table_compress(apr_table_t *t, unsigned flags);
# 47 "/usr/include/apr-1/apr_fnmatch.h" 2
# 120 "/usr/include/apr-1/apr_fnmatch.h"
apr_status_t apr_fnmatch(const char *pattern,
                                      const char *strings, int flags);






int apr_fnmatch_test(const char *pattern);
# 143 "/usr/include/apr-1/apr_fnmatch.h"
apr_status_t apr_match_glob(const char *dir_pattern,
                                         apr_array_header_t **result,
                                         apr_pool_t *p);
# 21 "core.c" 2
# 1 "/usr/include/apr-1/apr_hash.h" 1
# 52 "/usr/include/apr-1/apr_hash.h"
typedef struct apr_hash_t apr_hash_t;




typedef struct apr_hash_index_t apr_hash_index_t;







typedef unsigned int (*apr_hashfunc_t)(const char *key, apr_ssize_t *klen);




unsigned int apr_hashfunc_default(const char *key,
                                                      apr_ssize_t *klen);






apr_hash_t * apr_hash_make(apr_pool_t *pool);







apr_hash_t * apr_hash_make_custom(apr_pool_t *pool,
                                               apr_hashfunc_t hash_func);
# 96 "/usr/include/apr-1/apr_hash.h"
apr_hash_t * apr_hash_copy(apr_pool_t *pool,
                                        const apr_hash_t *h);
# 107 "/usr/include/apr-1/apr_hash.h"
void apr_hash_set(apr_hash_t *ht, const void *key,
                               apr_ssize_t klen, const void *val);
# 117 "/usr/include/apr-1/apr_hash.h"
void * apr_hash_get(apr_hash_t *ht, const void *key,
                                 apr_ssize_t klen);
# 147 "/usr/include/apr-1/apr_hash.h"
apr_hash_index_t * apr_hash_first(apr_pool_t *p, apr_hash_t *ht);







apr_hash_index_t * apr_hash_next(apr_hash_index_t *hi);
# 166 "/usr/include/apr-1/apr_hash.h"
void apr_hash_this(apr_hash_index_t *hi, const void **key,
                                apr_ssize_t *klen, void **val);






const void* apr_hash_this_key(apr_hash_index_t *hi);






apr_ssize_t apr_hash_this_key_len(apr_hash_index_t *hi);






void* apr_hash_this_val(apr_hash_index_t *hi);






unsigned int apr_hash_count(apr_hash_t *ht);





void apr_hash_clear(apr_hash_t *ht);
# 212 "/usr/include/apr-1/apr_hash.h"
apr_hash_t * apr_hash_overlay(apr_pool_t *p,
                                           const apr_hash_t *overlay,
                                           const apr_hash_t *base);
# 230 "/usr/include/apr-1/apr_hash.h"
apr_hash_t * apr_hash_merge(apr_pool_t *p,
                                         const apr_hash_t *h1,
                                         const apr_hash_t *h2,
                                         void * (*merger)(apr_pool_t *p,
                                                     const void *key,
                                                     apr_ssize_t klen,
                                                     const void *h1_val,
                                                     const void *h2_val,
                                                     const void *data),
                                         const void *data);
# 252 "/usr/include/apr-1/apr_hash.h"
typedef int (apr_hash_do_callback_fn_t)(void *rec, const void *key,
                                                   apr_ssize_t klen,
                                                   const void *value);
# 268 "/usr/include/apr-1/apr_hash.h"
int apr_hash_do(apr_hash_do_callback_fn_t *comp,
                             void *rec, const apr_hash_t *ht);




apr_pool_t * apr_hash_pool_get (const apr_hash_t *thehash);
# 22 "core.c" 2
# 1 "/usr/include/apr-1/apr_thread_proc.h" 1
# 26 "/usr/include/apr-1/apr_thread_proc.h"
# 1 "/usr/include/apr-1/apr_file_io.h" 1
# 27 "/usr/include/apr-1/apr_file_io.h"
# 1 "/usr/include/apr-1/apr_time.h" 1
# 40 "/usr/include/apr-1/apr_time.h"
 extern const char apr_month_snames[12][4];

 extern const char apr_day_snames[7][4];



typedef apr_int64_t apr_time_t;
# 56 "/usr/include/apr-1/apr_time.h"
typedef apr_int64_t apr_interval_time_t;

typedef apr_int32_t apr_short_interval_time_t;
# 88 "/usr/include/apr-1/apr_time.h"
apr_time_t apr_time_now(void);


typedef struct apr_time_exp_t apr_time_exp_t;






struct apr_time_exp_t {

    apr_int32_t tm_usec;

    apr_int32_t tm_sec;

    apr_int32_t tm_min;

    apr_int32_t tm_hour;

    apr_int32_t tm_mday;

    apr_int32_t tm_mon;

    apr_int32_t tm_year;

    apr_int32_t tm_wday;

    apr_int32_t tm_yday;

    apr_int32_t tm_isdst;

    apr_int32_t tm_gmtoff;
};






apr_status_t apr_time_ansi_put(apr_time_t *result,
                                                    time_t input);
# 138 "/usr/include/apr-1/apr_time.h"
apr_status_t apr_time_exp_tz(apr_time_exp_t *result,
                                          apr_time_t input,
                                          apr_int32_t offs);






apr_status_t apr_time_exp_gmt(apr_time_exp_t *result,
                                           apr_time_t input);






apr_status_t apr_time_exp_lt(apr_time_exp_t *result,
                                          apr_time_t input);







apr_status_t apr_time_exp_get(apr_time_t *result,
                                           apr_time_exp_t *input);







apr_status_t apr_time_exp_gmt_get(apr_time_t *result,
                                               apr_time_exp_t *input);






void apr_sleep(apr_interval_time_t t);
# 193 "/usr/include/apr-1/apr_time.h"
apr_status_t apr_rfc822_date(char *date_str, apr_time_t t);
# 207 "/usr/include/apr-1/apr_time.h"
apr_status_t apr_ctime(char *date_str, apr_time_t t);
# 217 "/usr/include/apr-1/apr_time.h"
apr_status_t apr_strftime(char *s, apr_size_t *retsize,
                                       apr_size_t max, const char *format,
                                       apr_time_exp_t *tm);







void apr_time_clock_hires(apr_pool_t *p);
# 28 "/usr/include/apr-1/apr_file_io.h" 2

# 1 "/usr/include/apr-1/apr_file_info.h" 1
# 26 "/usr/include/apr-1/apr_file_info.h"
# 1 "/usr/include/apr-1/apr_user.h" 1
# 45 "/usr/include/apr-1/apr_user.h"
typedef uid_t apr_uid_t;
# 54 "/usr/include/apr-1/apr_user.h"
typedef gid_t apr_gid_t;
# 66 "/usr/include/apr-1/apr_user.h"
apr_status_t apr_uid_current(apr_uid_t *userid,
                                          apr_gid_t *groupid,
                                          apr_pool_t *p);
# 77 "/usr/include/apr-1/apr_user.h"
apr_status_t apr_uid_name_get(char **username, apr_uid_t userid,
                                           apr_pool_t *p);
# 88 "/usr/include/apr-1/apr_user.h"
apr_status_t apr_uid_get(apr_uid_t *userid, apr_gid_t *groupid,
                                      const char *username, apr_pool_t *p);
# 98 "/usr/include/apr-1/apr_user.h"
apr_status_t apr_uid_homepath_get(char **dirname,
                                               const char *username,
                                               apr_pool_t *p);
# 123 "/usr/include/apr-1/apr_user.h"
apr_status_t apr_gid_name_get(char **groupname,
                                             apr_gid_t groupid, apr_pool_t *p);
# 133 "/usr/include/apr-1/apr_user.h"
apr_status_t apr_gid_get(apr_gid_t *groupid,
                                      const char *groupname, apr_pool_t *p);
# 27 "/usr/include/apr-1/apr_file_info.h" 2
# 62 "/usr/include/apr-1/apr_file_info.h"
typedef enum {
    APR_NOFILE = 0,
    APR_REG,
    APR_DIR,
    APR_CHR,
    APR_BLK,
    APR_PIPE,
    APR_LNK,
    APR_SOCK,
    APR_UNKFILE = 127
} apr_filetype_e;
# 121 "/usr/include/apr-1/apr_file_info.h"
typedef struct apr_dir_t apr_dir_t;



typedef apr_int32_t apr_fileperms_t;
# 135 "/usr/include/apr-1/apr_file_info.h"
typedef dev_t apr_dev_t;







typedef struct apr_finfo_t apr_finfo_t;
# 174 "/usr/include/apr-1/apr_file_info.h"
struct apr_finfo_t {

    apr_pool_t *pool;


    apr_int32_t valid;

    apr_fileperms_t protection;




    apr_filetype_e filetype;

    apr_uid_t user;

    apr_gid_t group;

    apr_ino_t inode;

    apr_dev_t device;

    apr_int32_t nlink;

    apr_off_t size;

    apr_off_t csize;

    apr_time_t atime;

    apr_time_t mtime;

    apr_time_t ctime;

    const char *fname;

    const char *name;

    struct apr_file_t *filehand;
};
# 229 "/usr/include/apr-1/apr_file_info.h"
apr_status_t apr_stat(apr_finfo_t *finfo, const char *fname,
                                   apr_int32_t wanted, apr_pool_t *pool);
# 244 "/usr/include/apr-1/apr_file_info.h"
apr_status_t apr_dir_open(apr_dir_t **new_dir,
                                       const char *dirname,
                                       apr_pool_t *pool);





apr_status_t apr_dir_close(apr_dir_t *thedir);
# 267 "/usr/include/apr-1/apr_file_info.h"
apr_status_t apr_dir_read(apr_finfo_t *finfo, apr_int32_t wanted,
                                       apr_dir_t *thedir);





apr_status_t apr_dir_rewind(apr_dir_t *thedir);
# 336 "/usr/include/apr-1/apr_file_info.h"
apr_status_t apr_filepath_root(const char **rootpath,
                                            const char **filepath,
                                            apr_int32_t flags,
                                            apr_pool_t *p);
# 354 "/usr/include/apr-1/apr_file_info.h"
apr_status_t apr_filepath_merge(char **newpath,
                                             const char *rootpath,
                                             const char *addpath,
                                             apr_int32_t flags,
                                             apr_pool_t *p);
# 369 "/usr/include/apr-1/apr_file_info.h"
apr_status_t apr_filepath_list_split(apr_array_header_t **pathelts,
                                                  const char *liststr,
                                                  apr_pool_t *p);
# 382 "/usr/include/apr-1/apr_file_info.h"
apr_status_t apr_filepath_list_merge(char **liststr,
                                                  apr_array_header_t *pathelts,
                                                  apr_pool_t *p);
# 393 "/usr/include/apr-1/apr_file_info.h"
apr_status_t apr_filepath_get(char **path, apr_int32_t flags,
                                           apr_pool_t *p);






apr_status_t apr_filepath_set(const char *path, apr_pool_t *p);
# 419 "/usr/include/apr-1/apr_file_info.h"
apr_status_t apr_filepath_encoding(int *style, apr_pool_t *p);
# 30 "/usr/include/apr-1/apr_file_io.h" 2
# 1 "/usr/include/apr-1/apr_inherit.h" 1
# 31 "/usr/include/apr-1/apr_file_io.h" 2



# 1 "/usr/include/apr-1/apr_want.h" 1
# 74 "/usr/include/apr-1/apr_want.h"
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
# 108 "/usr/include/stdio.h" 3 4


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

# 75 "/usr/include/apr-1/apr_want.h" 2
# 35 "/usr/include/apr-1/apr_file_io.h" 2
# 180 "/usr/include/apr-1/apr_file_io.h"
typedef apr_uint32_t apr_fileattrs_t;


typedef int apr_seek_where_t;




typedef struct apr_file_t apr_file_t;
# 250 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_open(apr_file_t **newf, const char *fname,
                                        apr_int32_t flag, apr_fileperms_t perm,
                                        apr_pool_t *pool);





apr_status_t apr_file_close(apr_file_t *file);
# 267 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_remove(const char *path, apr_pool_t *pool);
# 278 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_rename(const char *from_path,
                                          const char *to_path,
                                          apr_pool_t *pool);







apr_status_t apr_file_link(const char *from_path,
                                          const char *to_path);
# 303 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_copy(const char *from_path,
                                        const char *to_path,
                                        apr_fileperms_t perms,
                                        apr_pool_t *pool);
# 319 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_append(const char *from_path,
                                          const char *to_path,
                                          apr_fileperms_t perms,
                                          apr_pool_t *pool);






apr_status_t apr_file_eof(apr_file_t *fptr);
# 346 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_open_stderr(apr_file_t **thefile,
                                               apr_pool_t *pool);
# 356 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_open_stdout(apr_file_t **thefile,
                                               apr_pool_t *pool);
# 366 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_open_stdin(apr_file_t **thefile,
                                              apr_pool_t *pool);
# 386 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_open_flags_stderr(apr_file_t **thefile,
                                                     apr_int32_t flags,
                                                     apr_pool_t *pool);
# 407 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_open_flags_stdout(apr_file_t **thefile,
                                                     apr_int32_t flags,
                                                     apr_pool_t *pool);
# 428 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_open_flags_stdin(apr_file_t **thefile,
                                                     apr_int32_t flags,
                                                     apr_pool_t *pool);
# 449 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_read(apr_file_t *thefile, void *buf,
                                        apr_size_t *nbytes);
# 467 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_write(apr_file_t *thefile, const void *buf,
                                         apr_size_t *nbytes);
# 485 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_writev(apr_file_t *thefile,
                                          const struct iovec *vec,
                                          apr_size_t nvec, apr_size_t *nbytes);
# 509 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_read_full(apr_file_t *thefile, void *buf,
                                             apr_size_t nbytes,
                                             apr_size_t *bytes_read);
# 533 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_write_full(apr_file_t *thefile,
                                              const void *buf,
                                              apr_size_t nbytes,
                                              apr_size_t *bytes_written);
# 552 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_writev_full(apr_file_t *thefile,
                                               const struct iovec *vec,
                                               apr_size_t nvec,
                                               apr_size_t *nbytes);





apr_status_t apr_file_putc(char ch, apr_file_t *thefile);






apr_status_t apr_file_getc(char *ch, apr_file_t *thefile);






apr_status_t apr_file_ungetc(char ch, apr_file_t *thefile);
# 585 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_gets(char *str, int len,
                                        apr_file_t *thefile);






apr_status_t apr_file_puts(const char *str, apr_file_t *thefile);





apr_status_t apr_file_flush(apr_file_t *thefile);





apr_status_t apr_file_sync(apr_file_t *thefile);





apr_status_t apr_file_datasync(apr_file_t *thefile);
# 620 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_dup(apr_file_t **new_file,
                                       apr_file_t *old_file,
                                       apr_pool_t *p);
# 632 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_dup2(apr_file_t *new_file,
                                        apr_file_t *old_file,
                                        apr_pool_t *p);
# 647 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_setaside(apr_file_t **new_file,
                                            apr_file_t *old_file,
                                            apr_pool_t *p);
# 662 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_buffer_set(apr_file_t *thefile,
                                              char * buffer,
                                              apr_size_t bufsize);





apr_size_t apr_file_buffer_size_get(apr_file_t *thefile);
# 683 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_seek(apr_file_t *thefile,
                                   apr_seek_where_t where,
                                   apr_off_t *offset);
# 700 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_pipe_create(apr_file_t **in,
                                               apr_file_t **out,
                                               apr_pool_t *pool);
# 723 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_pipe_create_ex(apr_file_t **in,
                                                  apr_file_t **out,
                                                  apr_int32_t blocking,
                                                  apr_pool_t *pool);







apr_status_t apr_file_namedpipe_create(const char *filename,
                                                    apr_fileperms_t perm,
                                                    apr_pool_t *pool);






apr_status_t apr_file_pipe_timeout_get(apr_file_t *thepipe,
                                               apr_interval_time_t *timeout);







apr_status_t apr_file_pipe_timeout_set(apr_file_t *thepipe,
                                                  apr_interval_time_t timeout);
# 766 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_lock(apr_file_t *thefile, int type);





apr_status_t apr_file_unlock(apr_file_t *thefile);
# 781 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_name_get(const char **new_path,
                                            apr_file_t *thefile);







apr_status_t apr_file_data_get(void **data, const char *key,
                                            apr_file_t *file);
# 800 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_data_set(apr_file_t *file, void *data,
                                            const char *key,
                                            apr_status_t (*cleanup)(void *));
# 811 "/usr/include/apr-1/apr_file_io.h"
int apr_file_printf(apr_file_t *fptr,
                                        const char *format, ...)
        __attribute__((format(printf,2,3)));
# 827 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_perms_set(const char *fname,
                                             apr_fileperms_t perms);
# 846 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_attrs_set(const char *fname,
                                             apr_fileattrs_t attributes,
                                             apr_fileattrs_t attr_mask,
                                             apr_pool_t *pool);
# 859 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_mtime_set(const char *fname,
                                             apr_time_t mtime,
                                             apr_pool_t *pool);







apr_status_t apr_dir_make(const char *path, apr_fileperms_t perm,
                                       apr_pool_t *pool);
# 879 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_dir_make_recursive(const char *path,
                                                 apr_fileperms_t perm,
                                                 apr_pool_t *pool);
# 890 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_dir_remove(const char *path, apr_pool_t *pool);







apr_status_t apr_file_info_get(apr_finfo_t *finfo,
                                            apr_int32_t wanted,
                                            apr_file_t *thefile);
# 909 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_trunc(apr_file_t *fp, apr_off_t offset);






apr_int32_t apr_file_flags_get(apr_file_t *f);




apr_pool_t * apr_file_pool_get (const apr_file_t *thefile);





apr_status_t apr_file_inherit_set( apr_file_t *thefile);




apr_status_t apr_file_inherit_unset( apr_file_t *thefile);
# 951 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_file_mktemp(apr_file_t **fp, char *templ,
                                          apr_int32_t flags, apr_pool_t *p);
# 964 "/usr/include/apr-1/apr_file_io.h"
apr_status_t apr_temp_dir_get(const char **temp_dir,
                                           apr_pool_t *p);
# 27 "/usr/include/apr-1/apr_thread_proc.h" 2




# 1 "/usr/include/sys/time.h" 1 3 4
# 25 "/usr/include/sys/time.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 26 "/usr/include/sys/time.h" 2 3 4

# 1 "/usr/include/bits/time.h" 1 3 4
# 28 "/usr/include/sys/time.h" 2 3 4
# 37 "/usr/include/sys/time.h" 3 4

# 55 "/usr/include/sys/time.h" 3 4
struct timezone
  {
    int tz_minuteswest;
    int tz_dsttime;
  };

typedef struct timezone *__restrict __timezone_ptr_t;
# 71 "/usr/include/sys/time.h" 3 4
extern int gettimeofday (struct timeval *__restrict __tv,
    __timezone_ptr_t __tz) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




extern int settimeofday (const struct timeval *__tv,
    const struct timezone *__tz)
     __attribute__ ((__nothrow__ , __leaf__));





extern int adjtime (const struct timeval *__delta,
      struct timeval *__olddelta) __attribute__ ((__nothrow__ , __leaf__));




enum __itimer_which
  {

    ITIMER_REAL = 0,


    ITIMER_VIRTUAL = 1,



    ITIMER_PROF = 2

  };



struct itimerval
  {

    struct timeval it_interval;

    struct timeval it_value;
  };




typedef enum __itimer_which __itimer_which_t;






extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__ , __leaf__));




extern int setitimer (__itimer_which_t __which,
        const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__ , __leaf__));




extern int utimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int lutimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int futimes (int __fd, const struct timeval __tvp[2]) __attribute__ ((__nothrow__ , __leaf__));






extern int futimesat (int __fd, const char *__file,
        const struct timeval __tvp[2]) __attribute__ ((__nothrow__ , __leaf__));
# 189 "/usr/include/sys/time.h" 3 4

# 32 "/usr/include/apr-1/apr_thread_proc.h" 2
# 1 "/usr/include/sys/resource.h" 1 3 4
# 24 "/usr/include/sys/resource.h" 3 4
# 1 "/usr/include/bits/resource.h" 1 3 4
# 31 "/usr/include/bits/resource.h" 3 4
enum __rlimit_resource
{

  RLIMIT_CPU = 0,



  RLIMIT_FSIZE = 1,



  RLIMIT_DATA = 2,



  RLIMIT_STACK = 3,



  RLIMIT_CORE = 4,






  __RLIMIT_RSS = 5,



  RLIMIT_NOFILE = 7,
  __RLIMIT_OFILE = RLIMIT_NOFILE,




  RLIMIT_AS = 9,



  __RLIMIT_NPROC = 6,



  __RLIMIT_MEMLOCK = 8,



  __RLIMIT_LOCKS = 10,



  __RLIMIT_SIGPENDING = 11,



  __RLIMIT_MSGQUEUE = 12,





  __RLIMIT_NICE = 13,




  __RLIMIT_RTPRIO = 14,





  __RLIMIT_RTTIME = 15,


  __RLIMIT_NLIMITS = 16,
  __RLIM_NLIMITS = __RLIMIT_NLIMITS


};
# 131 "/usr/include/bits/resource.h" 3 4
typedef __rlim_t rlim_t;




typedef __rlim64_t rlim64_t;


struct rlimit
  {

    rlim_t rlim_cur;

    rlim_t rlim_max;
  };


struct rlimit64
  {

    rlim64_t rlim_cur;

    rlim64_t rlim_max;
 };



enum __rusage_who
{

  RUSAGE_SELF = 0,



  RUSAGE_CHILDREN = -1



  ,

  RUSAGE_THREAD = 1




};


# 1 "/usr/include/bits/time.h" 1 3 4
# 180 "/usr/include/bits/resource.h" 2 3 4







struct rusage
  {

    struct timeval ru_utime;

    struct timeval ru_stime;

    __extension__ union
      {
 long int ru_maxrss;
 __syscall_slong_t __ru_maxrss_word;
      };



    __extension__ union
      {
 long int ru_ixrss;
 __syscall_slong_t __ru_ixrss_word;
      };

    __extension__ union
      {
 long int ru_idrss;
 __syscall_slong_t __ru_idrss_word;
      };

    __extension__ union
      {
 long int ru_isrss;
  __syscall_slong_t __ru_isrss_word;
      };


    __extension__ union
      {
 long int ru_minflt;
 __syscall_slong_t __ru_minflt_word;
      };

    __extension__ union
      {
 long int ru_majflt;
 __syscall_slong_t __ru_majflt_word;
      };

    __extension__ union
      {
 long int ru_nswap;
 __syscall_slong_t __ru_nswap_word;
      };


    __extension__ union
      {
 long int ru_inblock;
 __syscall_slong_t __ru_inblock_word;
      };

    __extension__ union
      {
 long int ru_oublock;
 __syscall_slong_t __ru_oublock_word;
      };

    __extension__ union
      {
 long int ru_msgsnd;
 __syscall_slong_t __ru_msgsnd_word;
      };

    __extension__ union
      {
 long int ru_msgrcv;
 __syscall_slong_t __ru_msgrcv_word;
      };

    __extension__ union
      {
 long int ru_nsignals;
 __syscall_slong_t __ru_nsignals_word;
      };



    __extension__ union
      {
 long int ru_nvcsw;
 __syscall_slong_t __ru_nvcsw_word;
      };


    __extension__ union
      {
 long int ru_nivcsw;
 __syscall_slong_t __ru_nivcsw_word;
      };
  };







enum __priority_which
{
  PRIO_PROCESS = 0,

  PRIO_PGRP = 1,

  PRIO_USER = 2

};







extern int prlimit (__pid_t __pid, enum __rlimit_resource __resource,
      const struct rlimit *__new_limit,
      struct rlimit *__old_limit) __attribute__ ((__nothrow__ , __leaf__));
# 322 "/usr/include/bits/resource.h" 3 4
extern int prlimit64 (__pid_t __pid, enum __rlimit_resource __resource,
        const struct rlimit64 *__new_limit,
        struct rlimit64 *__old_limit) __attribute__ ((__nothrow__ , __leaf__));




# 25 "/usr/include/sys/resource.h" 2 3 4













typedef enum __rlimit_resource __rlimit_resource_t;
typedef enum __rusage_who __rusage_who_t;
typedef enum __priority_which __priority_which_t;
# 50 "/usr/include/sys/resource.h" 3 4
extern int getrlimit (__rlimit_resource_t __resource,
        struct rlimit *__rlimits) __attribute__ ((__nothrow__ , __leaf__));
# 61 "/usr/include/sys/resource.h" 3 4
extern int getrlimit64 (__rlimit_resource_t __resource,
   struct rlimit64 *__rlimits) __attribute__ ((__nothrow__ , __leaf__));






extern int setrlimit (__rlimit_resource_t __resource,
        const struct rlimit *__rlimits) __attribute__ ((__nothrow__ , __leaf__));
# 81 "/usr/include/sys/resource.h" 3 4
extern int setrlimit64 (__rlimit_resource_t __resource,
   const struct rlimit64 *__rlimits) __attribute__ ((__nothrow__ , __leaf__));




extern int getrusage (__rusage_who_t __who, struct rusage *__usage) __attribute__ ((__nothrow__ , __leaf__));





extern int getpriority (__priority_which_t __which, id_t __who) __attribute__ ((__nothrow__ , __leaf__));



extern int setpriority (__priority_which_t __which, id_t __who, int __prio)
     __attribute__ ((__nothrow__ , __leaf__));


# 33 "/usr/include/apr-1/apr_thread_proc.h" 2
# 45 "/usr/include/apr-1/apr_thread_proc.h"
typedef enum {
    APR_SHELLCMD,
    APR_PROGRAM,
    APR_PROGRAM_ENV,
    APR_PROGRAM_PATH,
    APR_SHELLCMD_ENV


} apr_cmdtype_e;

typedef enum {
    APR_WAIT,
    APR_NOWAIT
} apr_wait_how_e;






typedef enum {
    APR_PROC_EXIT = 1,
    APR_PROC_SIGNAL = 2,
    APR_PROC_SIGNAL_CORE = 4
} apr_exit_why_e;
# 133 "/usr/include/apr-1/apr_thread_proc.h"
typedef struct apr_proc_t {

    pid_t pid;

    apr_file_t *in;

    apr_file_t *out;

    apr_file_t *err;
# 161 "/usr/include/apr-1/apr_thread_proc.h"
} apr_proc_t;
# 173 "/usr/include/apr-1/apr_thread_proc.h"
typedef void (apr_child_errfn_t)(apr_pool_t *proc, apr_status_t err,
                                 const char *description);


typedef struct apr_thread_t apr_thread_t;


typedef struct apr_threadattr_t apr_threadattr_t;


typedef struct apr_procattr_t apr_procattr_t;


typedef struct apr_thread_once_t apr_thread_once_t;


typedef struct apr_threadkey_t apr_threadkey_t;


typedef struct apr_other_child_rec_t apr_other_child_rec_t;




typedef void *( *apr_thread_start_t)(apr_thread_t*, void*);

typedef enum {
    APR_KILL_NEVER,


    APR_KILL_ALWAYS,
    APR_KILL_AFTER_TIMEOUT,
    APR_JUST_WAIT,
    APR_KILL_ONLY_ONCE
} apr_kill_conditions_e;
# 218 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_threadattr_create(apr_threadattr_t **new_attr,
                                                apr_pool_t *cont);






apr_status_t apr_threadattr_detach_set(apr_threadattr_t *attr,
                                                    apr_int32_t on);







apr_status_t apr_threadattr_detach_get(apr_threadattr_t *attr);






apr_status_t apr_threadattr_stacksize_set(apr_threadattr_t *attr,
                                                       apr_size_t stacksize);
# 255 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_threadattr_guardsize_set(apr_threadattr_t *attr,
                                                       apr_size_t guardsize);
# 266 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_thread_create(apr_thread_t **new_thread,
                                            apr_threadattr_t *attr,
                                            apr_thread_start_t func,
                                            void *data, apr_pool_t *cont);






apr_status_t apr_thread_exit(apr_thread_t *thd,
                                          apr_status_t retval);






apr_status_t apr_thread_join(apr_status_t *retval,
                                          apr_thread_t *thd);




void apr_thread_yield(void);







apr_status_t apr_thread_once_init(apr_thread_once_t **control,
                                               apr_pool_t *p);
# 310 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_thread_once(apr_thread_once_t *control,
                                          void (*func)(void));





apr_status_t apr_thread_detach(apr_thread_t *thd);







apr_status_t apr_thread_data_get(void **data, const char *key,
                                             apr_thread_t *thread);
# 335 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_thread_data_set(void *data, const char *key,
                                             apr_status_t (*cleanup) (void *),
                                             apr_thread_t *thread);







apr_status_t apr_threadkey_private_create(apr_threadkey_t **key,
                                                    void (*dest)(void *),
                                                    apr_pool_t *cont);






apr_status_t apr_threadkey_private_get(void **new_mem,
                                                 apr_threadkey_t *key);






apr_status_t apr_threadkey_private_set(void *priv,
                                                 apr_threadkey_t *key);





apr_status_t apr_threadkey_private_delete(apr_threadkey_t *key);







apr_status_t apr_threadkey_data_get(void **data, const char *key,
                                                apr_threadkey_t *threadkey);
# 387 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_threadkey_data_set(void *data, const char *key,
                                                apr_status_t (*cleanup) (void *),
                                                apr_threadkey_t *threadkey);
# 398 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_procattr_create(apr_procattr_t **new_attr,
                                                  apr_pool_t *cont);
# 415 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_procattr_io_set(apr_procattr_t *attr,
                                             apr_int32_t in, apr_int32_t out,
                                             apr_int32_t err);
# 434 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_procattr_child_in_set(struct apr_procattr_t *attr,
                                                  apr_file_t *child_in,
                                                  apr_file_t *parent_in);
# 451 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_procattr_child_out_set(struct apr_procattr_t *attr,
                                                   apr_file_t *child_out,
                                                   apr_file_t *parent_out);
# 468 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_procattr_child_err_set(struct apr_procattr_t *attr,
                                                   apr_file_t *child_err,
                                                   apr_file_t *parent_err);
# 479 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_procattr_dir_set(apr_procattr_t *attr,
                                              const char *dir);
# 493 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_procattr_cmdtype_set(apr_procattr_t *attr,
                                                  apr_cmdtype_e cmd);






apr_status_t apr_procattr_detach_set(apr_procattr_t *attr,
                                                 apr_int32_t detach);
# 517 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_procattr_limit_set(apr_procattr_t *attr,
                                                apr_int32_t what,
                                                struct rlimit *limit);
# 533 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_procattr_child_errfn_set(apr_procattr_t *attr,
                                                       apr_child_errfn_t *errfn);
# 548 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_procattr_error_check_set(apr_procattr_t *attr,
                                                       apr_int32_t chk);
# 558 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_procattr_addrspace_set(apr_procattr_t *attr,
                                                       apr_int32_t addrspace);
# 569 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_procattr_user_set(apr_procattr_t *attr,
                                                const char *username,
                                                const char *password);






apr_status_t apr_procattr_group_set(apr_procattr_t *attr,
                                                 const char *groupname);
# 591 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_proc_fork(apr_proc_t *proc, apr_pool_t *cont);
# 610 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_proc_create(apr_proc_t *new_proc,
                                          const char *progname,
                                          const char * const *args,
                                          const char * const *env,
                                          apr_procattr_t *attr,
                                          apr_pool_t *pool);
# 643 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_proc_wait(apr_proc_t *proc,
                                        int *exitcode, apr_exit_why_e *exitwhy,
                                        apr_wait_how_e waithow);
# 673 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_proc_wait_all_procs(apr_proc_t *proc,
                                                  int *exitcode,
                                                  apr_exit_why_e *exitwhy,
                                                  apr_wait_how_e waithow,
                                                  apr_pool_t *p);
# 688 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_proc_detach(int daemonize);
# 707 "/usr/include/apr-1/apr_thread_proc.h"
void apr_proc_other_child_register(apr_proc_t *proc,
                                           void (*maintenance) (int reason,
                                                                void *,
                                                                int status),
                                           void *data, apr_file_t *write_fd,
                                           apr_pool_t *p);
# 723 "/usr/include/apr-1/apr_thread_proc.h"
void apr_proc_other_child_unregister(void *data);
# 745 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_proc_other_child_alert(apr_proc_t *proc,
                                                     int reason,
                                                     int status);
# 756 "/usr/include/apr-1/apr_thread_proc.h"
void apr_proc_other_child_refresh(apr_other_child_rec_t *ocr,
                                               int reason);







void apr_proc_other_child_refresh_all(int reason);






apr_status_t apr_proc_kill(apr_proc_t *proc, int sig);
# 787 "/usr/include/apr-1/apr_thread_proc.h"
void apr_pool_note_subprocess(apr_pool_t *a, apr_proc_t *proc,
                                           apr_kill_conditions_e how);
# 798 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_setup_signal_thread(void);
# 807 "/usr/include/apr-1/apr_thread_proc.h"
apr_status_t apr_signal_thread(int(*signal_handler)(int signum));







apr_pool_t * apr_thread_pool_get (const apr_thread_t *thethread);
# 23 "core.c" 2
# 1 "/usr/include/apr-1/apr_hooks.h" 1
# 20 "/usr/include/apr-1/apr_hooks.h"
# 1 "/usr/include/apr-1/apu.h" 1
# 21 "/usr/include/apr-1/apr_hooks.h" 2
# 312 "/usr/include/apr-1/apr_hooks.h"
 extern apr_pool_t *apr_hook_global_pool;





 extern int apr_hook_debug_enabled;




 extern const char *apr_hook_debug_current;






void apr_hook_sort_register(const char *szHookName,
                                        apr_array_header_t **aHooks);



void apr_hook_sort_all(void);
# 344 "/usr/include/apr-1/apr_hooks.h"
void apr_hook_debug_show(const char *szName,
                                      const char * const *aszPre,
                                      const char * const *aszSucc);




void apr_hook_deregister_all(void);
# 24 "core.c" 2




# 1 "/usr/include/apr-1/apr_want.h" 1
# 52 "/usr/include/apr-1/apr_want.h"
# 1 "/usr/include/strings.h" 1 3 4
# 53 "/usr/include/apr-1/apr_want.h" 2
# 29 "core.c" 2


# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_config.h" 1
# 27 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_config.h"
# 1 "/usr/include/apr-1/apr_optional_hooks.h" 1
# 48 "/usr/include/apr-1/apr_optional_hooks.h"
void apr_optional_hook_add(const char *szName,void (*pfn)(void),
     const char * const *aszPre,
     const char * const *aszSucc,
     int nOrder);
# 74 "/usr/include/apr-1/apr_optional_hooks.h"
apr_array_header_t * apr_optional_hook_get(const char *szName);
# 28 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_config.h" 2
# 232 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_config.h"
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/os/unix/os.h" 1
# 32 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/os/unix/os.h"
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_config.h" 1
# 33 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/os/unix/os.h" 2
# 233 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_config.h" 2

# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_config_auto.h" 1
# 235 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_config.h" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_config_layout.h" 1
# 236 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_config.h" 2
# 32 "core.c" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h" 1
# 43 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_config.h" 1
# 44 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_mmn.h" 1
# 45 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h" 2

# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_release.h" 1
# 25 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_release.h"
# 1 "/usr/include/apr-1/apr_general.h" 1
# 26 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_release.h" 2
# 47 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h" 2



# 1 "/usr/include/apr-1/apr_tables.h" 1
# 51 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h" 2
# 1 "/usr/include/apr-1/apr_pools.h" 1
# 52 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h" 2
# 1 "/usr/include/apr-1/apr_time.h" 1
# 53 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h" 2
# 1 "/usr/include/apr-1/apr_network_io.h" 1
# 31 "/usr/include/apr-1/apr_network_io.h"
# 1 "/usr/include/netinet/in.h" 1 3 4
# 27 "/usr/include/netinet/in.h" 3 4



typedef uint32_t in_addr_t;
struct in_addr
  {
    in_addr_t s_addr;
  };


# 1 "/usr/include/bits/in.h" 1 3 4
# 138 "/usr/include/bits/in.h" 3 4
struct ip_opts
  {
    struct in_addr ip_dst;
    char ip_opts[40];
  };


struct ip_mreqn
  {
    struct in_addr imr_multiaddr;
    struct in_addr imr_address;
    int imr_ifindex;
  };


struct in_pktinfo
  {
    int ipi_ifindex;
    struct in_addr ipi_spec_dst;
    struct in_addr ipi_addr;
  };
# 38 "/usr/include/netinet/in.h" 2 3 4


enum
  {
    IPPROTO_IP = 0,

    IPPROTO_ICMP = 1,

    IPPROTO_IGMP = 2,

    IPPROTO_IPIP = 4,

    IPPROTO_TCP = 6,

    IPPROTO_EGP = 8,

    IPPROTO_PUP = 12,

    IPPROTO_UDP = 17,

    IPPROTO_IDP = 22,

    IPPROTO_TP = 29,

    IPPROTO_DCCP = 33,

    IPPROTO_IPV6 = 41,

    IPPROTO_RSVP = 46,

    IPPROTO_GRE = 47,

    IPPROTO_ESP = 50,

    IPPROTO_AH = 51,

    IPPROTO_MTP = 92,

    IPPROTO_BEETPH = 94,

    IPPROTO_ENCAP = 98,

    IPPROTO_PIM = 103,

    IPPROTO_COMP = 108,

    IPPROTO_SCTP = 132,

    IPPROTO_UDPLITE = 136,

    IPPROTO_RAW = 255,

    IPPROTO_MAX
  };





enum
  {
    IPPROTO_HOPOPTS = 0,

    IPPROTO_ROUTING = 43,

    IPPROTO_FRAGMENT = 44,

    IPPROTO_ICMPV6 = 58,

    IPPROTO_NONE = 59,

    IPPROTO_DSTOPTS = 60,

    IPPROTO_MH = 135

  };



typedef uint16_t in_port_t;


enum
  {
    IPPORT_ECHO = 7,
    IPPORT_DISCARD = 9,
    IPPORT_SYSTAT = 11,
    IPPORT_DAYTIME = 13,
    IPPORT_NETSTAT = 15,
    IPPORT_FTP = 21,
    IPPORT_TELNET = 23,
    IPPORT_SMTP = 25,
    IPPORT_TIMESERVER = 37,
    IPPORT_NAMESERVER = 42,
    IPPORT_WHOIS = 43,
    IPPORT_MTP = 57,

    IPPORT_TFTP = 69,
    IPPORT_RJE = 77,
    IPPORT_FINGER = 79,
    IPPORT_TTYLINK = 87,
    IPPORT_SUPDUP = 95,


    IPPORT_EXECSERVER = 512,
    IPPORT_LOGINSERVER = 513,
    IPPORT_CMDSERVER = 514,
    IPPORT_EFSSERVER = 520,


    IPPORT_BIFFUDP = 512,
    IPPORT_WHOSERVER = 513,
    IPPORT_ROUTESERVER = 520,


    IPPORT_RESERVED = 1024,


    IPPORT_USERRESERVED = 5000
  };
# 209 "/usr/include/netinet/in.h" 3 4
struct in6_addr
  {
    union
      {
 uint8_t __u6_addr8[16];

 uint16_t __u6_addr16[8];
 uint32_t __u6_addr32[4];

      } __in6_u;





  };


extern const struct in6_addr in6addr_any;
extern const struct in6_addr in6addr_loopback;
# 237 "/usr/include/netinet/in.h" 3 4
struct sockaddr_in
  {
    sa_family_t sin_family;
    in_port_t sin_port;
    struct in_addr sin_addr;


    unsigned char sin_zero[sizeof (struct sockaddr) -
      (sizeof (unsigned short int)) -
      sizeof (in_port_t) -
      sizeof (struct in_addr)];
  };



struct sockaddr_in6
  {
    sa_family_t sin6_family;
    in_port_t sin6_port;
    uint32_t sin6_flowinfo;
    struct in6_addr sin6_addr;
    uint32_t sin6_scope_id;
  };




struct ip_mreq
  {

    struct in_addr imr_multiaddr;


    struct in_addr imr_interface;
  };

struct ip_mreq_source
  {

    struct in_addr imr_multiaddr;


    struct in_addr imr_interface;


    struct in_addr imr_sourceaddr;
  };




struct ipv6_mreq
  {

    struct in6_addr ipv6mr_multiaddr;


    unsigned int ipv6mr_interface;
  };




struct group_req
  {

    uint32_t gr_interface;


    struct sockaddr_storage gr_group;
  };

struct group_source_req
  {

    uint32_t gsr_interface;


    struct sockaddr_storage gsr_group;


    struct sockaddr_storage gsr_source;
  };



struct ip_msfilter
  {

    struct in_addr imsf_multiaddr;


    struct in_addr imsf_interface;


    uint32_t imsf_fmode;


    uint32_t imsf_numsrc;

    struct in_addr imsf_slist[1];
  };





struct group_filter
  {

    uint32_t gf_interface;


    struct sockaddr_storage gf_group;


    uint32_t gf_fmode;


    uint32_t gf_numsrc;

    struct sockaddr_storage gf_slist[1];
};
# 374 "/usr/include/netinet/in.h" 3 4
extern uint32_t ntohl (uint32_t __netlong) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint16_t ntohs (uint16_t __netshort)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint32_t htonl (uint32_t __hostlong)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint16_t htons (uint16_t __hostshort)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));




# 1 "/usr/include/bits/byteswap.h" 1 3 4
# 386 "/usr/include/netinet/in.h" 2 3 4
# 501 "/usr/include/netinet/in.h" 3 4
extern int bindresvport (int __sockfd, struct sockaddr_in *__sock_in) __attribute__ ((__nothrow__ , __leaf__));


extern int bindresvport6 (int __sockfd, struct sockaddr_in6 *__sock_in)
     __attribute__ ((__nothrow__ , __leaf__));
# 531 "/usr/include/netinet/in.h" 3 4
struct cmsghdr;


struct in6_pktinfo
  {
    struct in6_addr ipi6_addr;
    unsigned int ipi6_ifindex;
  };


struct ip6_mtuinfo
  {
    struct sockaddr_in6 ip6m_addr;
    uint32_t ip6m_mtu;
  };



extern int inet6_option_space (int __nbytes)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int inet6_option_init (void *__bp, struct cmsghdr **__cmsgp,
         int __type) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int inet6_option_append (struct cmsghdr *__cmsg,
    const uint8_t *__typep, int __multx,
    int __plusy) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern uint8_t *inet6_option_alloc (struct cmsghdr *__cmsg, int __datalen,
        int __multx, int __plusy)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int inet6_option_next (const struct cmsghdr *__cmsg,
         uint8_t **__tptrp)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int inet6_option_find (const struct cmsghdr *__cmsg,
         uint8_t **__tptrp, int __type)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));



extern int inet6_opt_init (void *__extbuf, socklen_t __extlen) __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_opt_append (void *__extbuf, socklen_t __extlen, int __offset,
        uint8_t __type, socklen_t __len, uint8_t __align,
        void **__databufp) __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_opt_finish (void *__extbuf, socklen_t __extlen, int __offset)
     __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_opt_set_val (void *__databuf, int __offset, void *__val,
         socklen_t __vallen) __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_opt_next (void *__extbuf, socklen_t __extlen, int __offset,
      uint8_t *__typep, socklen_t *__lenp,
      void **__databufp) __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_opt_find (void *__extbuf, socklen_t __extlen, int __offset,
      uint8_t __type, socklen_t *__lenp,
      void **__databufp) __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_opt_get_val (void *__databuf, int __offset, void *__val,
         socklen_t __vallen) __attribute__ ((__nothrow__ , __leaf__));



extern socklen_t inet6_rth_space (int __type, int __segments) __attribute__ ((__nothrow__ , __leaf__));
extern void *inet6_rth_init (void *__bp, socklen_t __bp_len, int __type,
        int __segments) __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_rth_add (void *__bp, const struct in6_addr *__addr) __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_rth_reverse (const void *__in, void *__out) __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_rth_segments (const void *__bp) __attribute__ ((__nothrow__ , __leaf__));
extern struct in6_addr *inet6_rth_getaddr (const void *__bp, int __index)
     __attribute__ ((__nothrow__ , __leaf__));





extern int getipv4sourcefilter (int __s, struct in_addr __interface_addr,
    struct in_addr __group, uint32_t *__fmode,
    uint32_t *__numsrc, struct in_addr *__slist)
     __attribute__ ((__nothrow__ , __leaf__));


extern int setipv4sourcefilter (int __s, struct in_addr __interface_addr,
    struct in_addr __group, uint32_t __fmode,
    uint32_t __numsrc,
    const struct in_addr *__slist)
     __attribute__ ((__nothrow__ , __leaf__));



extern int getsourcefilter (int __s, uint32_t __interface_addr,
       const struct sockaddr *__group,
       socklen_t __grouplen, uint32_t *__fmode,
       uint32_t *__numsrc,
       struct sockaddr_storage *__slist) __attribute__ ((__nothrow__ , __leaf__));


extern int setsourcefilter (int __s, uint32_t __interface_addr,
       const struct sockaddr *__group,
       socklen_t __grouplen, uint32_t __fmode,
       uint32_t __numsrc,
       const struct sockaddr_storage *__slist) __attribute__ ((__nothrow__ , __leaf__));



# 32 "/usr/include/apr-1/apr_network_io.h" 2
# 108 "/usr/include/apr-1/apr_network_io.h"
typedef enum {
    APR_SHUTDOWN_READ,
    APR_SHUTDOWN_WRITE,
    APR_SHUTDOWN_READWRITE
} apr_shutdown_how_e;
# 172 "/usr/include/apr-1/apr_network_io.h"
typedef enum {
    APR_LOCAL,
    APR_REMOTE
} apr_interface_e;
# 193 "/usr/include/apr-1/apr_network_io.h"
typedef struct apr_socket_t apr_socket_t;



typedef struct apr_hdtr_t apr_hdtr_t;

typedef struct in_addr apr_in_addr_t;

typedef struct apr_ipsubnet_t apr_ipsubnet_t;


typedef apr_uint16_t apr_port_t;




typedef struct apr_sockaddr_t apr_sockaddr_t;



struct apr_sockaddr_t {

    apr_pool_t *pool;

    char *hostname;

    char *servname;

    apr_port_t port;

    apr_int32_t family;

    apr_socklen_t salen;

    int ipaddr_len;


    int addr_str_len;


    void *ipaddr_ptr;


    apr_sockaddr_t *next;

    union {

        struct sockaddr_in sin;


        struct sockaddr_in6 sin6;




        struct sockaddr_storage sas;

    } sa;
};
# 263 "/usr/include/apr-1/apr_network_io.h"
struct apr_hdtr_t {

    struct iovec* headers;

    int numheaders;

    struct iovec* trailers;

    int numtrailers;
};
# 287 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_create(apr_socket_t **new_sock,
                                            int family, int type,
                                            int protocol,
                                            apr_pool_t *cont);
# 305 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_shutdown(apr_socket_t *thesocket,
                                              apr_shutdown_how_e how);





apr_status_t apr_socket_close(apr_socket_t *thesocket);
# 321 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_bind(apr_socket_t *sock,
                                          apr_sockaddr_t *sa);
# 331 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_listen(apr_socket_t *sock,
                                            apr_int32_t backlog);
# 345 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_accept(apr_socket_t **new_sock,
                                            apr_socket_t *sock,
                                            apr_pool_t *connection_pool);







apr_status_t apr_socket_connect(apr_socket_t *sock,
                                             apr_sockaddr_t *sa);
# 370 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_atreadeof(apr_socket_t *sock,
                                               int *atreadeof);
# 396 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_sockaddr_info_get(apr_sockaddr_t **sa,
                                          const char *hostname,
                                          apr_int32_t family,
                                          apr_port_t port,
                                          apr_int32_t flags,
                                          apr_pool_t *p);
# 411 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_getnameinfo(char **hostname,
                                          apr_sockaddr_t *sa,
                                          apr_int32_t flags);
# 445 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_parse_addr_port(char **addr,
                                              char **scope_id,
                                              apr_port_t *port,
                                              const char *str,
                                              apr_pool_t *p);
# 459 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_gethostname(char *buf, int len, apr_pool_t *cont);







apr_status_t apr_socket_data_get(void **data, const char *key,
                                              apr_socket_t *sock);
# 477 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_data_set(apr_socket_t *sock, void *data,
                                              const char *key,
                                              apr_status_t (*cleanup)(void*));
# 498 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_send(apr_socket_t *sock, const char *buf,
                                          apr_size_t *len);
# 519 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_sendv(apr_socket_t *sock,
                                           const struct iovec *vec,
                                           apr_int32_t nvec, apr_size_t *len);
# 530 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_sendto(apr_socket_t *sock,
                                            apr_sockaddr_t *where,
                                            apr_int32_t flags, const char *buf,
                                            apr_size_t *len);
# 548 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_recvfrom(apr_sockaddr_t *from,
                                              apr_socket_t *sock,
                                              apr_int32_t flags, char *buf,
                                              apr_size_t *len);
# 573 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_sendfile(apr_socket_t *sock,
                                              apr_file_t *file,
                                              apr_hdtr_t *hdtr,
                                              apr_off_t *offset,
                                              apr_size_t *len,
                                              apr_int32_t flags);
# 601 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_recv(apr_socket_t *sock,
                                   char *buf, apr_size_t *len);
# 626 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_opt_set(apr_socket_t *sock,
                                             apr_int32_t opt, apr_int32_t on);
# 640 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_timeout_set(apr_socket_t *sock,
                                                 apr_interval_time_t t);
# 662 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_opt_get(apr_socket_t *sock,
                                             apr_int32_t opt, apr_int32_t *on);






apr_status_t apr_socket_timeout_get(apr_socket_t *sock,
                                                 apr_interval_time_t *t);







apr_status_t apr_socket_atmark(apr_socket_t *sock,
                                            int *atmark);
# 690 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_addr_get(apr_sockaddr_t **sa,
                                              apr_interface_e which,
                                              apr_socket_t *sock);
# 701 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_sockaddr_ip_get(char **addr,
                                              apr_sockaddr_t *sockaddr);






apr_status_t apr_sockaddr_ip_getbuf(char *buf, apr_size_t buflen,
                                                 apr_sockaddr_t *sockaddr);
# 722 "/usr/include/apr-1/apr_network_io.h"
int apr_sockaddr_equal(const apr_sockaddr_t *addr1,
                                    const apr_sockaddr_t *addr2);
# 733 "/usr/include/apr-1/apr_network_io.h"
int apr_sockaddr_is_wildcard(const apr_sockaddr_t *addr);






apr_status_t apr_socket_type_get(apr_socket_t *sock,
                                              int *type);






apr_status_t apr_getservbyname(apr_sockaddr_t *sockaddr,
                                            const char *servname);
# 758 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_ipsubnet_create(apr_ipsubnet_t **ipsub,
                                              const char *ipstr,
                                              const char *mask_or_numbits,
                                              apr_pool_t *p);
# 770 "/usr/include/apr-1/apr_network_io.h"
int apr_ipsubnet_test(apr_ipsubnet_t *ipsub, apr_sockaddr_t *sa);
# 791 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_socket_protocol_get(apr_socket_t *sock,
                                                  int *protocol);




apr_pool_t * apr_socket_pool_get (const apr_socket_t *thesocket);




apr_status_t apr_socket_inherit_set( apr_socket_t *thesocket);




apr_status_t apr_socket_inherit_unset( apr_socket_t *thesocket);
# 823 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_mcast_join(apr_socket_t *sock,
                                         apr_sockaddr_t *join,
                                         apr_sockaddr_t *iface,
                                         apr_sockaddr_t *source);
# 838 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_mcast_leave(apr_socket_t *sock,
                                          apr_sockaddr_t *addr,
                                          apr_sockaddr_t *iface,
                                          apr_sockaddr_t *source);
# 850 "/usr/include/apr-1/apr_network_io.h"
apr_status_t apr_mcast_hops(apr_socket_t *sock,
                                         apr_byte_t ttl);






apr_status_t apr_mcast_loopback(apr_socket_t *sock,
                                             apr_byte_t opt);







apr_status_t apr_mcast_interface(apr_socket_t *sock,
                                              apr_sockaddr_t *iface);
# 54 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h" 2
# 1 "/usr/include/apr-1/apr_buckets.h" 1
# 29 "/usr/include/apr-1/apr_buckets.h"
# 1 "/usr/include/apr-1/apr_network_io.h" 1
# 30 "/usr/include/apr-1/apr_buckets.h" 2


# 1 "/usr/include/apr-1/apr_mmap.h" 1
# 28 "/usr/include/apr-1/apr_mmap.h"
# 1 "/usr/include/apr-1/apr_ring.h" 1
# 29 "/usr/include/apr-1/apr_mmap.h" 2
# 51 "/usr/include/apr-1/apr_mmap.h"
typedef struct apr_mmap_t apr_mmap_t;
# 62 "/usr/include/apr-1/apr_mmap.h"
struct apr_mmap_t {

    apr_pool_t *cntxt;
# 80 "/usr/include/apr-1/apr_mmap.h"
    void *mm;

    apr_size_t size;


    struct { struct apr_mmap_t * volatile next; struct apr_mmap_t * volatile prev; } link;
};
# 133 "/usr/include/apr-1/apr_mmap.h"
apr_status_t apr_mmap_create(apr_mmap_t **newmmap,
                                          apr_file_t *file, apr_off_t offset,
                                          apr_size_t size, apr_int32_t flag,
                                          apr_pool_t *cntxt);







apr_status_t apr_mmap_dup(apr_mmap_t **new_mmap,
                                       apr_mmap_t *old_mmap,
                                       apr_pool_t *p);





apr_status_t apr_mmap_delete(apr_mmap_t *mm);







apr_status_t apr_mmap_offset(void **addr, apr_mmap_t *mm,
                                          apr_off_t offset);
# 33 "/usr/include/apr-1/apr_buckets.h" 2
# 57 "/usr/include/apr-1/apr_buckets.h"
typedef enum {
    APR_BLOCK_READ,
    APR_NONBLOCK_READ
} apr_read_type_e;
# 119 "/usr/include/apr-1/apr_buckets.h"
typedef struct apr_bucket_brigade apr_bucket_brigade;

typedef struct apr_bucket apr_bucket;

typedef struct apr_bucket_alloc_t apr_bucket_alloc_t;


typedef struct apr_bucket_type_t apr_bucket_type_t;




struct apr_bucket_type_t {



    const char *name;




    int num_func;
# 151 "/usr/include/apr-1/apr_buckets.h"
    enum {

        APR_BUCKET_DATA = 0,

        APR_BUCKET_METADATA = 1
    } is_metadata;







    void (*destroy)(void *data);
# 176 "/usr/include/apr-1/apr_buckets.h"
    apr_status_t (*read)(apr_bucket *b, const char **str, apr_size_t *len,
                         apr_read_type_e block);
# 192 "/usr/include/apr-1/apr_buckets.h"
    apr_status_t (*setaside)(apr_bucket *e, apr_pool_t *pool);
# 203 "/usr/include/apr-1/apr_buckets.h"
    apr_status_t (*split)(apr_bucket *e, apr_size_t point);







    apr_status_t (*copy)(apr_bucket *e, apr_bucket **c);

};
# 224 "/usr/include/apr-1/apr_buckets.h"
struct apr_bucket {

    struct { struct apr_bucket * volatile next; struct apr_bucket * volatile prev; } link;

    const apr_bucket_type_t *type;





    apr_size_t length;







    apr_off_t start;

    void *data;







    void (*free)(void *e);

    apr_bucket_alloc_t *list;
};


struct apr_bucket_brigade {





    apr_pool_t *p;
# 273 "/usr/include/apr-1/apr_buckets.h"
    struct apr_bucket_list { struct apr_bucket * volatile next; struct apr_bucket * volatile prev; } list;

    apr_bucket_alloc_t *bucket_alloc;
};





typedef apr_status_t (*apr_brigade_flush)(apr_bucket_brigade *bb, void *ctx);
# 524 "/usr/include/apr-1/apr_buckets.h"
typedef struct apr_bucket_refcount apr_bucket_refcount;






struct apr_bucket_refcount {

    int refcount;
};




typedef struct apr_bucket_heap apr_bucket_heap;



struct apr_bucket_heap {

    apr_bucket_refcount refcount;



    char *base;

    apr_size_t alloc_len;

    void (*free_func)(void *data);
};


typedef struct apr_bucket_pool apr_bucket_pool;



struct apr_bucket_pool {
# 573 "/usr/include/apr-1/apr_buckets.h"
    apr_bucket_heap heap;





    const char *base;






    apr_pool_t *pool;



    apr_bucket_alloc_t *list;
};



typedef struct apr_bucket_mmap apr_bucket_mmap;



struct apr_bucket_mmap {

    apr_bucket_refcount refcount;

    apr_mmap_t *mmap;
};



typedef struct apr_bucket_file apr_bucket_file;



struct apr_bucket_file {

    apr_bucket_refcount refcount;

    apr_file_t *fd;


    apr_pool_t *readpool;



    int can_mmap;

};


typedef union apr_bucket_structs apr_bucket_structs;




union apr_bucket_structs {
    apr_bucket b;
    apr_bucket_heap heap;
    apr_bucket_pool pool;

    apr_bucket_mmap mmap;

    apr_bucket_file file;
};
# 658 "/usr/include/apr-1/apr_buckets.h"
apr_bucket_brigade * apr_brigade_create(apr_pool_t *p,
                                                     apr_bucket_alloc_t *list);






apr_status_t apr_brigade_destroy(apr_bucket_brigade *b);
# 679 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_brigade_cleanup(void *data);
# 696 "/usr/include/apr-1/apr_buckets.h"
apr_bucket_brigade * apr_brigade_split_ex(apr_bucket_brigade *b,
                                                       apr_bucket *e,
                                                       apr_bucket_brigade *a);
# 711 "/usr/include/apr-1/apr_buckets.h"
apr_bucket_brigade * apr_brigade_split(apr_bucket_brigade *b,
                                                    apr_bucket *e);
# 726 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_brigade_partition(apr_bucket_brigade *b,
                                                apr_off_t point,
                                                apr_bucket **after_point);
# 738 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_brigade_length(apr_bucket_brigade *bb,
                                             int read_all,
                                             apr_off_t *length);
# 749 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_brigade_flatten(apr_bucket_brigade *bb,
                                              char *c,
                                              apr_size_t *len);
# 760 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_brigade_pflatten(apr_bucket_brigade *bb,
                                               char **c,
                                               apr_size_t *len,
                                               apr_pool_t *pool);
# 773 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_brigade_split_line(apr_bucket_brigade *bbOut,
                                                 apr_bucket_brigade *bbIn,
                                                 apr_read_type_e block,
                                                 apr_off_t maxbytes);
# 787 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_brigade_to_iovec(apr_bucket_brigade *b,
                                               struct iovec *vec, int *nvec);
# 798 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_brigade_vputstrs(apr_bucket_brigade *b,
                                               apr_brigade_flush flush,
                                               void *ctx,
                                               va_list va);
# 826 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_brigade_write(apr_bucket_brigade *b,
                                            apr_brigade_flush flush, void *ctx,
                                            const char *str, apr_size_t nbyte);
# 839 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_brigade_writev(apr_bucket_brigade *b,
                                             apr_brigade_flush flush,
                                             void *ctx,
                                             const struct iovec *vec,
                                             apr_size_t nvec);
# 853 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_brigade_puts(apr_bucket_brigade *bb,
                                           apr_brigade_flush flush, void *ctx,
                                           const char *str);
# 865 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_brigade_putc(apr_bucket_brigade *b,
                                           apr_brigade_flush flush, void *ctx,
                                           const char c);
# 877 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_brigade_putstrs(apr_bucket_brigade *b,
                                                     apr_brigade_flush flush,
                                                     void *ctx, ...);
# 891 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_brigade_printf(apr_bucket_brigade *b,
                                                    apr_brigade_flush flush,
                                                    void *ctx,
                                                    const char *fmt, ...)
        __attribute__((format(printf,4,5)));
# 907 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_brigade_vprintf(apr_bucket_brigade *b,
                                              apr_brigade_flush flush,
                                              void *ctx,
                                              const char *fmt, va_list va);
# 924 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_brigade_insert_file(apr_bucket_brigade *bb,
                                                  apr_file_t *f,
                                                  apr_off_t start,
                                                  apr_off_t len,
                                                  apr_pool_t *p);
# 946 "/usr/include/apr-1/apr_buckets.h"
apr_bucket_alloc_t * apr_bucket_alloc_create(apr_pool_t *p);
# 956 "/usr/include/apr-1/apr_buckets.h"
apr_bucket_alloc_t * apr_bucket_alloc_create_ex(apr_allocator_t *allocator);





void apr_bucket_alloc_destroy(apr_bucket_alloc_t *list);






void * apr_bucket_alloc(apr_size_t size, apr_bucket_alloc_t *list);





void apr_bucket_free(void *block);
# 1113 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_bucket_setaside_noop(apr_bucket *data,
                                                          apr_pool_t *pool);
# 1123 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_bucket_setaside_notimpl(apr_bucket *data,
                                                             apr_pool_t *pool);
# 1133 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_bucket_split_notimpl(apr_bucket *data,
                                                          apr_size_t point);
# 1143 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_bucket_copy_notimpl(apr_bucket *e,
                                                         apr_bucket **c);
# 1155 "/usr/include/apr-1/apr_buckets.h"
void apr_bucket_destroy_noop(void *data);
# 1172 "/usr/include/apr-1/apr_buckets.h"
 extern const apr_bucket_type_t apr_bucket_type_flush;





 extern const apr_bucket_type_t apr_bucket_type_eos;



 extern const apr_bucket_type_t apr_bucket_type_file;




 extern const apr_bucket_type_t apr_bucket_type_heap;




 extern const apr_bucket_type_t apr_bucket_type_mmap;






 extern const apr_bucket_type_t apr_bucket_type_pool;



 extern const apr_bucket_type_t apr_bucket_type_pipe;





 extern const apr_bucket_type_t apr_bucket_type_immortal;





 extern const apr_bucket_type_t apr_bucket_type_transient;



 extern const apr_bucket_type_t apr_bucket_type_socket;
# 1235 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_bucket_simple_split(apr_bucket *b,
                                                         apr_size_t point);
# 1248 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_bucket_simple_copy(apr_bucket *a,
                                                        apr_bucket **b);
# 1268 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_shared_make(apr_bucket *b, void *data,
                     apr_off_t start,
                                                 apr_size_t length);
# 1280 "/usr/include/apr-1/apr_buckets.h"
int apr_bucket_shared_destroy(void *data);
# 1293 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_bucket_shared_split(apr_bucket *b,
                                                         apr_size_t point);
# 1305 "/usr/include/apr-1/apr_buckets.h"
apr_status_t apr_bucket_shared_copy(apr_bucket *a,
                                                        apr_bucket **b);
# 1327 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_eos_create(apr_bucket_alloc_t *list);
# 1336 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_eos_make(apr_bucket *b);
# 1345 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_flush_create(apr_bucket_alloc_t *list);
# 1354 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_flush_make(apr_bucket *b);
# 1363 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_immortal_create(const char *buf,
                                                     apr_size_t nbyte,
                                                     apr_bucket_alloc_t *list);
# 1374 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_immortal_make(apr_bucket *b,
                                                   const char *buf,
                                                   apr_size_t nbyte);
# 1385 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_transient_create(const char *buf,
                                                      apr_size_t nbyte,
                                                      apr_bucket_alloc_t *list);
# 1396 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_transient_make(apr_bucket *b,
                                                    const char *buf,
                                                    apr_size_t nbyte);
# 1414 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_heap_create(const char *buf,
                                                 apr_size_t nbyte,
                                                 void (*free_func)(void *data),
                                                 apr_bucket_alloc_t *list);
# 1427 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_heap_make(apr_bucket *b, const char *buf,
                                               apr_size_t nbyte,
                                               void (*free_func)(void *data));
# 1440 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_pool_create(const char *buf,
                                                 apr_size_t length,
                                                 apr_pool_t *pool,
                                                 apr_bucket_alloc_t *list);
# 1453 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_pool_make(apr_bucket *b, const char *buf,
                                               apr_size_t length,
                                               apr_pool_t *pool);
# 1467 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_mmap_create(apr_mmap_t *mm,
                                                 apr_off_t start,
                                                 apr_size_t length,
                                                 apr_bucket_alloc_t *list);
# 1481 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_mmap_make(apr_bucket *b, apr_mmap_t *mm,
                                               apr_off_t start,
                                               apr_size_t length);
# 1492 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_socket_create(apr_socket_t *thissock,
                                                   apr_bucket_alloc_t *list);






apr_bucket * apr_bucket_socket_make(apr_bucket *b,
                                                 apr_socket_t *thissock);







apr_bucket * apr_bucket_pipe_create(apr_file_t *thispipe,
                                                 apr_bucket_alloc_t *list);







apr_bucket * apr_bucket_pipe_make(apr_bucket *b,
                                               apr_file_t *thispipe);
# 1537 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_file_create(apr_file_t *fd,
                                                 apr_off_t offset,
                                                 apr_size_t len,
                                                 apr_pool_t *p,
                                                 apr_bucket_alloc_t *list);
# 1553 "/usr/include/apr-1/apr_buckets.h"
apr_bucket * apr_bucket_file_make(apr_bucket *b, apr_file_t *fd,
                                               apr_off_t offset,
                                               apr_size_t len, apr_pool_t *p);







apr_status_t apr_bucket_file_enable_mmap(apr_bucket *b,
                                                      int enabled);
# 55 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h" 2
# 1 "/usr/include/apr-1/apr_poll.h" 1
# 80 "/usr/include/apr-1/apr_poll.h"
typedef enum {
    APR_POLLSET_DEFAULT,
    APR_POLLSET_SELECT,
    APR_POLLSET_KQUEUE,
    APR_POLLSET_PORT,
    APR_POLLSET_EPOLL,
    APR_POLLSET_POLL,
    APR_POLLSET_AIO_MSGQ
} apr_pollset_method_e;


typedef enum {
    APR_NO_DESC,
    APR_POLL_SOCKET,
    APR_POLL_FILE,
    APR_POLL_LASTDESC
} apr_datatype_e ;


typedef union {
    apr_file_t *f;
    apr_socket_t *s;
} apr_descriptor;


typedef struct apr_pollfd_t apr_pollfd_t;


struct apr_pollfd_t {
    apr_pool_t *p;
    apr_datatype_e desc_type;
    apr_int16_t reqevents;
    apr_int16_t rtnevents;
    apr_descriptor desc;
    void *client_data;
};







typedef struct apr_pollset_t apr_pollset_t;
# 154 "/usr/include/apr-1/apr_poll.h"
apr_status_t apr_pollset_create(apr_pollset_t **pollset,
                                             apr_uint32_t size,
                                             apr_pool_t *p,
                                             apr_uint32_t flags);
# 191 "/usr/include/apr-1/apr_poll.h"
apr_status_t apr_pollset_create_ex(apr_pollset_t **pollset,
                                                apr_uint32_t size,
                                                apr_pool_t *p,
                                                apr_uint32_t flags,
                                                apr_pollset_method_e method);





apr_status_t apr_pollset_destroy(apr_pollset_t *pollset);
# 229 "/usr/include/apr-1/apr_poll.h"
apr_status_t apr_pollset_add(apr_pollset_t *pollset,
                                          const apr_pollfd_t *descriptor);
# 250 "/usr/include/apr-1/apr_poll.h"
apr_status_t apr_pollset_remove(apr_pollset_t *pollset,
                                             const apr_pollfd_t *descriptor);
# 271 "/usr/include/apr-1/apr_poll.h"
apr_status_t apr_pollset_poll(apr_pollset_t *pollset,
                                           apr_interval_time_t timeout,
                                           apr_int32_t *num,
                                           const apr_pollfd_t **descriptors);







apr_status_t apr_pollset_wakeup(apr_pollset_t *pollset);
# 300 "/usr/include/apr-1/apr_poll.h"
apr_status_t apr_poll(apr_pollfd_t *aprset, apr_int32_t numsock,
                                   apr_int32_t *nsds,
                                   apr_interval_time_t timeout);





const char * apr_pollset_method_name(apr_pollset_t *pollset);





const char * apr_poll_method_defname(void);


typedef struct apr_pollcb_t apr_pollcb_t;
# 329 "/usr/include/apr-1/apr_poll.h"
apr_status_t apr_pollcb_create(apr_pollcb_t **pollcb,
                                            apr_uint32_t size,
                                            apr_pool_t *p,
                                            apr_uint32_t flags);
# 347 "/usr/include/apr-1/apr_poll.h"
apr_status_t apr_pollcb_create_ex(apr_pollcb_t **pollcb,
                                               apr_uint32_t size,
                                               apr_pool_t *p,
                                               apr_uint32_t flags,
                                               apr_pollset_method_e method);
# 370 "/usr/include/apr-1/apr_poll.h"
apr_status_t apr_pollcb_add(apr_pollcb_t *pollcb,
                                         apr_pollfd_t *descriptor);
# 380 "/usr/include/apr-1/apr_poll.h"
apr_status_t apr_pollcb_remove(apr_pollcb_t *pollcb,
                                            apr_pollfd_t *descriptor);







typedef apr_status_t (*apr_pollcb_cb_t)(void *baton, apr_pollfd_t *descriptor);
# 405 "/usr/include/apr-1/apr_poll.h"
apr_status_t apr_pollcb_poll(apr_pollcb_t *pollcb,
                                          apr_interval_time_t timeout,
                                          apr_pollcb_cb_t func,
                                          void *baton);
# 56 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h" 2



# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_regex.h" 1
# 77 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_regex.h"
enum {
  AP_REG_ASSERT = 1,
  AP_REG_ESPACE,
  AP_REG_INVARG,
  AP_REG_NOMATCH
};


typedef struct {
    void *re_pcre;
    apr_size_t re_nsub;
    apr_size_t re_erroffset;
} ap_regex_t;


typedef struct {
    int rm_so;
    int rm_eo;
} ap_regmatch_t;
# 106 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_regex.h"
int ap_regcomp(ap_regex_t *preg, const char *regex, int cflags);
# 117 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_regex.h"
int ap_regexec(const ap_regex_t *preg, const char *string,
                           apr_size_t nmatch, ap_regmatch_t *pmatch, int eflags);
# 127 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_regex.h"
apr_size_t ap_regerror(int errcode, const ap_regex_t *preg,
                                   char *errbuf, apr_size_t errbuf_size);




void ap_regfree(ap_regex_t *preg);
# 60 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h" 2


# 1 "/usr/include/stdlib.h" 1 3 4
# 32 "/usr/include/stdlib.h" 3 4
# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 1 3 4
# 324 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 3 4
typedef int wchar_t;
# 33 "/usr/include/stdlib.h" 2 3 4


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
# 321 "/usr/include/stdlib.h" 3 4
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

# 63 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h" 2
# 415 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
typedef struct {
    int major;
    int minor;
    int patch;
    const char *add_string;
} ap_version_t;







void ap_get_server_revision(ap_version_t *version);






const char * ap_get_server_version(void);







const char * ap_get_server_banner(void);
# 452 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
const char * ap_get_server_description(void);
# 461 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
void ap_add_version_component(apr_pool_t *pconf, const char *component);





const char * ap_get_server_built(void);
# 620 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
typedef struct ap_method_list_t ap_method_list_t;
# 629 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
struct ap_method_list_t {

    apr_int64_t method_mask;

    apr_array_header_t *method_list;
};
# 721 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
struct htaccess_result {

    const char *dir;

    int override;

    int override_opts;

    struct ap_conf_vector_t *htaccess;

    const struct htaccess_result *next;
};
# 743 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
typedef struct process_rec process_rec;

typedef struct server_rec server_rec;

typedef struct conn_rec conn_rec;

typedef struct request_rec request_rec;

typedef struct conn_state_t conn_state_t;



# 1 "/usr/include/apr-1/apr_uri.h" 1
# 80 "/usr/include/apr-1/apr_uri.h"
typedef struct apr_uri_t apr_uri_t;




struct apr_uri_t {

    char *scheme;

    char *hostinfo;

    char *user;

    char *password;

    char *hostname;

    char *port_str;

    char *path;

    char *query;

    char *fragment;


    struct hostent *hostent;


    apr_port_t port;


    unsigned is_initialized:1;


    unsigned dns_looked_up:1;

    unsigned dns_resolved:1;
};
# 127 "/usr/include/apr-1/apr_uri.h"
apr_port_t apr_uri_port_of_scheme(const char *scheme_str);
# 146 "/usr/include/apr-1/apr_uri.h"
char * apr_uri_unparse(apr_pool_t *p,
                                    const apr_uri_t *uptr,
                                    unsigned flags);
# 159 "/usr/include/apr-1/apr_uri.h"
apr_status_t apr_uri_parse(apr_pool_t *p, const char *uri,
                                        apr_uri_t *uptr);
# 169 "/usr/include/apr-1/apr_uri.h"
apr_status_t apr_uri_parse_hostinfo(apr_pool_t *p,
                                                 const char *hostinfo,
                                                 apr_uri_t *uptr);
# 756 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h" 2




struct process_rec {

    apr_pool_t *pool;

    apr_pool_t *pconf;

    int argc;

    const char * const *argv;

    const char *short_name;
};




struct request_rec {

    apr_pool_t *pool;

    conn_rec *connection;

    server_rec *server;


    request_rec *next;

    request_rec *prev;



    request_rec *main;





    char *the_request;

    int assbackwards;




    int proxyreq;

    int header_only;

    char *protocol;

    int proto_num;

    const char *hostname;


    apr_time_t request_time;


    const char *status_line;

    int status;






    const char *method;

    int method_number;
# 851 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
    apr_int64_t allowed;

    apr_array_header_t *allowed_xmethods;

    ap_method_list_t *allowed_methods;


    apr_off_t sent_bodyct;

    apr_off_t bytes_sent;

    apr_time_t mtime;




    int chunked;

    const char *range;

    apr_off_t clength;


    apr_off_t remaining;

    apr_off_t read_length;



    int read_body;

    int read_chunked;

    unsigned expecting_100;
# 899 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
    apr_table_t *headers_in;

    apr_table_t *headers_out;


    apr_table_t *err_headers_out;

    apr_table_t *subprocess_env;

    apr_table_t *notes;






    const char *content_type;

    const char *handler;


    const char *content_encoding;

    apr_array_header_t *content_languages;


    char *vlist_validator;


    char *user;

    char *ap_auth_type;


    int no_cache;

    int no_local_copy;






    char *unparsed_uri;

    char *uri;

    char *filename;


    char *canonical_filename;

    char *path_info;

    char *args;

    apr_finfo_t finfo;

    apr_uri_t parsed_uri;
# 967 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
    int used_path_info;







    struct ap_conf_vector_t *per_dir_config;

    struct ap_conf_vector_t *request_config;







    const struct htaccess_result *htaccess;


    struct ap_filter_t *output_filters;

    struct ap_filter_t *input_filters;



    struct ap_filter_t *proto_output_filters;


    struct ap_filter_t *proto_input_filters;


    int eos_sent;






};
# 1029 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
typedef enum {
    AP_CONN_UNKNOWN,
    AP_CONN_CLOSE,
    AP_CONN_KEEPALIVE
} ap_conn_keepalive_e;




struct conn_rec {

    apr_pool_t *pool;

    server_rec *base_server;

    void *vhost_lookup_data;



    apr_sockaddr_t *local_addr;

    apr_sockaddr_t *remote_addr;


    char *remote_ip;



    char *remote_host;


    char *remote_logname;


    unsigned aborted:1;



    ap_conn_keepalive_e keepalive;



    signed int double_reverse:2;


    int keepalives;

    char *local_ip;


    char *local_host;


    long id;


    struct ap_conf_vector_t *conn_config;


    apr_table_t *notes;

    struct ap_filter_t *input_filters;

    struct ap_filter_t *output_filters;

    void *sbh;

    struct apr_bucket_alloc_t *bucket_alloc;

    conn_state_t *cs;

    int data_in_input_filters;




    int clogging_input_filters;
};




typedef enum {
    CONN_STATE_CHECK_REQUEST_LINE_READABLE,
    CONN_STATE_READ_REQUEST_LINE,
    CONN_STATE_LINGER
} conn_state_e;




struct conn_state_t {

    struct { struct conn_state_t * volatile next; struct conn_state_t * volatile prev; } timeout_list;

    apr_time_t expiration_time;

    conn_state_e state;

    conn_rec *c;

    apr_pool_t *p;

    apr_bucket_alloc_t *bucket_alloc;

    apr_pollfd_t pfd;
};
# 1150 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
typedef struct server_addr_rec server_addr_rec;
struct server_addr_rec {

    server_addr_rec *next;

    apr_sockaddr_t *host_addr;

    apr_port_t host_port;

    char *virthost;
};




struct server_rec {

    process_rec *process;

    server_rec *next;


    const char *defn_name;

    unsigned defn_line_number;




    char *server_admin;

    char *server_hostname;

    apr_port_t port;




    char *error_fname;

    apr_file_t *error_log;

    int loglevel;




    int is_virtual;


    struct ap_conf_vector_t *module_config;

    struct ap_conf_vector_t *lookup_defaults;




    server_addr_rec *addrs;

    apr_interval_time_t timeout;

    apr_interval_time_t keep_alive_timeout;

    int keep_alive_max;

    int keep_alive;


    const char *path;

    int pathlen;


    apr_array_header_t *names;

    apr_array_header_t *wild_names;


    int limit_req_line;

    int limit_req_fieldsize;

    int limit_req_fields;


    const char *server_scheme;
};

typedef struct core_output_filter_ctx {
    apr_bucket_brigade *b;



    apr_pool_t *deferred_write_pool;
} core_output_filter_ctx_t;

typedef struct core_filter_ctx {
    apr_bucket_brigade *b;
    apr_bucket_brigade *tmpbb;
} core_ctx_t;

typedef struct core_net_rec {

    apr_socket_t *client_socket;


    conn_rec *c;

    core_output_filter_ctx_t *out_ctx;
    core_ctx_t *in_ctx;
} core_net_rec;
# 1269 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_field_noparam(apr_pool_t *p, const char *intype);
# 1279 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_ht_time(apr_pool_t *p, apr_time_t t, const char *fmt, int gmt);
# 1292 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_getword(apr_pool_t *p, const char **line, char stop);
# 1302 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_getword_nc(apr_pool_t *p, char **line, char stop);
# 1311 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_getword_white(apr_pool_t *p, const char **line);
# 1321 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_getword_white_nc(apr_pool_t *p, char **line);
# 1331 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_getword_nulls(apr_pool_t *p, const char **line,
        char stop);
# 1343 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_getword_nulls_nc(apr_pool_t *p, char **line, char stop);







char * ap_getword_conf(apr_pool_t *p, const char **line);
# 1360 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_getword_conf_nc(apr_pool_t *p, char **line);
# 1371 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
const char * ap_resolve_env(apr_pool_t *p, const char * word);
# 1382 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
const char * ap_size_list_item(const char **field, int *len);
# 1394 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_get_list_item(apr_pool_t *p, const char **field);
# 1404 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
int ap_find_list_item(apr_pool_t *p, const char *line, const char *tok);
# 1416 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_get_token(apr_pool_t *p, const char **accept_line, int accept_white);
# 1425 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
int ap_find_token(apr_pool_t *p, const char *line, const char *tok);
# 1434 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
int ap_find_last_token(apr_pool_t *p, const char *line, const char *tok);






int ap_is_url(const char *u);






int ap_unescape_url(char *url);






int ap_unescape_url_keep2f(char *url);





void ap_no2slash(char *name);






void ap_getparents(char *name);







char * ap_escape_path_segment(apr_pool_t *p, const char *s);
# 1486 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_os_escape_path(apr_pool_t *p, const char *path, int partial);
# 1497 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_escape_html(apr_pool_t *p, const char *s);







char * ap_escape_logitem(apr_pool_t *p, const char *str);
# 1514 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
apr_size_t ap_escape_errorlog_item(char *dest, const char *source,
                                               apr_size_t buflen);
# 1525 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_construct_server(apr_pool_t *p, const char *hostname,
        apr_port_t port, const request_rec *r);







char * ap_escape_shell_cmd(apr_pool_t *p, const char *s);






int ap_count_dirs(const char *path);
# 1554 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_make_dirstr_prefix(char *d, const char *s, int n);
# 1563 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_make_dirstr_parent(apr_pool_t *p, const char *s);
# 1577 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_make_full_path(apr_pool_t *a, const char *dir, const char *f);
# 1587 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
int ap_os_is_path_absolute(apr_pool_t *p, const char *dir);
# 1596 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
int ap_is_matchexp(const char *str);







int ap_strcmp_match(const char *str, const char *expected);
# 1613 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
int ap_strcasecmp_match(const char *str, const char *expected);
# 1622 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_strcasestr(const char *s1, const char *s2);







const char * ap_stripprefix(const char *bigstring,
                                        const char *prefix);







char * ap_pbase64decode(apr_pool_t *p, const char *bufcoded);







char * ap_pbase64encode(apr_pool_t *p, char *string);
# 1661 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
ap_regex_t * ap_pregcomp(apr_pool_t *p, const char *pattern,
                                     int cflags);






void ap_pregfree(apr_pool_t *p, ap_regex_t *reg);
# 1682 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_pregsub(apr_pool_t *p, const char *input, const char *source,
                              size_t nmatch, ap_regmatch_t pmatch[]);






void ap_content_type_tolower(char *s);





void ap_str_tolower(char *s);
# 1705 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
int ap_ind(const char *str, char c);
# 1714 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
int ap_rind(const char *str, char c);







char * ap_escape_quotes(apr_pool_t *p, const char *instring);
# 1734 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_append_pid(apr_pool_t *p, const char *string,
                                 const char *delim);
# 1755 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
apr_status_t ap_timeout_parameter_parse(
                                               const char *timeout_parameter,
                                               apr_interval_time_t *timeout,
                                               const char *default_time_unit);
# 1767 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
int ap_is_rdirectory(apr_pool_t *p, const char *name);







int ap_is_directory(apr_pool_t *p, const char *name);
# 1786 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char *ap_get_local_host(apr_pool_t *p);







void ap_log_assert(const char *szExp, const char *szFile, int nLine)
       __attribute__((noreturn));
# 1850 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
const char * ap_psignature(const char *prefix, request_rec *r);
# 1867 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h"
char * ap_strchr(char *s, int c);
const char * ap_strchr_c(const char *s, int c);
char * ap_strrchr(char *s, int c);
const char * ap_strrchr_c(const char *s, int c);
char * ap_strstr(char *s, const char *c);
const char * ap_strstr_c(const char *s, const char *c);
# 33 "core.c" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h" 1
# 30 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_cfgtree.h" 1
# 35 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_cfgtree.h"
typedef struct ap_directive_t ap_directive_t;
# 46 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_cfgtree.h"
struct ap_directive_t {

    const char *directive;


    const char *args;


    struct ap_directive_t *next;


    struct ap_directive_t *first_child;


    struct ap_directive_t *parent;


    void *data;



    const char *filename;

    int line_num;
};





 extern ap_directive_t *ap_conftree;
# 87 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_cfgtree.h"
ap_directive_t *ap_add_node(ap_directive_t **parent, ap_directive_t *current,
                            ap_directive_t *toadd, int child);
# 31 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h" 2
# 48 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
enum cmd_how {
    RAW_ARGS,
    TAKE1,
    TAKE2,
    ITERATE,


    ITERATE2,


    FLAG,
    NO_ARGS,
    TAKE12,
    TAKE3,
    TAKE23,
    TAKE123,
    TAKE13,
    TAKE_ARGV
};





typedef struct cmd_parms_struct cmd_parms;







typedef union {

    const char *(*no_args) (cmd_parms *parms, void *mconfig);

    const char *(*raw_args) (cmd_parms *parms, void *mconfig,
        const char *args);

    const char *(*take_argv) (cmd_parms *parms, void *mconfig,
        int argc, char *const argv[]);

    const char *(*take1) (cmd_parms *parms, void *mconfig, const char *w);

    const char *(*take2) (cmd_parms *parms, void *mconfig, const char *w,
     const char *w2);

    const char *(*take3) (cmd_parms *parms, void *mconfig, const char *w,
     const char *w2, const char *w3);

    const char *(*flag) (cmd_parms *parms, void *mconfig, int on);
} cmd_func;
# 201 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
typedef struct command_struct command_rec;
struct command_struct {

    const char *name;

    cmd_func func;

    void *cmd_data;

    int req_override;


    enum cmd_how args_how;


    const char *errmsg;
};
# 257 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
typedef struct ap_configfile_t ap_configfile_t;
struct ap_configfile_t {
    int (*getch) (void *param);
    void *(*getstr) (void *buf, size_t bufsiz, void *param);

    int (*close) (void *param);
    void *param;
    const char *name;
    unsigned line_number;
};






struct cmd_parms_struct {

    void *info;

    int override;

    apr_int64_t limited;

    apr_array_header_t *limited_xmethods;

    ap_method_list_t *xlimited;


    ap_configfile_t *config_file;

    ap_directive_t *directive;


    apr_pool_t *pool;


    apr_pool_t *temp_pool;

    server_rec *server;






    char *path;

    const command_rec *cmd;


    struct ap_conf_vector_t *context;

    const ap_directive_t *err_directive;


    int override_opts;
};






typedef struct module_struct module;
struct module_struct {



    int version;


    int minor_version;

    int module_index;


    const char *name;

    void *dynamic_load_handle;



    struct module_struct *next;



    unsigned long magic;





    void (*rewrite_args) (process_rec *process);






    void *(*create_dir_config) (apr_pool_t *p, char *dir);







    void *(*merge_dir_config) (apr_pool_t *p, void *base_conf, void *new_conf);






    void *(*create_server_config) (apr_pool_t *p, server_rec *s);







    void *(*merge_server_config) (apr_pool_t *p, void *base_conf,
                                  void *new_conf);



    const command_rec *cmds;







    void (*register_hooks) (apr_pool_t *p);
};
# 437 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
typedef struct ap_conf_vector_t ap_conf_vector_t;
# 447 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
void * ap_get_module_config(const ap_conf_vector_t *cv,
                                        const module *m);
# 458 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
void ap_set_module_config(ap_conf_vector_t *cv, const module *m,
                                      void *val);
# 478 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
const char * ap_set_string_slot(cmd_parms *cmd,
                                                   void *struct_ptr,
                                                   const char *arg);
# 489 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
const char * ap_set_int_slot(cmd_parms *cmd,
                                                void *struct_ptr,
                                                const char *arg);
# 503 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
int ap_method_is_limited(cmd_parms *cmd, const char *method);
# 513 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
const char * ap_set_string_slot_lower(cmd_parms *cmd,
                                                         void *struct_ptr,
                                                         const char *arg);







const char * ap_set_flag_slot(cmd_parms *cmd,
                                                 void *struct_ptr,
                                                 int arg);







const char * ap_set_file_slot(cmd_parms *cmd,
                                                 void *struct_ptr,
                                                 const char *arg);
# 548 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
const char * ap_set_deprecated(cmd_parms *cmd,
                                                  void *struct_ptr,
                                                  const char *arg);






char * ap_server_root_relative(apr_pool_t *p, const char *fname);
# 566 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
const char * ap_add_module(module *m, apr_pool_t *p);
# 576 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
void ap_remove_module(module *m);





const char * ap_add_loaded_module(module *mod, apr_pool_t *p);




void ap_remove_loaded_module(module *mod);





const char * ap_find_module_name(module *m);





module * ap_find_linked_module(const char *name);







apr_status_t ap_pcfg_openfile(ap_configfile_t **ret_cfg,
                                          apr_pool_t *p, const char *name);
# 619 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
ap_configfile_t * ap_pcfg_open_custom(apr_pool_t *p,
    const char *descr,
    void *param,
    int(*getc_func)(void*),
    void *(*gets_func) (void *buf, size_t bufsiz, void *param),
    int(*close_func)(void *param));
# 633 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
int ap_cfg_getline(char *buf, size_t bufsize, ap_configfile_t *cfp);






int ap_cfg_getc(ap_configfile_t *cfp);






int ap_cfg_closefile(ap_configfile_t *cfp);
# 656 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
const char * ap_soak_end_container(cmd_parms *cmd, char *directive);
# 669 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
const char * ap_build_cont_config(apr_pool_t *p,
                                              apr_pool_t *temp_pool,
                                              cmd_parms *parms,
                                              ap_directive_t **current,
                                              ap_directive_t **curr_parent,
                                              char *orig_directive);
# 684 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
const char * ap_build_config(cmd_parms *parms,
                                         apr_pool_t *conf_pool,
                                         apr_pool_t *temp_pool,
                                         ap_directive_t **conftree);
# 696 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
const char * ap_walk_config(ap_directive_t *conftree,
                                        cmd_parms *parms,
                                        ap_conf_vector_t *section_vector);
# 710 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
const char * ap_check_cmd_context(cmd_parms *cmd,
                                              unsigned forbidden);
# 730 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
typedef struct {
    const char *name;
    module *modp;
} ap_module_symbol_t;





 extern module *ap_top_module;





 extern module *ap_prelinked_modules[];




 extern ap_module_symbol_t ap_prelinked_module_symbols[];




 extern module *ap_preloaded_modules[];




 extern module **ap_loaded_modules;







void ap_single_module_configure(apr_pool_t *p, server_rec *s,
                                            module *m);






const char * ap_setup_prelinked_modules(process_rec *process);






void ap_show_directives(void);




void ap_show_modules(void);





const char * ap_show_mpm(void);
# 804 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
server_rec * ap_read_config(process_rec *process,
                                        apr_pool_t *temp_pool,
                                        const char *config_name,
                                        ap_directive_t **conftree);





void ap_run_rewrite_args(process_rec *process);






void ap_register_hooks(module *m, apr_pool_t *p);






void ap_fixup_virtual_hosts(apr_pool_t *p,
                                        server_rec *main_server);
# 837 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
ap_conf_vector_t* ap_create_request_config(apr_pool_t *p);






ap_conf_vector_t * ap_create_per_dir_config(apr_pool_t *p);







ap_conf_vector_t* ap_merge_per_dir_configs(apr_pool_t *p,
                                           ap_conf_vector_t *base,
                                           ap_conf_vector_t *new_conf);







ap_conf_vector_t* ap_create_conn_config(apr_pool_t *p);
# 875 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
int ap_parse_htaccess(ap_conf_vector_t **result,
                                       request_rec *r, int override,
                                       int override_opts,
                                       const char *path,
                                       const char *access_name);
# 889 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
const char * ap_init_virtual_host(apr_pool_t *p,
                                                   const char *hostname,
                                                   server_rec *main_server,
                                                   server_rec **ps);
# 902 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
const char * ap_process_resource_config(server_rec *s,
                                                    const char *fname,
                                                    ap_directive_t **conftree,
                                                    apr_pool_t *p,
                                                    apr_pool_t *ptemp);
# 916 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
int ap_process_config_tree(server_rec *s,
                                       ap_directive_t *conftree,
                                       apr_pool_t *p,
                                       apr_pool_t *ptemp);
# 928 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
int ap_invoke_handler(request_rec *r);
# 938 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
const command_rec * ap_find_command(const char *name,
                                                     const command_rec *cmds);







const command_rec * ap_find_command_in_modules(const char *cmd_name,
                                                                module **mod);
# 961 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
void * ap_set_config_vectors(server_rec *server,
                                              ap_conf_vector_t *section_vector,
                                              const char *section,
                                              module *mod, apr_pool_t *pconf);
# 975 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
typedef int ap_HOOK_header_parser_t (request_rec *r); void ap_hook_header_parser(ap_HOOK_header_parser_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_header_parser (request_rec *r); apr_array_header_t * ap_hook_get_header_parser(void); typedef struct ap_LINK_header_parser_t { ap_HOOK_header_parser_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_header_parser_t;
# 984 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
typedef int ap_HOOK_pre_config_t (apr_pool_t *pconf,apr_pool_t *plog, apr_pool_t *ptemp); void ap_hook_pre_config(ap_HOOK_pre_config_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_pre_config (apr_pool_t *pconf,apr_pool_t *plog, apr_pool_t *ptemp); apr_array_header_t * ap_hook_get_pre_config(void); typedef struct ap_LINK_pre_config_t { ap_HOOK_pre_config_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_pre_config_t;
# 993 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
typedef void ap_HOOK_test_config_t (apr_pool_t *pconf, server_rec *s); void ap_hook_test_config(ap_HOOK_test_config_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); void ap_run_test_config (apr_pool_t *pconf, server_rec *s); apr_array_header_t * ap_hook_get_test_config(void); typedef struct ap_LINK_test_config_t { ap_HOOK_test_config_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_test_config_t;
# 1003 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
typedef int ap_HOOK_post_config_t (apr_pool_t *pconf,apr_pool_t *plog, apr_pool_t *ptemp,server_rec *s); void ap_hook_post_config(ap_HOOK_post_config_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_post_config (apr_pool_t *pconf,apr_pool_t *plog, apr_pool_t *ptemp,server_rec *s); apr_array_header_t * ap_hook_get_post_config(void); typedef struct ap_LINK_post_config_t { ap_HOOK_post_config_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_post_config_t;
# 1014 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
typedef int ap_HOOK_open_logs_t (apr_pool_t *pconf,apr_pool_t *plog, apr_pool_t *ptemp,server_rec *s); void ap_hook_open_logs(ap_HOOK_open_logs_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_open_logs (apr_pool_t *pconf,apr_pool_t *plog, apr_pool_t *ptemp,server_rec *s); apr_array_header_t * ap_hook_get_open_logs(void); typedef struct ap_LINK_open_logs_t { ap_HOOK_open_logs_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_open_logs_t;







typedef void ap_HOOK_child_init_t (apr_pool_t *pchild, server_rec *s); void ap_hook_child_init(ap_HOOK_child_init_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); void ap_run_child_init (apr_pool_t *pchild, server_rec *s); apr_array_header_t * ap_hook_get_child_init(void); typedef struct ap_LINK_child_init_t { ap_HOOK_child_init_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_child_init_t;






typedef int ap_HOOK_handler_t (request_rec *r); void ap_hook_handler(ap_HOOK_handler_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_handler (request_rec *r); apr_array_header_t * ap_hook_get_handler(void); typedef struct ap_LINK_handler_t { ap_HOOK_handler_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_handler_t;
# 1042 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h"
typedef int ap_HOOK_quick_handler_t (request_rec *r, int lookup_uri); void ap_hook_quick_handler(ap_HOOK_quick_handler_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_quick_handler (request_rec *r, int lookup_uri); apr_array_header_t * ap_hook_get_quick_handler(void); typedef struct ap_LINK_quick_handler_t { ap_HOOK_quick_handler_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_quick_handler_t;






typedef void ap_HOOK_optional_fn_retrieve_t (void); void ap_hook_optional_fn_retrieve(ap_HOOK_optional_fn_retrieve_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); void ap_run_optional_fn_retrieve (void); apr_array_header_t * ap_hook_get_optional_fn_retrieve(void); typedef struct ap_LINK_optional_fn_retrieve_t { ap_HOOK_optional_fn_retrieve_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_optional_fn_retrieve_t;
# 34 "core.c" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h" 1
# 31 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h"
# 1 "/usr/include/apr-1/apr_optional.h" 1
# 59 "/usr/include/apr-1/apr_optional.h"
typedef void (apr_opt_fn_t)(void);

void apr_dynamic_fn_register(const char *szName,
                                                  apr_opt_fn_t *pfn);
# 78 "/usr/include/apr-1/apr_optional.h"
apr_opt_fn_t * apr_dynamic_fn_retrieve(const char *szName);
# 32 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h" 1
# 28 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/httpd.h" 1
# 29 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h" 2
# 50 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
typedef enum {

    AP_MODE_READBYTES,




    AP_MODE_GETLINE,

    AP_MODE_EATCRLF,


    AP_MODE_SPECULATIVE,




    AP_MODE_EXHAUSTIVE,



    AP_MODE_INIT
} ap_input_mode_t;
# 101 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
typedef struct ap_filter_t ap_filter_t;
# 136 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
typedef apr_status_t (*ap_out_filter_func)(ap_filter_t *f,
                                           apr_bucket_brigade *b);
typedef apr_status_t (*ap_in_filter_func)(ap_filter_t *f,
                                          apr_bucket_brigade *b,
                                          ap_input_mode_t mode,
                                          apr_read_type_e block,
                                          apr_off_t readbytes);
typedef int (*ap_init_filter_func)(ap_filter_t *f);

typedef union ap_filter_func {
    ap_out_filter_func out_func;
    ap_in_filter_func in_func;
} ap_filter_func;
# 160 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
typedef enum {


    AP_FTYPE_RESOURCE = 10,



    AP_FTYPE_CONTENT_SET = 20,


    AP_FTYPE_PROTOCOL = 30,

    AP_FTYPE_TRANSCODE = 40,
# 182 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
    AP_FTYPE_CONNECTION = 50,


    AP_FTYPE_NETWORK = 60
} ap_filter_type;
# 201 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
typedef struct ap_filter_rec_t ap_filter_rec_t;
typedef struct ap_filter_provider_t ap_filter_provider_t;
# 217 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
struct ap_filter_rec_t {

    const char *name;


    ap_filter_func filter_func;






    ap_init_filter_func filter_init_func;






    ap_filter_type ftype;


    struct ap_filter_rec_t *next;


    ap_filter_provider_t *providers;


    int debug;


    unsigned int proto_flags;
};
# 258 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
struct ap_filter_t {



    ap_filter_rec_t *frec;


    void *ctx;


    ap_filter_t *next;





    request_rec *r;




    conn_rec *c;
};
# 295 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
apr_status_t ap_get_brigade(ap_filter_t *filter,
                                        apr_bucket_brigade *bucket,
                                        ap_input_mode_t mode,
                                        apr_read_type_e block,
                                        apr_off_t readbytes);
# 309 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
apr_status_t ap_pass_brigade(ap_filter_t *filter,
                                         apr_bucket_brigade *bucket);
# 326 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
ap_filter_rec_t * ap_register_input_filter(const char *name,
                                          ap_in_filter_func filter_func,
                                          ap_init_filter_func filter_init,
                                          ap_filter_type ftype);
# 347 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
ap_filter_rec_t * ap_register_output_filter(const char *name,
                                            ap_out_filter_func filter_func,
                                            ap_init_filter_func filter_init,
                                            ap_filter_type ftype);
# 372 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
ap_filter_rec_t * ap_register_output_filter_protocol(
                                            const char *name,
                                            ap_out_filter_func filter_func,
                                            ap_init_filter_func filter_init,
                                            ap_filter_type ftype,
                                            unsigned int proto_flags);
# 397 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
ap_filter_t * ap_add_input_filter(const char *name, void *ctx,
                                              request_rec *r, conn_rec *c);
# 409 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
ap_filter_t * ap_add_input_filter_handle(ap_filter_rec_t *f,
                                                     void *ctx,
                                                     request_rec *r,
                                                     conn_rec *c);






ap_filter_rec_t * ap_get_input_filter_handle(const char *name);
# 429 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
ap_filter_t * ap_add_output_filter(const char *name, void *ctx,
                                               request_rec *r, conn_rec *c);
# 440 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
ap_filter_t * ap_add_output_filter_handle(ap_filter_rec_t *f,
                                                      void *ctx,
                                                      request_rec *r,
                                                      conn_rec *c);






ap_filter_rec_t * ap_get_output_filter_handle(const char *name);







void ap_remove_input_filter(ap_filter_t *f);







void ap_remove_output_filter(ap_filter_t *f);
# 491 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
apr_status_t ap_save_brigade(ap_filter_t *f,
                                         apr_bucket_brigade **save_to,
                                         apr_bucket_brigade **b, apr_pool_t *p);
# 503 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
apr_status_t ap_filter_flush(apr_bucket_brigade *bb,
                                                void *ctx);






apr_status_t ap_fflush(ap_filter_t *f, apr_bucket_brigade *bb);
# 547 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
apr_status_t ap_fputstrs(ap_filter_t *f,
                                            apr_bucket_brigade *bb,
                                            ...);
# 558 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h"
apr_status_t ap_fprintf(ap_filter_t *f,
                                           apr_bucket_brigade *bb,
                                           const char *fmt,
                                           ...)
        __attribute__((format(printf,3,4)));







void ap_filter_protocol(ap_filter_t* f, unsigned int proto_flags);
# 33 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h" 2
# 139 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h"
int ap_allow_options(request_rec *r);






int ap_allow_overrides(request_rec *r);






const char * ap_default_type(request_rec *r);
# 162 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h"
const char * ap_document_root(request_rec *r);
# 188 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h"
const char * ap_get_remote_host(conn_rec *conn, void *dir_config, int type, int *str_is_ip);







const char * ap_get_remote_logname(request_rec *r);
# 208 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h"
char * ap_construct_url(apr_pool_t *p, const char *uri, request_rec *r);






const char * ap_get_server_name(request_rec *r);






apr_port_t ap_get_server_port(const request_rec *r);






apr_off_t ap_get_limit_req_body(const request_rec *r);






size_t ap_get_limit_xml_body(const request_rec *r);
# 245 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h"
void ap_custom_response(request_rec *r, int status, const char *string);






int ap_is_recursion_limit_exceeded(const request_rec *r);






int ap_exists_config_define(const char *name);

int ap_core_translate(request_rec *r);
# 271 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h"
typedef struct require_line require_line;




struct require_line {

    apr_int64_t method_mask;

    char *requirement;
};






const char * ap_auth_type(request_rec *r);






const char * ap_auth_name(request_rec *r);
# 307 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h"
int ap_satisfies(request_rec *r);






const apr_array_header_t * ap_requires(request_rec *r);
# 323 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h"
 extern module core_module;




typedef struct {


    struct apr_bucket_brigade *bb;






    void **notes;
# 348 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h"
    int deliver_script;




    char **response_code_strings;




    int suppress_charset;
} core_request_config;
# 377 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h"
apr_size_t ap_register_request_note(void);
# 393 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h"
void ** ap_get_request_note(request_rec *r, apr_size_t note_num);


typedef unsigned char allow_options_t;
typedef unsigned char overrides_t;







typedef unsigned long etag_components_t;
# 418 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h"
typedef enum {
    srv_sig_unset,
    srv_sig_off,
    srv_sig_on,
    srv_sig_withmail
} server_signature_e;




typedef struct {

    char *d;

    unsigned d_components;
# 441 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h"
    allow_options_t opts;
    allow_options_t opts_add;
    allow_options_t opts_remove;
    overrides_t override;
    allow_options_t override_opts;






    char *ap_default_type;



    int *satisfy;
    char *ap_auth_type;
    char *ap_auth_name;
    apr_array_header_t *ap_requires;







    char **response_code_strings;







    unsigned int hostname_lookups : 4;

    signed int content_md5 : 2;





    unsigned use_canonical_name : 2;





    unsigned d_is_fnmatch : 1;







    unsigned add_default_charset : 2;
    const char *add_default_charset_name;



    struct rlimit *limit_cpu;


    struct rlimit *limit_mem;


    struct rlimit *limit_nproc;

    apr_off_t limit_req_body;
    long limit_xml_body;



    server_signature_e server_signature;

    int loglevel;


    apr_array_header_t *sec_file;
    ap_regex_t *r;

    const char *mime_type;
    const char *handler;
    const char *output_filters;
    const char *input_filters;
    int accept_path_info;

    apr_hash_t *ct_output_filters;




    etag_components_t etag_bits;
    etag_components_t etag_add;
    etag_components_t etag_remove;







    unsigned int enable_mmap : 2;




    unsigned int enable_sendfile : 2;
    unsigned int allow_encoded_slashes : 1;





    unsigned use_canonical_phys_port : 2;

} core_dir_config;



typedef struct {
# 572 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h"
    const char *ap_document_root;



    char *access_name;
    apr_array_header_t *sec_dir;
    apr_array_header_t *sec_url;


    int redirect_limit;
    int subreq_limit;

    const char *protocol;
    apr_table_t *accf_map;






    int trace_enable;

} core_server_config;


void ap_add_output_filters_by_type(request_rec *r);


void ap_core_reorder_directories(apr_pool_t *, server_rec *);


void ap_add_per_dir_conf(server_rec *s, void *dir_config);
void ap_add_per_url_conf(server_rec *s, void *url_config);
void ap_add_file_conf(core_dir_config *conf, void *url_config);
const char * ap_limit_section(cmd_parms *cmd, void *dummy, const char *arg);


int ap_core_input_filter(ap_filter_t *f, apr_bucket_brigade *b,
                         ap_input_mode_t mode, apr_read_type_e block,
                         apr_off_t readbytes);
apr_status_t ap_core_output_filter(ap_filter_t *f, apr_bucket_brigade *b);



const char* ap_get_server_protocol(server_rec* s);
void ap_set_server_protocol(server_rec* s, const char* proto);






typedef enum {
    ap_mgmt_type_string,
    ap_mgmt_type_long,
    ap_mgmt_type_hash
} ap_mgmt_type_e;

typedef union {
    const char *s_value;
    long i_value;
    apr_hash_t *h_value;
} ap_mgmt_value;

typedef struct {
    const char *description;
    const char *name;
    ap_mgmt_type_e vtype;
    ap_mgmt_value v;
} ap_mgmt_item_t;


extern ap_filter_rec_t *ap_subreq_core_filter_handle;
extern ap_filter_rec_t *ap_core_output_filter_handle;
extern ap_filter_rec_t *ap_content_length_filter_handle;
extern ap_filter_rec_t *ap_core_input_filter_handle;
# 662 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h"
typedef int ap_HOOK_get_mgmt_items_t (apr_pool_t *p, const char * val, apr_hash_t *ht); void ap_hook_get_mgmt_items(ap_HOOK_get_mgmt_items_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_get_mgmt_items (apr_pool_t *p, const char * val, apr_hash_t *ht); apr_array_header_t * ap_hook_get_get_mgmt_items(void); typedef struct ap_LINK_get_mgmt_items_t { ap_HOOK_get_mgmt_items_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_get_mgmt_items_t;
# 672 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_core.h"
typedef void (apr_OFN_ap_logio_add_bytes_out_t) (conn_rec *c, apr_off_t bytes)
                                                       ;

typedef void (apr_OFN_ap_logio_add_bytes_in_t) (conn_rec *c, apr_off_t bytes)
                                                       ;






typedef const char * (apr_OFN_ap_ident_lookup_t) (request_rec *r)
                                         ;
# 35 "core.c" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h" 1
# 31 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
# 1 "/usr/include/apr-1/apr_portable.h" 1
# 30 "/usr/include/apr-1/apr_portable.h"
# 1 "/usr/include/apr-1/apr_thread_proc.h" 1
# 31 "/usr/include/apr-1/apr_portable.h" 2



# 1 "/usr/include/apr-1/apr_global_mutex.h" 1
# 26 "/usr/include/apr-1/apr_global_mutex.h"
# 1 "/usr/include/apr-1/apr_proc_mutex.h" 1
# 44 "/usr/include/apr-1/apr_proc_mutex.h"
typedef enum {
    APR_LOCK_FCNTL,
    APR_LOCK_FLOCK,
    APR_LOCK_SYSVSEM,
    APR_LOCK_PROC_PTHREAD,
    APR_LOCK_POSIXSEM,
    APR_LOCK_DEFAULT
} apr_lockmech_e;


typedef struct apr_proc_mutex_t apr_proc_mutex_t;
# 79 "/usr/include/apr-1/apr_proc_mutex.h"
apr_status_t apr_proc_mutex_create(apr_proc_mutex_t **mutex,
                                                const char *fname,
                                                apr_lockmech_e mech,
                                                apr_pool_t *pool);
# 95 "/usr/include/apr-1/apr_proc_mutex.h"
apr_status_t apr_proc_mutex_child_init(apr_proc_mutex_t **mutex,
                                                    const char *fname,
                                                    apr_pool_t *pool);






apr_status_t apr_proc_mutex_lock(apr_proc_mutex_t *mutex);
# 113 "/usr/include/apr-1/apr_proc_mutex.h"
apr_status_t apr_proc_mutex_trylock(apr_proc_mutex_t *mutex);





apr_status_t apr_proc_mutex_unlock(apr_proc_mutex_t *mutex);





apr_status_t apr_proc_mutex_destroy(apr_proc_mutex_t *mutex);







apr_status_t apr_proc_mutex_cleanup(void *mutex);






const char * apr_proc_mutex_lockfile(apr_proc_mutex_t *mutex);






const char * apr_proc_mutex_name(apr_proc_mutex_t *mutex);




const char * apr_proc_mutex_defname(void);





apr_pool_t * apr_proc_mutex_pool_get (const apr_proc_mutex_t *theproc_mutex);
# 27 "/usr/include/apr-1/apr_global_mutex.h" 2
# 46 "/usr/include/apr-1/apr_global_mutex.h"
typedef struct apr_global_mutex_t apr_global_mutex_t;
# 74 "/usr/include/apr-1/apr_global_mutex.h"
apr_status_t apr_global_mutex_create(apr_global_mutex_t **mutex,
                                                  const char *fname,
                                                  apr_lockmech_e mech,
                                                  apr_pool_t *pool);
# 90 "/usr/include/apr-1/apr_global_mutex.h"
apr_status_t apr_global_mutex_child_init(
                              apr_global_mutex_t **mutex,
                              const char *fname,
                              apr_pool_t *pool);






apr_status_t apr_global_mutex_lock(apr_global_mutex_t *mutex);
# 109 "/usr/include/apr-1/apr_global_mutex.h"
apr_status_t apr_global_mutex_trylock(apr_global_mutex_t *mutex);





apr_status_t apr_global_mutex_unlock(apr_global_mutex_t *mutex);





apr_status_t apr_global_mutex_destroy(apr_global_mutex_t *mutex);





const char * apr_global_mutex_lockfile(apr_global_mutex_t *mutex);







const char * apr_global_mutex_name(apr_global_mutex_t *mutex);





apr_pool_t * apr_global_mutex_pool_get (const apr_global_mutex_t *theglobal_mutex);
# 35 "/usr/include/apr-1/apr_portable.h" 2


# 1 "/usr/include/apr-1/apr_dso.h" 1
# 44 "/usr/include/apr-1/apr_dso.h"
typedef struct apr_dso_handle_t apr_dso_handle_t;




typedef void * apr_dso_handle_sym_t;
# 59 "/usr/include/apr-1/apr_dso.h"
apr_status_t apr_dso_load(apr_dso_handle_t **res_handle,
                                       const char *path, apr_pool_t *ctx);





apr_status_t apr_dso_unload(apr_dso_handle_t *handle);







apr_status_t apr_dso_sym(apr_dso_handle_sym_t *ressym,
                                      apr_dso_handle_t *handle,
                                      const char *symname);







const char * apr_dso_error(apr_dso_handle_t *dso, char *buf, apr_size_t bufsize);
# 38 "/usr/include/apr-1/apr_portable.h" 2
# 1 "/usr/include/apr-1/apr_shm.h" 1
# 43 "/usr/include/apr-1/apr_shm.h"
typedef struct apr_shm_t apr_shm_t;
# 69 "/usr/include/apr-1/apr_shm.h"
apr_status_t apr_shm_create(apr_shm_t **m,
                                         apr_size_t reqsize,
                                         const char *filename,
                                         apr_pool_t *pool);
# 114 "/usr/include/apr-1/apr_shm.h"
apr_status_t apr_shm_create_ex(apr_shm_t **m,
                                            apr_size_t reqsize,
                                            const char *filename,
                                            apr_pool_t *pool,
                                            apr_int32_t flags);
# 135 "/usr/include/apr-1/apr_shm.h"
apr_status_t apr_shm_remove(const char *filename,
                                         apr_pool_t *pool);





apr_status_t apr_shm_destroy(apr_shm_t *m);
# 153 "/usr/include/apr-1/apr_shm.h"
apr_status_t apr_shm_attach(apr_shm_t **m,
                                         const char *filename,
                                         apr_pool_t *pool);
# 167 "/usr/include/apr-1/apr_shm.h"
apr_status_t apr_shm_attach_ex(apr_shm_t **m,
                                            const char *filename,
                                            apr_pool_t *pool,
                                            apr_int32_t flags);






apr_status_t apr_shm_detach(apr_shm_t *m);
# 188 "/usr/include/apr-1/apr_shm.h"
void * apr_shm_baseaddr_get(const apr_shm_t *m);






apr_size_t apr_shm_size_get(const apr_shm_t *m);




apr_pool_t * apr_shm_pool_get (const apr_shm_t *theshm);
# 39 "/usr/include/apr-1/apr_portable.h" 2


# 1 "/usr/include/dirent.h" 1 3 4
# 27 "/usr/include/dirent.h" 3 4

# 61 "/usr/include/dirent.h" 3 4
# 1 "/usr/include/bits/dirent.h" 1 3 4
# 22 "/usr/include/bits/dirent.h" 3 4
struct dirent
  {

    __ino_t d_ino;
    __off_t d_off;




    unsigned short int d_reclen;
    unsigned char d_type;
    char d_name[256];
  };


struct dirent64
  {
    __ino64_t d_ino;
    __off64_t d_off;
    unsigned short int d_reclen;
    unsigned char d_type;
    char d_name[256];
  };
# 62 "/usr/include/dirent.h" 2 3 4
# 97 "/usr/include/dirent.h" 3 4
enum
  {
    DT_UNKNOWN = 0,

    DT_FIFO = 1,

    DT_CHR = 2,

    DT_DIR = 4,

    DT_BLK = 6,

    DT_REG = 8,

    DT_LNK = 10,

    DT_SOCK = 12,

    DT_WHT = 14

  };
# 127 "/usr/include/dirent.h" 3 4
typedef struct __dirstream DIR;






extern DIR *opendir (const char *__name) __attribute__ ((__nonnull__ (1)));






extern DIR *fdopendir (int __fd);







extern int closedir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
# 162 "/usr/include/dirent.h" 3 4
extern struct dirent *readdir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
# 173 "/usr/include/dirent.h" 3 4
extern struct dirent64 *readdir64 (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
# 183 "/usr/include/dirent.h" 3 4
extern int readdir_r (DIR *__restrict __dirp,
        struct dirent *__restrict __entry,
        struct dirent **__restrict __result)
     __attribute__ ((__nonnull__ (1, 2, 3)));
# 200 "/usr/include/dirent.h" 3 4
extern int readdir64_r (DIR *__restrict __dirp,
   struct dirent64 *__restrict __entry,
   struct dirent64 **__restrict __result)
     __attribute__ ((__nonnull__ (1, 2, 3)));




extern void rewinddir (DIR *__dirp) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern void seekdir (DIR *__dirp, long int __pos) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int telldir (DIR *__dirp) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int dirfd (DIR *__dirp) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 244 "/usr/include/dirent.h" 3 4
# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 1 3 4
# 245 "/usr/include/dirent.h" 2 3 4
# 254 "/usr/include/dirent.h" 3 4
extern int scandir (const char *__restrict __dir,
      struct dirent ***__restrict __namelist,
      int (*__selector) (const struct dirent *),
      int (*__cmp) (const struct dirent **,
      const struct dirent **))
     __attribute__ ((__nonnull__ (1, 2)));
# 277 "/usr/include/dirent.h" 3 4
extern int scandir64 (const char *__restrict __dir,
        struct dirent64 ***__restrict __namelist,
        int (*__selector) (const struct dirent64 *),
        int (*__cmp) (const struct dirent64 **,
        const struct dirent64 **))
     __attribute__ ((__nonnull__ (1, 2)));
# 292 "/usr/include/dirent.h" 3 4
extern int scandirat (int __dfd, const char *__restrict __dir,
        struct dirent ***__restrict __namelist,
        int (*__selector) (const struct dirent *),
        int (*__cmp) (const struct dirent **,
        const struct dirent **))
     __attribute__ ((__nonnull__ (2, 3)));
# 314 "/usr/include/dirent.h" 3 4
extern int scandirat64 (int __dfd, const char *__restrict __dir,
   struct dirent64 ***__restrict __namelist,
   int (*__selector) (const struct dirent64 *),
   int (*__cmp) (const struct dirent64 **,
          const struct dirent64 **))
     __attribute__ ((__nonnull__ (2, 3)));




extern int alphasort (const struct dirent **__e1,
        const struct dirent **__e2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 339 "/usr/include/dirent.h" 3 4
extern int alphasort64 (const struct dirent64 **__e1,
   const struct dirent64 **__e2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 352 "/usr/include/dirent.h" 3 4
extern __ssize_t getdirentries (int __fd, char *__restrict __buf,
    size_t __nbytes,
    __off_t *__restrict __basep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));
# 369 "/usr/include/dirent.h" 3 4
extern __ssize_t getdirentries64 (int __fd, char *__restrict __buf,
      size_t __nbytes,
      __off64_t *__restrict __basep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));






extern int versionsort (const struct dirent **__e1,
   const struct dirent **__e2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 395 "/usr/include/dirent.h" 3 4
extern int versionsort64 (const struct dirent64 **__e1,
     const struct dirent64 **__e2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




# 42 "/usr/include/apr-1/apr_portable.h" 2


# 1 "/usr/include/fcntl.h" 1 3 4
# 28 "/usr/include/fcntl.h" 3 4







# 1 "/usr/include/bits/fcntl.h" 1 3 4
# 35 "/usr/include/bits/fcntl.h" 3 4
struct flock
  {
    short int l_type;
    short int l_whence;

    __off_t l_start;
    __off_t l_len;




    __pid_t l_pid;
  };


struct flock64
  {
    short int l_type;
    short int l_whence;
    __off64_t l_start;
    __off64_t l_len;
    __pid_t l_pid;
  };



# 1 "/usr/include/bits/fcntl-linux.h" 1 3 4
# 38 "/usr/include/bits/fcntl-linux.h" 3 4
# 1 "/usr/include/bits/uio.h" 1 3 4
# 39 "/usr/include/bits/fcntl-linux.h" 2 3 4
# 258 "/usr/include/bits/fcntl-linux.h" 3 4
enum __pid_type
  {
    F_OWNER_TID = 0,
    F_OWNER_PID,
    F_OWNER_PGRP,
    F_OWNER_GID = F_OWNER_PGRP
  };


struct f_owner_ex
  {
    enum __pid_type type;
    __pid_t pid;
  };
# 333 "/usr/include/bits/fcntl-linux.h" 3 4
struct file_handle
{
  unsigned int handle_bytes;
  int handle_type;

  unsigned char f_handle[0];
};










extern ssize_t readahead (int __fd, __off64_t __offset, size_t __count)
    __attribute__ ((__nothrow__ , __leaf__));






extern int sync_file_range (int __fd, __off64_t __offset, __off64_t __count,
       unsigned int __flags);






extern ssize_t vmsplice (int __fdout, const struct iovec *__iov,
    size_t __count, unsigned int __flags);





extern ssize_t splice (int __fdin, __off64_t *__offin, int __fdout,
         __off64_t *__offout, size_t __len,
         unsigned int __flags);





extern ssize_t tee (int __fdin, int __fdout, size_t __len,
      unsigned int __flags);






extern int fallocate (int __fd, int __mode, __off_t __offset, __off_t __len);
# 400 "/usr/include/bits/fcntl-linux.h" 3 4
extern int fallocate64 (int __fd, int __mode, __off64_t __offset,
   __off64_t __len);




extern int name_to_handle_at (int __dfd, const char *__name,
         struct file_handle *__handle, int *__mnt_id,
         int __flags) __attribute__ ((__nothrow__ , __leaf__));





extern int open_by_handle_at (int __mountdirfd, struct file_handle *__handle,
         int __flags);




# 61 "/usr/include/bits/fcntl.h" 2 3 4
# 36 "/usr/include/fcntl.h" 2 3 4
# 67 "/usr/include/fcntl.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 68 "/usr/include/fcntl.h" 2 3 4
# 1 "/usr/include/bits/stat.h" 1 3 4
# 46 "/usr/include/bits/stat.h" 3 4
struct stat
  {
    __dev_t st_dev;




    __ino_t st_ino;







    __nlink_t st_nlink;
    __mode_t st_mode;

    __uid_t st_uid;
    __gid_t st_gid;

    int __pad0;

    __dev_t st_rdev;




    __off_t st_size;



    __blksize_t st_blksize;

    __blkcnt_t st_blocks;
# 91 "/usr/include/bits/stat.h" 3 4
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
# 106 "/usr/include/bits/stat.h" 3 4
    __syscall_slong_t __glibc_reserved[3];
# 115 "/usr/include/bits/stat.h" 3 4
  };



struct stat64
  {
    __dev_t st_dev;

    __ino64_t st_ino;
    __nlink_t st_nlink;
    __mode_t st_mode;






    __uid_t st_uid;
    __gid_t st_gid;

    int __pad0;
    __dev_t st_rdev;
    __off_t st_size;





    __blksize_t st_blksize;
    __blkcnt64_t st_blocks;







    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
# 164 "/usr/include/bits/stat.h" 3 4
    __syscall_slong_t __glibc_reserved[3];



  };
# 69 "/usr/include/fcntl.h" 2 3 4
# 160 "/usr/include/fcntl.h" 3 4
extern int fcntl (int __fd, int __cmd, ...);
# 169 "/usr/include/fcntl.h" 3 4
extern int open (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
# 179 "/usr/include/fcntl.h" 3 4
extern int open64 (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
# 193 "/usr/include/fcntl.h" 3 4
extern int openat (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
# 204 "/usr/include/fcntl.h" 3 4
extern int openat64 (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
# 215 "/usr/include/fcntl.h" 3 4
extern int creat (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
# 225 "/usr/include/fcntl.h" 3 4
extern int creat64 (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
# 244 "/usr/include/fcntl.h" 3 4
extern int lockf (int __fd, int __cmd, off_t __len);
# 253 "/usr/include/fcntl.h" 3 4
extern int lockf64 (int __fd, int __cmd, off64_t __len);







extern int posix_fadvise (int __fd, off_t __offset, off_t __len,
     int __advise) __attribute__ ((__nothrow__ , __leaf__));
# 273 "/usr/include/fcntl.h" 3 4
extern int posix_fadvise64 (int __fd, off64_t __offset, off64_t __len,
       int __advise) __attribute__ ((__nothrow__ , __leaf__));
# 283 "/usr/include/fcntl.h" 3 4
extern int posix_fallocate (int __fd, off_t __offset, off_t __len);
# 294 "/usr/include/fcntl.h" 3 4
extern int posix_fallocate64 (int __fd, off64_t __offset, off64_t __len);
# 305 "/usr/include/fcntl.h" 3 4

# 45 "/usr/include/apr-1/apr_portable.h" 2


# 1 "/usr/include/pthread.h" 1 3 4
# 23 "/usr/include/pthread.h" 3 4
# 1 "/usr/include/sched.h" 1 3 4
# 28 "/usr/include/sched.h" 3 4
# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 1 3 4
# 29 "/usr/include/sched.h" 2 3 4





# 1 "/usr/include/time.h" 1 3 4
# 35 "/usr/include/sched.h" 2 3 4
# 43 "/usr/include/sched.h" 3 4
# 1 "/usr/include/bits/sched.h" 1 3 4
# 72 "/usr/include/bits/sched.h" 3 4
struct sched_param
  {
    int __sched_priority;
  };





extern int clone (int (*__fn) (void *__arg), void *__child_stack,
    int __flags, void *__arg, ...) __attribute__ ((__nothrow__ , __leaf__));


extern int unshare (int __flags) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_getcpu (void) __attribute__ ((__nothrow__ , __leaf__));


extern int setns (int __fd, int __nstype) __attribute__ ((__nothrow__ , __leaf__));











struct __sched_param
  {
    int __sched_priority;
  };
# 118 "/usr/include/bits/sched.h" 3 4
typedef unsigned long int __cpu_mask;






typedef struct
{
  __cpu_mask __bits[1024 / (8 * sizeof (__cpu_mask))];
} cpu_set_t;
# 201 "/usr/include/bits/sched.h" 3 4


extern int __sched_cpucount (size_t __setsize, const cpu_set_t *__setp)
  __attribute__ ((__nothrow__ , __leaf__));
extern cpu_set_t *__sched_cpualloc (size_t __count) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void __sched_cpufree (cpu_set_t *__set) __attribute__ ((__nothrow__ , __leaf__));


# 44 "/usr/include/sched.h" 2 3 4







extern int sched_setparam (__pid_t __pid, const struct sched_param *__param)
     __attribute__ ((__nothrow__ , __leaf__));


extern int sched_getparam (__pid_t __pid, struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_setscheduler (__pid_t __pid, int __policy,
          const struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_getscheduler (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_yield (void) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_get_priority_max (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_get_priority_min (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_rr_get_interval (__pid_t __pid, struct timespec *__t) __attribute__ ((__nothrow__ , __leaf__));
# 118 "/usr/include/sched.h" 3 4
extern int sched_setaffinity (__pid_t __pid, size_t __cpusetsize,
         const cpu_set_t *__cpuset) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_getaffinity (__pid_t __pid, size_t __cpusetsize,
         cpu_set_t *__cpuset) __attribute__ ((__nothrow__ , __leaf__));



# 24 "/usr/include/pthread.h" 2 3 4
# 1 "/usr/include/time.h" 1 3 4
# 29 "/usr/include/time.h" 3 4








# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 1 3 4
# 38 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/bits/time.h" 1 3 4
# 88 "/usr/include/bits/time.h" 3 4
# 1 "/usr/include/bits/timex.h" 1 3 4
# 25 "/usr/include/bits/timex.h" 3 4
struct timex
{
  unsigned int modes;
  __syscall_slong_t offset;
  __syscall_slong_t freq;
  __syscall_slong_t maxerror;
  __syscall_slong_t esterror;
  int status;
  __syscall_slong_t constant;
  __syscall_slong_t precision;
  __syscall_slong_t tolerance;
  struct timeval time;
  __syscall_slong_t tick;
  __syscall_slong_t ppsfreq;
  __syscall_slong_t jitter;
  int shift;
  __syscall_slong_t stabil;
  __syscall_slong_t jitcnt;
  __syscall_slong_t calcnt;
  __syscall_slong_t errcnt;
  __syscall_slong_t stbcnt;

  int tai;


  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32;
};
# 89 "/usr/include/bits/time.h" 2 3 4




extern int clock_adjtime (__clockid_t __clock_id, struct timex *__utx) __attribute__ ((__nothrow__ , __leaf__));


# 42 "/usr/include/time.h" 2 3 4
# 131 "/usr/include/time.h" 3 4


struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;


  long int tm_gmtoff;
  const char *tm_zone;




};








struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };


struct sigevent;
# 186 "/usr/include/time.h" 3 4



extern clock_t clock (void) __attribute__ ((__nothrow__ , __leaf__));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));





extern char *strptime (const char *__restrict __s,
         const char *__restrict __fmt, struct tm *__tp)
     __attribute__ ((__nothrow__ , __leaf__));







extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     __locale_t __loc) __attribute__ ((__nothrow__ , __leaf__));



extern char *strptime_l (const char *__restrict __s,
    const char *__restrict __fmt, struct tm *__tp,
    __locale_t __loc) __attribute__ ((__nothrow__ , __leaf__));






extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));





extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));



extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));





extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));







extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));


extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));




extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;




extern char *tzname[2];



extern void tzset (void) __attribute__ ((__nothrow__ , __leaf__));



extern int daylight;
extern long int timezone;





extern int stime (const time_t *__when) __attribute__ ((__nothrow__ , __leaf__));
# 319 "/usr/include/time.h" 3 4
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern int dysize (int __year) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 334 "/usr/include/time.h" 3 4
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);



extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__ , __leaf__));


extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __attribute__ ((__nothrow__ , __leaf__));


extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     __attribute__ ((__nothrow__ , __leaf__));






extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);


extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__ , __leaf__));




extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__ , __leaf__));


extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__ , __leaf__));


extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));





extern int timespec_get (struct timespec *__ts, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 403 "/usr/include/time.h" 3 4
extern int getdate_err;
# 412 "/usr/include/time.h" 3 4
extern struct tm *getdate (const char *__string);
# 426 "/usr/include/time.h" 3 4
extern int getdate_r (const char *__restrict __string,
        struct tm *__restrict __resbufp);



# 25 "/usr/include/pthread.h" 2 3 4


# 1 "/usr/include/bits/setjmp.h" 1 3 4
# 26 "/usr/include/bits/setjmp.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 27 "/usr/include/bits/setjmp.h" 2 3 4




typedef long int __jmp_buf[8];
# 28 "/usr/include/pthread.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/pthread.h" 2 3 4



enum
{
  PTHREAD_CREATE_JOINABLE,

  PTHREAD_CREATE_DETACHED

};



enum
{
  PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_ADAPTIVE_NP

  ,
  PTHREAD_MUTEX_NORMAL = PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE = PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK = PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_NORMAL



  , PTHREAD_MUTEX_FAST_NP = PTHREAD_MUTEX_TIMED_NP

};




enum
{
  PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_STALLED_NP = PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_ROBUST,
  PTHREAD_MUTEX_ROBUST_NP = PTHREAD_MUTEX_ROBUST
};





enum
{
  PTHREAD_PRIO_NONE,
  PTHREAD_PRIO_INHERIT,
  PTHREAD_PRIO_PROTECT
};
# 116 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_RWLOCK_PREFER_READER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
  PTHREAD_RWLOCK_DEFAULT_NP = PTHREAD_RWLOCK_PREFER_READER_NP
};
# 157 "/usr/include/pthread.h" 3 4
enum
{
  PTHREAD_INHERIT_SCHED,

  PTHREAD_EXPLICIT_SCHED

};



enum
{
  PTHREAD_SCOPE_SYSTEM,

  PTHREAD_SCOPE_PROCESS

};



enum
{
  PTHREAD_PROCESS_PRIVATE,

  PTHREAD_PROCESS_SHARED

};
# 192 "/usr/include/pthread.h" 3 4
struct _pthread_cleanup_buffer
{
  void (*__routine) (void *);
  void *__arg;
  int __canceltype;
  struct _pthread_cleanup_buffer *__prev;
};


enum
{
  PTHREAD_CANCEL_ENABLE,

  PTHREAD_CANCEL_DISABLE

};
enum
{
  PTHREAD_CANCEL_DEFERRED,

  PTHREAD_CANCEL_ASYNCHRONOUS

};
# 230 "/usr/include/pthread.h" 3 4





extern int pthread_create (pthread_t *__restrict __newthread,
      const pthread_attr_t *__restrict __attr,
      void *(*__start_routine) (void *),
      void *__restrict __arg) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3)));





extern void pthread_exit (void *__retval) __attribute__ ((__noreturn__));







extern int pthread_join (pthread_t __th, void **__thread_return);




extern int pthread_tryjoin_np (pthread_t __th, void **__thread_return) __attribute__ ((__nothrow__ , __leaf__));







extern int pthread_timedjoin_np (pthread_t __th, void **__thread_return,
     const struct timespec *__abstime);






extern int pthread_detach (pthread_t __th) __attribute__ ((__nothrow__ , __leaf__));



extern pthread_t pthread_self (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern int pthread_equal (pthread_t __thread1, pthread_t __thread2)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));







extern int pthread_attr_init (pthread_attr_t *__attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_destroy (pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getdetachstate (const pthread_attr_t *__attr,
     int *__detachstate)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setdetachstate (pthread_attr_t *__attr,
     int __detachstate)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getguardsize (const pthread_attr_t *__attr,
          size_t *__guardsize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setguardsize (pthread_attr_t *__attr,
          size_t __guardsize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getschedparam (const pthread_attr_t *__restrict __attr,
           struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedparam (pthread_attr_t *__restrict __attr,
           const struct sched_param *__restrict
           __param) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_getschedpolicy (const pthread_attr_t *__restrict
     __attr, int *__restrict __policy)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setschedpolicy (pthread_attr_t *__attr, int __policy)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getinheritsched (const pthread_attr_t *__restrict
      __attr, int *__restrict __inherit)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setinheritsched (pthread_attr_t *__attr,
      int __inherit)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getscope (const pthread_attr_t *__restrict __attr,
      int *__restrict __scope)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_attr_setscope (pthread_attr_t *__attr, int __scope)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_attr_getstackaddr (const pthread_attr_t *__restrict
          __attr, void **__restrict __stackaddr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__deprecated__));





extern int pthread_attr_setstackaddr (pthread_attr_t *__attr,
          void *__stackaddr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__));


extern int pthread_attr_getstacksize (const pthread_attr_t *__restrict
          __attr, size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_attr_setstacksize (pthread_attr_t *__attr,
          size_t __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_attr_getstack (const pthread_attr_t *__restrict __attr,
      void **__restrict __stackaddr,
      size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3)));




extern int pthread_attr_setstack (pthread_attr_t *__attr, void *__stackaddr,
      size_t __stacksize) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int pthread_attr_setaffinity_np (pthread_attr_t *__attr,
     size_t __cpusetsize,
     const cpu_set_t *__cpuset)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));



extern int pthread_attr_getaffinity_np (const pthread_attr_t *__attr,
     size_t __cpusetsize,
     cpu_set_t *__cpuset)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));


extern int pthread_getattr_default_np (pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_setattr_default_np (const pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




extern int pthread_getattr_np (pthread_t __th, pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));







extern int pthread_setschedparam (pthread_t __target_thread, int __policy,
      const struct sched_param *__param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));


extern int pthread_getschedparam (pthread_t __target_thread,
      int *__restrict __policy,
      struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));


extern int pthread_setschedprio (pthread_t __target_thread, int __prio)
     __attribute__ ((__nothrow__ , __leaf__));




extern int pthread_getname_np (pthread_t __target_thread, char *__buf,
          size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern int pthread_setname_np (pthread_t __target_thread, const char *__name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));





extern int pthread_getconcurrency (void) __attribute__ ((__nothrow__ , __leaf__));


extern int pthread_setconcurrency (int __level) __attribute__ ((__nothrow__ , __leaf__));







extern int pthread_yield (void) __attribute__ ((__nothrow__ , __leaf__));




extern int pthread_setaffinity_np (pthread_t __th, size_t __cpusetsize,
       const cpu_set_t *__cpuset)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));


extern int pthread_getaffinity_np (pthread_t __th, size_t __cpusetsize,
       cpu_set_t *__cpuset)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
# 496 "/usr/include/pthread.h" 3 4
extern int pthread_once (pthread_once_t *__once_control,
    void (*__init_routine) (void)) __attribute__ ((__nonnull__ (1, 2)));
# 508 "/usr/include/pthread.h" 3 4
extern int pthread_setcancelstate (int __state, int *__oldstate);



extern int pthread_setcanceltype (int __type, int *__oldtype);


extern int pthread_cancel (pthread_t __th);




extern void pthread_testcancel (void);




typedef struct
{
  struct
  {
    __jmp_buf __cancel_jmp_buf;
    int __mask_was_saved;
  } __cancel_jmp_buf[1];
  void *__pad[4];
} __pthread_unwind_buf_t __attribute__ ((__aligned__));
# 542 "/usr/include/pthread.h" 3 4
struct __pthread_cleanup_frame
{
  void (*__cancel_routine) (void *);
  void *__cancel_arg;
  int __do_it;
  int __cancel_type;
};
# 682 "/usr/include/pthread.h" 3 4
extern void __pthread_register_cancel (__pthread_unwind_buf_t *__buf)
     ;
# 694 "/usr/include/pthread.h" 3 4
extern void __pthread_unregister_cancel (__pthread_unwind_buf_t *__buf)
  ;
# 717 "/usr/include/pthread.h" 3 4
extern void __pthread_register_cancel_defer (__pthread_unwind_buf_t *__buf)
     ;
# 730 "/usr/include/pthread.h" 3 4
extern void __pthread_unregister_cancel_restore (__pthread_unwind_buf_t *__buf)
  ;



extern void __pthread_unwind_next (__pthread_unwind_buf_t *__buf)
     __attribute__ ((__noreturn__))

     __attribute__ ((__weak__))

     ;



struct __jmp_buf_tag;
extern int __sigsetjmp (struct __jmp_buf_tag *__env, int __savemask) __attribute__ ((__nothrow__));





extern int pthread_mutex_init (pthread_mutex_t *__mutex,
          const pthread_mutexattr_t *__mutexattr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_destroy (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_trylock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutex_lock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_timedlock (pthread_mutex_t *__restrict __mutex,
        const struct timespec *__restrict
        __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutex_unlock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutex_getprioceiling (const pthread_mutex_t *
      __restrict __mutex,
      int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutex_setprioceiling (pthread_mutex_t *__restrict __mutex,
      int __prioceiling,
      int *__restrict __old_ceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));




extern int pthread_mutex_consistent (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern int pthread_mutex_consistent_np (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 808 "/usr/include/pthread.h" 3 4
extern int pthread_mutexattr_init (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_destroy (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getpshared (const pthread_mutexattr_t *
      __restrict __attr,
      int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setpshared (pthread_mutexattr_t *__attr,
      int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_gettype (const pthread_mutexattr_t *__restrict
          __attr, int *__restrict __kind)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern int pthread_mutexattr_settype (pthread_mutexattr_t *__attr, int __kind)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getprotocol (const pthread_mutexattr_t *
       __restrict __attr,
       int *__restrict __protocol)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutexattr_setprotocol (pthread_mutexattr_t *__attr,
       int __protocol)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_mutexattr_getprioceiling (const pthread_mutexattr_t *
          __restrict __attr,
          int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_mutexattr_setprioceiling (pthread_mutexattr_t *__attr,
          int __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_mutexattr_getrobust (const pthread_mutexattr_t *__attr,
     int *__robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int pthread_mutexattr_getrobust_np (const pthread_mutexattr_t *__attr,
        int *__robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
     int __robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern int pthread_mutexattr_setrobust_np (pthread_mutexattr_t *__attr,
        int __robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 890 "/usr/include/pthread.h" 3 4
extern int pthread_rwlock_init (pthread_rwlock_t *__restrict __rwlock,
    const pthread_rwlockattr_t *__restrict
    __attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_destroy (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_rdlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_tryrdlock (pthread_rwlock_t *__rwlock)
  __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedrdlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_rwlock_wrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlock_trywrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_rwlock_timedwrlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int pthread_rwlock_unlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int pthread_rwlockattr_init (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_destroy (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getpshared (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setpshared (pthread_rwlockattr_t *__attr,
       int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_rwlockattr_getkind_np (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pref)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_rwlockattr_setkind_np (pthread_rwlockattr_t *__attr,
       int __pref) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int pthread_cond_init (pthread_cond_t *__restrict __cond,
         const pthread_condattr_t *__restrict __cond_attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_destroy (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_signal (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_cond_broadcast (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_cond_wait (pthread_cond_t *__restrict __cond,
         pthread_mutex_t *__restrict __mutex)
     __attribute__ ((__nonnull__ (1, 2)));
# 1002 "/usr/include/pthread.h" 3 4
extern int pthread_cond_timedwait (pthread_cond_t *__restrict __cond,
       pthread_mutex_t *__restrict __mutex,
       const struct timespec *__restrict __abstime)
     __attribute__ ((__nonnull__ (1, 2, 3)));




extern int pthread_condattr_init (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_destroy (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_condattr_getpshared (const pthread_condattr_t *
     __restrict __attr,
     int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setpshared (pthread_condattr_t *__attr,
     int __pshared) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_condattr_getclock (const pthread_condattr_t *
          __restrict __attr,
          __clockid_t *__restrict __clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_condattr_setclock (pthread_condattr_t *__attr,
          __clockid_t __clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 1046 "/usr/include/pthread.h" 3 4
extern int pthread_spin_init (pthread_spinlock_t *__lock, int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_destroy (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_lock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_trylock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_spin_unlock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int pthread_barrier_init (pthread_barrier_t *__restrict __barrier,
     const pthread_barrierattr_t *__restrict
     __attr, unsigned int __count)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_destroy (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrier_wait (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int pthread_barrierattr_init (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_destroy (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_barrierattr_getpshared (const pthread_barrierattr_t *
        __restrict __attr,
        int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int pthread_barrierattr_setpshared (pthread_barrierattr_t *__attr,
        int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 1113 "/usr/include/pthread.h" 3 4
extern int pthread_key_create (pthread_key_t *__key,
          void (*__destr_function) (void *))
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int pthread_key_delete (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));


extern void *pthread_getspecific (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));


extern int pthread_setspecific (pthread_key_t __key,
    const void *__pointer) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int pthread_getcpuclockid (pthread_t __thread_id,
      __clockid_t *__clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
# 1147 "/usr/include/pthread.h" 3 4
extern int pthread_atfork (void (*__prepare) (void),
      void (*__parent) (void),
      void (*__child) (void)) __attribute__ ((__nothrow__ , __leaf__));
# 1161 "/usr/include/pthread.h" 3 4

# 48 "/usr/include/apr-1/apr_portable.h" 2
# 127 "/usr/include/apr-1/apr_portable.h"
struct apr_os_proc_mutex_t {


    int crossproc;



    pthread_mutex_t *pthread_interproc;





    pthread_mutex_t *intraproc;


};

typedef int apr_os_file_t;
typedef DIR apr_os_dir_t;
typedef int apr_os_sock_t;
typedef struct apr_os_proc_mutex_t apr_os_proc_mutex_t;



typedef pthread_t apr_os_thread_t;
typedef pthread_key_t apr_os_threadkey_t;


typedef pid_t apr_os_proc_t;
typedef struct timeval apr_os_imp_time_t;
typedef struct tm apr_os_exp_time_t;
# 169 "/usr/include/apr-1/apr_portable.h"
typedef void * apr_os_dso_handle_t;

typedef void* apr_os_shm_t;
# 183 "/usr/include/apr-1/apr_portable.h"
struct apr_os_sock_info_t {
    apr_os_sock_t *os_sock;
    struct sockaddr *local;
    struct sockaddr *remote;
    int family;
    int type;
    int protocol;
};

typedef struct apr_os_sock_info_t apr_os_sock_info_t;
# 203 "/usr/include/apr-1/apr_portable.h"
    struct apr_os_global_mutex_t {
        apr_pool_t *pool;
        apr_proc_mutex_t *proc_mutex;

        apr_thread_mutex_t *thread_mutex;

    };
    typedef struct apr_os_global_mutex_t apr_os_global_mutex_t;

apr_status_t apr_os_global_mutex_get(apr_os_global_mutex_t *ospmutex,
                                                apr_global_mutex_t *pmutex);
# 224 "/usr/include/apr-1/apr_portable.h"
apr_status_t apr_os_file_get(apr_os_file_t *thefile,
                                          apr_file_t *file);






apr_status_t apr_os_dir_get(apr_os_dir_t **thedir,
                                         apr_dir_t *dir);






apr_status_t apr_os_sock_get(apr_os_sock_t *thesock,
                                          apr_socket_t *sock);






apr_status_t apr_os_proc_mutex_get(apr_os_proc_mutex_t *ospmutex,
                                                apr_proc_mutex_t *pmutex);






apr_status_t apr_os_exp_time_get(apr_os_exp_time_t **ostime,
                                 apr_time_exp_t *aprtime);






apr_status_t apr_os_imp_time_get(apr_os_imp_time_t **ostime,
                                              apr_time_t *aprtime);






apr_status_t apr_os_shm_get(apr_os_shm_t *osshm,
                                         apr_shm_t *shm);
# 285 "/usr/include/apr-1/apr_portable.h"
apr_status_t apr_os_thread_get(apr_os_thread_t **thethd,
                                            apr_thread_t *thd);






apr_status_t apr_os_threadkey_get(apr_os_threadkey_t *thekey,
                                               apr_threadkey_t *key);







apr_status_t apr_os_thread_put(apr_thread_t **thd,
                                            apr_os_thread_t *thethd,
                                            apr_pool_t *cont);







apr_status_t apr_os_threadkey_put(apr_threadkey_t **key,
                                               apr_os_threadkey_t *thekey,
                                               apr_pool_t *cont);



apr_os_thread_t apr_os_thread_current(void);







int apr_os_thread_equal(apr_os_thread_t tid1,
                                     apr_os_thread_t tid2);
# 341 "/usr/include/apr-1/apr_portable.h"
apr_status_t apr_os_file_put(apr_file_t **file,
                                          apr_os_file_t *thefile,
                                          apr_int32_t flags, apr_pool_t *cont);
# 353 "/usr/include/apr-1/apr_portable.h"
apr_status_t apr_os_pipe_put(apr_file_t **file,
                                          apr_os_file_t *thefile,
                                          apr_pool_t *cont);
# 367 "/usr/include/apr-1/apr_portable.h"
apr_status_t apr_os_pipe_put_ex(apr_file_t **file,
                                             apr_os_file_t *thefile,
                                             int register_cleanup,
                                             apr_pool_t *cont);







apr_status_t apr_os_dir_put(apr_dir_t **dir,
                                         apr_os_dir_t *thedir,
                                         apr_pool_t *cont);
# 390 "/usr/include/apr-1/apr_portable.h"
apr_status_t apr_os_sock_put(apr_socket_t **sock,
                                          apr_os_sock_t *thesock,
                                          apr_pool_t *cont);
# 404 "/usr/include/apr-1/apr_portable.h"
apr_status_t apr_os_sock_make(apr_socket_t **apr_sock,
                                           apr_os_sock_info_t *os_sock_info,
                                           apr_pool_t *cont);







apr_status_t apr_os_proc_mutex_put(apr_proc_mutex_t **pmutex,
                                                apr_os_proc_mutex_t *ospmutex,
                                                apr_pool_t *cont);







apr_status_t apr_os_imp_time_put(apr_time_t *aprtime,
                                              apr_os_imp_time_t **ostime,
                                              apr_pool_t *cont);







apr_status_t apr_os_exp_time_put(apr_time_exp_t *aprtime,
                                              apr_os_exp_time_t **ostime,
                                              apr_pool_t *cont);
# 447 "/usr/include/apr-1/apr_portable.h"
apr_status_t apr_os_shm_put(apr_shm_t **shm,
                                         apr_os_shm_t *osshm,
                                         apr_pool_t *cont);
# 463 "/usr/include/apr-1/apr_portable.h"
apr_status_t apr_os_dso_handle_put(apr_dso_handle_t **dso,
                                                apr_os_dso_handle_t thedso,
                                                apr_pool_t *pool);






apr_status_t apr_os_dso_handle_get(apr_os_dso_handle_t *dso,
                                                apr_dso_handle_t *aprdso);
# 483 "/usr/include/apr-1/apr_portable.h"
apr_status_t apr_os_uuid_get(unsigned char *uuid_data);







const char* apr_os_default_encoding(apr_pool_t *pool);
# 500 "/usr/include/apr-1/apr_portable.h"
const char* apr_os_locale_encoding(apr_pool_t *pool);
# 32 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h" 2
# 1 "/usr/include/apr-1/apr_mmap.h" 1
# 33 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h" 2
# 45 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
typedef void ap_HOOK_insert_error_filter_t (request_rec *r); void ap_hook_insert_error_filter(ap_HOOK_insert_error_filter_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); void ap_run_insert_error_filter (request_rec *r); apr_array_header_t * ap_hook_get_insert_error_filter(void); typedef struct ap_LINK_insert_error_filter_t { ap_HOOK_insert_error_filter_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_insert_error_filter_t;




 extern ap_filter_rec_t *ap_old_write_func;
# 62 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
request_rec *ap_read_request(conn_rec *c);





void ap_get_mime_headers(request_rec *r);







void ap_get_mime_headers_core(request_rec *r,
                                          apr_bucket_brigade *bb);
# 86 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
void ap_finalize_request_protocol(request_rec *r);
# 97 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
void ap_send_error_response(request_rec *r, int recursive_error);
# 111 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
void ap_set_content_length(request_rec *r, apr_off_t length);






int ap_set_keepalive(request_rec *r);
# 127 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
apr_time_t ap_rationalize_mtime(request_rec *r, apr_time_t mtime);
# 140 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
const char * ap_make_content_type(request_rec *r,
                                              const char *type);






void ap_setup_make_content_type(apr_pool_t *pool);
# 159 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
char * ap_make_etag(request_rec *r, int force_weak);





void ap_set_etag(request_rec *r);





void ap_set_last_modified(request_rec *r);
# 181 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
int ap_meets_conditions(request_rec *r);
# 203 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
apr_status_t ap_send_fd(apr_file_t *fd, request_rec *r, apr_off_t offset,
                                   apr_size_t length, apr_size_t *nbytes);
# 215 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
size_t ap_send_mmap(apr_mmap_t *mm, request_rec *r, size_t offset,
                             size_t length);
# 228 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
int ap_method_register(apr_pool_t *p, const char *methname);






void ap_method_registry_init(apr_pool_t *p);
# 253 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
ap_method_list_t * ap_make_method_list(apr_pool_t *p, int nelts);
# 262 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
void ap_copy_method_list(ap_method_list_t *dest,
         ap_method_list_t *src);
# 273 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
int ap_method_in_list(ap_method_list_t *l, const char *method);
# 283 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
void ap_method_list_add(ap_method_list_t *l, const char *method);
# 292 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
void ap_method_list_remove(ap_method_list_t *l,
           const char *method);







void ap_clear_method_list(ap_method_list_t *l);
# 310 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
void ap_set_content_type(request_rec *r, const char *ct);
# 322 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
int ap_rputc(int c, request_rec *r);







int ap_rputs(const char *str, request_rec *r);
# 339 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
int ap_rwrite(const void *buf, int nbyte, request_rec *r);







int ap_rvputs(request_rec *r,...);
# 356 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
int ap_vrprintf(request_rec *r, const char *fmt, va_list vlist);
# 365 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
int ap_rprintf(request_rec *r, const char *fmt,...)
    __attribute__((format(printf,2,3)));






int ap_rflush(request_rec *r);







int ap_index_of_response(int status);
# 390 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
const char * ap_get_status_line(int status);
# 405 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
int ap_setup_client_block(request_rec *r, int read_policy);
# 415 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
int ap_should_client_block(request_rec *r);
# 426 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
long ap_get_client_block(request_rec *r, char *buffer, apr_size_t bufsiz);
# 438 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
int ap_discard_request_body(request_rec *r);







void ap_note_auth_failure(request_rec *r);







void ap_note_basic_auth_failure(request_rec *r);







void ap_note_digest_auth_failure(request_rec *r);
# 476 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
int ap_get_basic_auth_pw(request_rec *r, const char **pw);
# 487 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
void ap_parse_uri(request_rec *r, const char *uri);
# 499 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
int ap_getline(char *s, int n, request_rec *r, int fold);
# 534 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
apr_status_t ap_rgetline_core(char **s, apr_size_t n,
                                          apr_size_t *read,
                                          request_rec *r, int fold,
                                          apr_bucket_brigade *bb);







int ap_method_number_of(const char *method);
# 554 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
const char * ap_method_name_of(apr_pool_t *p, int methnum);
# 569 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
typedef int ap_HOOK_post_read_request_t (request_rec *r); void ap_hook_post_read_request(ap_HOOK_post_read_request_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_post_read_request (request_rec *r); apr_array_header_t * ap_hook_get_post_read_request(void); typedef struct ap_LINK_post_read_request_t { ap_HOOK_post_read_request_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_post_read_request_t;







typedef int ap_HOOK_log_transaction_t (request_rec *r); void ap_hook_log_transaction(ap_HOOK_log_transaction_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_log_transaction (request_rec *r); apr_array_header_t * ap_hook_get_log_transaction(void); typedef struct ap_LINK_log_transaction_t { ap_HOOK_log_transaction_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_log_transaction_t;







typedef const char * ap_HOOK_http_scheme_t (const request_rec *r); void ap_hook_http_scheme(ap_HOOK_http_scheme_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); const char * ap_run_http_scheme (const request_rec *r); apr_array_header_t * ap_hook_get_http_scheme(void); typedef struct ap_LINK_http_scheme_t { ap_HOOK_http_scheme_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_http_scheme_t;






typedef apr_port_t ap_HOOK_default_port_t (const request_rec *r); void ap_hook_default_port(ap_HOOK_default_port_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); apr_port_t ap_run_default_port (const request_rec *r); apr_array_header_t * ap_hook_get_default_port(void); typedef struct ap_LINK_default_port_t { ap_HOOK_default_port_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_default_port_t;


typedef struct ap_bucket_error ap_bucket_error;
# 606 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
struct ap_bucket_error {

    apr_bucket_refcount refcount;

    int status;

    const char *data;
};


 extern const apr_bucket_type_t ap_bucket_type_error;
# 633 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
apr_bucket * ap_bucket_error_make(apr_bucket *b, int error,
                const char *buf, apr_pool_t *p);
# 644 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_protocol.h"
apr_bucket * ap_bucket_error_create(int error, const char *buf,
                                                apr_pool_t *p,
                                                apr_bucket_alloc_t *list);

apr_status_t ap_byterange_filter(ap_filter_t *f, apr_bucket_brigade *b);
apr_status_t ap_http_header_filter(ap_filter_t *f, apr_bucket_brigade *b);
apr_status_t ap_content_length_filter(ap_filter_t *,
                                                              apr_bucket_brigade *);
apr_status_t ap_old_write_filter(ap_filter_t *f, apr_bucket_brigade *b);






void ap_set_sub_req_protocol(request_rec *rnew, const request_rec *r);






void ap_finalize_sub_req_protocol(request_rec *sub_r);






void ap_send_interim_response(request_rec *r, int send_headers);
# 36 "core.c" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h" 1
# 60 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
int ap_process_request_internal(request_rec *r);
# 71 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
request_rec * ap_sub_req_lookup_uri(const char *new_uri,
                                                const request_rec *r,
                                                ap_filter_t *next_filter);
# 84 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
request_rec * ap_sub_req_lookup_file(const char *new_file,
                                              const request_rec *r,
                                              ap_filter_t *next_filter);
# 105 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
request_rec * ap_sub_req_lookup_dirent(const apr_finfo_t *finfo,
                                                   const request_rec *r,
                                                   int subtype,
                                                   ap_filter_t *next_filter);
# 119 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
request_rec * ap_sub_req_method_uri(const char *method,
                                                const char *new_uri,
                                                const request_rec *r,
                                                ap_filter_t *next_filter);







apr_status_t ap_sub_req_output_filter(ap_filter_t *f,
                                                        apr_bucket_brigade *bb);






int ap_run_sub_req(request_rec *r);





void ap_destroy_sub_req(request_rec *r);
# 157 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
void ap_internal_redirect(const char *new_uri, request_rec *r);
# 166 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
void ap_internal_redirect_handler(const char *new_uri, request_rec *r);
# 175 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
void ap_internal_fast_redirect(request_rec *sub_req, request_rec *r);







int ap_some_auth_required(request_rec *r);






int ap_is_initial_req(request_rec *r);







void ap_update_mtime(request_rec *r, apr_time_t dependency_mtime);
# 215 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
void ap_allow_methods(request_rec *r, int reset, ...);
# 233 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
void ap_allow_standard_methods(request_rec *r, int reset, ...);
# 243 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
void ap_process_request(request_rec *);






void ap_die(int type, request_rec *r);
# 261 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
typedef int ap_HOOK_create_request_t (request_rec *r); void ap_hook_create_request(ap_HOOK_create_request_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_create_request (request_rec *r); apr_array_header_t * ap_hook_get_create_request(void); typedef struct ap_LINK_create_request_t { ap_HOOK_create_request_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_create_request_t;
# 271 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
typedef int ap_HOOK_translate_name_t (request_rec *r); void ap_hook_translate_name(ap_HOOK_translate_name_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_translate_name (request_rec *r); apr_array_header_t * ap_hook_get_translate_name(void); typedef struct ap_LINK_translate_name_t { ap_HOOK_translate_name_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_translate_name_t;
# 286 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
typedef int ap_HOOK_map_to_storage_t (request_rec *r); void ap_hook_map_to_storage(ap_HOOK_map_to_storage_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_map_to_storage (request_rec *r); apr_array_header_t * ap_hook_get_map_to_storage(void); typedef struct ap_LINK_map_to_storage_t { ap_HOOK_map_to_storage_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_map_to_storage_t;
# 300 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
typedef int ap_HOOK_check_user_id_t (request_rec *r); void ap_hook_check_user_id(ap_HOOK_check_user_id_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_check_user_id (request_rec *r); apr_array_header_t * ap_hook_get_check_user_id(void); typedef struct ap_LINK_check_user_id_t { ap_HOOK_check_user_id_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_check_user_id_t;
# 309 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
typedef int ap_HOOK_fixups_t (request_rec *r); void ap_hook_fixups(ap_HOOK_fixups_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_fixups (request_rec *r); apr_array_header_t * ap_hook_get_fixups(void); typedef struct ap_LINK_fixups_t { ap_HOOK_fixups_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_fixups_t;
# 319 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
typedef int ap_HOOK_type_checker_t (request_rec *r); void ap_hook_type_checker(ap_HOOK_type_checker_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_type_checker (request_rec *r); apr_array_header_t * ap_hook_get_type_checker(void); typedef struct ap_LINK_type_checker_t { ap_HOOK_type_checker_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_type_checker_t;
# 331 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
typedef int ap_HOOK_access_checker_t (request_rec *r); void ap_hook_access_checker(ap_HOOK_access_checker_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_access_checker (request_rec *r); apr_array_header_t * ap_hook_get_access_checker(void); typedef struct ap_LINK_access_checker_t { ap_HOOK_access_checker_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_access_checker_t;
# 344 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_request.h"
typedef int ap_HOOK_auth_checker_t (request_rec *r); void ap_hook_auth_checker(ap_HOOK_auth_checker_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_auth_checker (request_rec *r); apr_array_header_t * ap_hook_get_auth_checker(void); typedef struct ap_LINK_auth_checker_t { ap_HOOK_auth_checker_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_auth_checker_t;






typedef void ap_HOOK_insert_filter_t (request_rec *r); void ap_hook_insert_filter(ap_HOOK_insert_filter_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); void ap_run_insert_filter (request_rec *r); apr_array_header_t * ap_hook_get_insert_filter(void); typedef struct ap_LINK_insert_filter_t { ap_HOOK_insert_filter_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_insert_filter_t;

int ap_location_walk(request_rec *r);
int ap_directory_walk(request_rec *r);
int ap_file_walk(request_rec *r);
# 37 "core.c" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_vhost.h" 1
# 37 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_vhost.h"
void ap_init_vhost_config(apr_pool_t *p);







void ap_fini_vhost_config(apr_pool_t *p, server_rec *main_server);







const char *ap_parse_vhost_addrs(apr_pool_t *p, const char *hostname, server_rec *s);







const char *ap_set_name_virtual_host (cmd_parms *cmd, void *dummy,
          const char *arg);
# 72 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_vhost.h"
typedef int(*ap_vhost_iterate_conn_cb)(void* baton, conn_rec* conn, server_rec* s);
# 84 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_vhost.h"
int ap_vhost_iterate_given_conn(conn_rec *conn,
                                            ap_vhost_iterate_conn_cb func_cb,
                                            void* baton);





void ap_update_vhost_given_ip(conn_rec *conn);






void ap_update_vhost_from_headers(request_rec *r);
# 110 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_vhost.h"
int ap_matches_request_vhost(request_rec *r, const char *host,
    apr_port_t port);
# 38 "core.c" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_main.h" 1
# 42 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_main.h"
 extern const char *ap_server_argv0;

 extern const char *ap_server_root;




 extern apr_array_header_t *ap_server_pre_read_config;


 extern apr_array_header_t *ap_server_post_read_config;


 extern apr_array_header_t *ap_server_config_defines;
# 64 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_main.h"
typedef int (apr_OFN_ap_signal_server_t) (int *, apr_pool_t *);
# 39 "core.c" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_log.h" 1
# 36 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_log.h"
# 1 "/usr/include/syslog.h" 1 3 4
# 1 "/usr/include/sys/syslog.h" 1 3 4
# 40 "/usr/include/sys/syslog.h" 3 4
# 1 "/usr/include/bits/syslog-path.h" 1 3 4
# 41 "/usr/include/sys/syslog.h" 2 3 4
# 169 "/usr/include/sys/syslog.h" 3 4






extern void closelog (void);





extern void openlog (const char *__ident, int __option, int __facility);


extern int setlogmask (int __mask) __attribute__ ((__nothrow__ , __leaf__));





extern void syslog (int __pri, const char *__fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));
# 200 "/usr/include/sys/syslog.h" 3 4
extern void vsyslog (int __pri, const char *__fmt, __gnuc_va_list __ap)
     __attribute__ ((__format__ (__printf__, 2, 0)));
# 213 "/usr/include/sys/syslog.h" 3 4

# 1 "/usr/include/syslog.h" 2 3 4
# 37 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_log.h" 2
# 94 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_log.h"
extern int ap_default_loglevel;







void ap_open_stderr_log(apr_pool_t *p);






apr_status_t ap_replace_stderr_log(apr_pool_t *p,
                                               const char *file);
# 121 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_log.h"
int ap_open_logs(apr_pool_t *pconf, apr_pool_t *plog,
                 apr_pool_t *ptemp, server_rec *s_main);
# 134 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_log.h"
void ap_logs_child_init(apr_pool_t *p, server_rec *s);
# 171 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_log.h"
void ap_log_error(const char *file, int line, int level,
                             apr_status_t status, const server_rec *s,
                             const char *fmt, ...)
       __attribute__((format(printf,6,7)));
# 195 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_log.h"
void ap_log_perror(const char *file, int line, int level,
                             apr_status_t status, apr_pool_t *p,
                             const char *fmt, ...)
       __attribute__((format(printf,6,7)));
# 219 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_log.h"
void ap_log_rerror(const char *file, int line, int level,
                               apr_status_t status, const request_rec *r,
                               const char *fmt, ...)
       __attribute__((format(printf,6,7)));
# 245 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_log.h"
void ap_log_cerror(const char *file, int line, int level,
                               apr_status_t status, const conn_rec *c,
                               const char *fmt, ...)
       __attribute__((format(printf,6,7)));





void ap_error_log2stderr(server_rec *s);






void ap_log_pid(apr_pool_t *p, const char *fname);







apr_status_t ap_read_pid(apr_pool_t *p, const char *filename, pid_t *mypid);


typedef struct piped_log piped_log;







struct piped_log {

    apr_pool_t *p;

    apr_file_t *fds[2];




    char *program;

    apr_proc_t *pid;

};







piped_log * ap_open_piped_log(apr_pool_t *p, const char *program);





void ap_close_piped_log(piped_log *pl);
# 335 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_log.h"
typedef void ap_HOOK_error_log_t (const char *file, int line, int level, apr_status_t status, const server_rec *s, const request_rec *r, apr_pool_t *pool, const char *errstr); void ap_hook_error_log(ap_HOOK_error_log_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); void ap_run_error_log (const char *file, int line, int level, apr_status_t status, const server_rec *s, const request_rec *r, apr_pool_t *pool, const char *errstr); apr_array_header_t * ap_hook_get_error_log(void); typedef struct ap_LINK_error_log_t { ap_HOOK_error_log_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_error_log_t;
# 40 "core.c" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_md5.h" 1
# 33 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_md5.h"
# 1 "/usr/include/apr-1/apr_md5.h" 1
# 51 "/usr/include/apr-1/apr_md5.h"
# 1 "/usr/include/apr-1/apr_xlate.h" 1
# 39 "/usr/include/apr-1/apr_xlate.h"
typedef struct apr_xlate_t apr_xlate_t;
# 66 "/usr/include/apr-1/apr_xlate.h"
apr_status_t apr_xlate_open(apr_xlate_t **convset,
                                         const char *topage,
                                         const char *frompage,
                                         apr_pool_t *pool);
# 93 "/usr/include/apr-1/apr_xlate.h"
apr_status_t apr_xlate_sb_get(apr_xlate_t *convset, int *onoff);
# 117 "/usr/include/apr-1/apr_xlate.h"
apr_status_t apr_xlate_conv_buffer(apr_xlate_t *convset,
                                                const char *inbuf,
                                                apr_size_t *inbytes_left,
                                                char *outbuf,
                                                apr_size_t *outbytes_left);
# 146 "/usr/include/apr-1/apr_xlate.h"
apr_int32_t apr_xlate_conv_byte(apr_xlate_t *convset,
                                             unsigned char inchar);
# 156 "/usr/include/apr-1/apr_xlate.h"
apr_status_t apr_xlate_close(apr_xlate_t *convset);
# 52 "/usr/include/apr-1/apr_md5.h" 2
# 71 "/usr/include/apr-1/apr_md5.h"
typedef struct apr_md5_ctx_t apr_md5_ctx_t;


struct apr_md5_ctx_t {

    apr_uint32_t state[4];

    apr_uint32_t count[2];

    unsigned char buffer[64];



    apr_xlate_t *xlate;
};





apr_status_t apr_md5_init(apr_md5_ctx_t *context);







apr_status_t apr_md5_set_xlate(apr_md5_ctx_t *context,
                                            apr_xlate_t *xlate);
# 109 "/usr/include/apr-1/apr_md5.h"
apr_status_t apr_md5_update(apr_md5_ctx_t *context,
                                         const void *input,
                                         apr_size_t inputLen);







apr_status_t apr_md5_final(unsigned char digest[16],
                                        apr_md5_ctx_t *context);







apr_status_t apr_md5(unsigned char digest[16],
                                  const void *input,
                                  apr_size_t inputLen);
# 139 "/usr/include/apr-1/apr_md5.h"
apr_status_t apr_md5_encode(const char *password, const char *salt,
                                         char *result, apr_size_t nbytes);
# 151 "/usr/include/apr-1/apr_md5.h"
apr_status_t apr_bcrypt_encode(const char *pw,
                                            unsigned int count,
                                            const unsigned char *salt,
                                            apr_size_t salt_len,
                                            char *out, apr_size_t out_len);
# 167 "/usr/include/apr-1/apr_md5.h"
apr_status_t apr_password_validate(const char *passwd,
                                                const char *hash);
# 34 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_md5.h" 2
# 42 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_md5.h"
char * ap_md5(apr_pool_t *a, const unsigned char *string);
# 52 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_md5.h"
char * ap_md5_binary(apr_pool_t *a, const unsigned char *buf, int len);
# 61 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_md5.h"
char * ap_md5contextTo64(apr_pool_t *p, apr_md5_ctx_t *context);







char * ap_md5digest(apr_pool_t *p, apr_file_t *infile);
# 41 "core.c" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_connection.h" 1
# 50 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_connection.h"
void ap_process_connection(conn_rec *c, void *csd);





void ap_flush_conn(conn_rec *c);
# 73 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_connection.h"
void ap_lingering_close(conn_rec *c);
# 94 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_connection.h"
typedef conn_rec * ap_HOOK_create_connection_t (apr_pool_t *p, server_rec *server, apr_socket_t *csd, long conn_id, void *sbh, apr_bucket_alloc_t *alloc); void ap_hook_create_connection(ap_HOOK_create_connection_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); conn_rec * ap_run_create_connection (apr_pool_t *p, server_rec *server, apr_socket_t *csd, long conn_id, void *sbh, apr_bucket_alloc_t *alloc); apr_array_header_t * ap_hook_get_create_connection(void); typedef struct ap_LINK_create_connection_t { ap_HOOK_create_connection_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_create_connection_t;
# 108 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_connection.h"
typedef int ap_HOOK_pre_connection_t (conn_rec *c, void *csd); void ap_hook_pre_connection(ap_HOOK_pre_connection_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_pre_connection (conn_rec *c, void *csd); apr_array_header_t * ap_hook_get_pre_connection(void); typedef struct ap_LINK_pre_connection_t { ap_HOOK_pre_connection_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_pre_connection_t;
# 118 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_connection.h"
typedef int ap_HOOK_process_connection_t (conn_rec *c); void ap_hook_process_connection(ap_HOOK_process_connection_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_process_connection (conn_rec *c); apr_array_header_t * ap_hook_get_process_connection(void); typedef struct ap_LINK_process_connection_t { ap_HOOK_process_connection_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_process_connection_t;


 extern const apr_bucket_type_t ap_bucket_type_eoc;
# 135 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_connection.h"
apr_bucket * ap_bucket_eoc_make(apr_bucket *b);







apr_bucket * ap_bucket_eoc_create(apr_bucket_alloc_t *list);
# 42 "core.c" 2

# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_filter.h" 1
# 44 "core.c" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_ebcdic.h" 1
# 34 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_ebcdic.h"
# 1 "/usr/include/apr-1/apr_xlate.h" 1
# 35 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_ebcdic.h" 2

# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_charset.h" 1
# 37 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/util_ebcdic.h" 2
# 45 "core.c" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/server/mpm/prefork/mpm.h" 1
# 27 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/server/mpm/prefork/mpm.h"
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/server/mpm/prefork/mpm_default.h" 1
# 28 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/server/mpm/prefork/mpm.h" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/scoreboard.h" 1
# 31 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/scoreboard.h"
# 1 "/usr/include/sys/times.h" 1 3 4
# 31 "/usr/include/sys/times.h" 3 4



struct tms
  {
    clock_t tms_utime;
    clock_t tms_stime;

    clock_t tms_cutime;
    clock_t tms_cstime;
  };






extern clock_t times (struct tms *__buffer) __attribute__ ((__nothrow__ , __leaf__));


# 32 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/scoreboard.h" 2
# 40 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/scoreboard.h"
# 1 "/usr/include/apr-1/apr_shm.h" 1
# 41 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/scoreboard.h" 2
# 80 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/scoreboard.h"
typedef int ap_generation_t;




typedef enum {
    SB_NOT_SHARED = 1,
    SB_SHARED = 2
} ap_scoreboard_e;
# 100 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/scoreboard.h"
typedef struct worker_score worker_score;

struct worker_score {
    int thread_num;

    apr_os_thread_t tid;






    pid_t pid;
    ap_generation_t generation;
    unsigned char status;
    unsigned long access_count;
    apr_off_t bytes_served;
    unsigned long my_access_count;
    apr_off_t my_bytes_served;
    apr_off_t conn_bytes;
    unsigned short conn_count;
    apr_time_t start_time;
    apr_time_t stop_time;

    struct tms times;

    apr_time_t last_used;
    char client[32];
    char request[64];
    char vhost[32];
};

typedef struct {
    int server_limit;
    int thread_limit;
    ap_scoreboard_e sb_type;
    ap_generation_t running_generation;


    apr_time_t restart_time;
    int lb_limit;
} global_score;


typedef struct process_score process_score;
struct process_score{
    pid_t pid;
    ap_generation_t generation;
    ap_scoreboard_e sb_type;
    int quiescing;


};


typedef struct lb_score lb_score;
struct lb_score{

    unsigned char data[1024];
};





typedef struct {
    global_score *global;
    process_score *parent;
    worker_score **servers;
    lb_score *balancers;
} scoreboard;

typedef struct ap_sb_handle_t ap_sb_handle_t;

int ap_exists_scoreboard_image(void);
void ap_increment_counts(ap_sb_handle_t *sbh, request_rec *r);

int ap_create_scoreboard(apr_pool_t *p, ap_scoreboard_e t);
apr_status_t ap_reopen_scoreboard(apr_pool_t *p, apr_shm_t **shm, int detached);
void ap_init_scoreboard(void *shared_score);
int ap_calc_scoreboard_size(void);
apr_status_t ap_cleanup_scoreboard(void *d);

void ap_create_sb_handle(ap_sb_handle_t **new_sbh, apr_pool_t *p,
                                     int child_num, int thread_num);

int find_child_by_pid(apr_proc_t *pid);
int ap_update_child_status(ap_sb_handle_t *sbh, int status, request_rec *r);
int ap_update_child_status_from_indexes(int child_num, int thread_num,
                                                    int status, request_rec *r);
void ap_time_process_request(ap_sb_handle_t *sbh, int status);

worker_score * ap_get_scoreboard_worker(int x, int y);
process_score * ap_get_scoreboard_process(int x);
global_score * ap_get_scoreboard_global(void);
lb_score * ap_get_scoreboard_lb(int lb_num);

 extern scoreboard *ap_scoreboard_image;
 extern const char *ap_scoreboard_fname;
 extern int ap_extended_status;
 extern int ap_mod_status_reqtail;

 extern ap_generation_t volatile ap_my_generation;
# 212 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/scoreboard.h"
typedef int ap_HOOK_pre_mpm_t (apr_pool_t *p, ap_scoreboard_e sb_type); void ap_hook_pre_mpm(ap_HOOK_pre_mpm_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_pre_mpm (apr_pool_t *p, ap_scoreboard_e sb_type); apr_array_header_t * ap_hook_get_pre_mpm(void); typedef struct ap_LINK_pre_mpm_t { ap_HOOK_pre_mpm_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_pre_mpm_t;





typedef int (apr_OFN_ap_proxy_lb_workers_t) (void)
                               ;
# 29 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/server/mpm/prefork/mpm.h" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/os/unix/unixd.h" 1
# 30 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/os/unix/unixd.h"
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_listen.h" 1
# 31 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_listen.h"
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/http_config.h" 1
# 32 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_listen.h" 2





typedef struct ap_listen_rec ap_listen_rec;
typedef apr_status_t (*accept_function)(void **csd, ap_listen_rec *lr, apr_pool_t *ptrans);







struct ap_listen_rec {



    ap_listen_rec *next;



    apr_socket_t *sd;



    apr_sockaddr_t *bind_addr;



    accept_function accept_func;



    int active;



    const char* protocol;
};




 extern ap_listen_rec *ap_listeners;




void ap_listen_pre_config(void);







int ap_setup_listeners(server_rec *s);




void ap_close_listeners(void);
# 103 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_listen.h"
const char * ap_set_listenbacklog(cmd_parms *cmd, void *dummy, const char *arg);
const char * ap_set_listener(cmd_parms *cmd, void *dummy,
                                                int argc, char *const argv[]);
const char * ap_set_send_buffer_size(cmd_parms *cmd, void *dummy,
        const char *arg);
const char * ap_set_receive_buffer_size(cmd_parms *cmd,
                                                           void *dummy,
                                                           const char *arg);
# 31 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/os/unix/unixd.h" 2
# 39 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/os/unix/unixd.h"
# 1 "/usr/include/apr-1/apr_proc_mutex.h" 1
# 40 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/os/unix/unixd.h" 2
# 1 "/usr/include/apr-1/apr_global_mutex.h" 1
# 41 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/os/unix/unixd.h" 2

# 1 "/usr/include/pwd.h" 1 3 4
# 27 "/usr/include/pwd.h" 3 4





# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 1 3 4
# 33 "/usr/include/pwd.h" 2 3 4
# 49 "/usr/include/pwd.h" 3 4
struct passwd
{
  char *pw_name;
  char *pw_passwd;
  __uid_t pw_uid;
  __gid_t pw_gid;
  char *pw_gecos;
  char *pw_dir;
  char *pw_shell;
};
# 72 "/usr/include/pwd.h" 3 4
extern void setpwent (void);





extern void endpwent (void);





extern struct passwd *getpwent (void);
# 94 "/usr/include/pwd.h" 3 4
extern struct passwd *fgetpwent (FILE *__stream);







extern int putpwent (const struct passwd *__restrict __p,
       FILE *__restrict __f);






extern struct passwd *getpwuid (__uid_t __uid);





extern struct passwd *getpwnam (const char *__name);
# 139 "/usr/include/pwd.h" 3 4
extern int getpwent_r (struct passwd *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct passwd **__restrict __result);


extern int getpwuid_r (__uid_t __uid,
         struct passwd *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct passwd **__restrict __result);

extern int getpwnam_r (const char *__restrict __name,
         struct passwd *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct passwd **__restrict __result);
# 163 "/usr/include/pwd.h" 3 4
extern int fgetpwent_r (FILE *__restrict __stream,
   struct passwd *__restrict __resultbuf,
   char *__restrict __buffer, size_t __buflen,
   struct passwd **__restrict __result);
# 180 "/usr/include/pwd.h" 3 4
extern int getpw (__uid_t __uid, char *__buffer);



# 43 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/os/unix/unixd.h" 2
# 1 "/usr/include/grp.h" 1 3 4
# 27 "/usr/include/grp.h" 3 4





# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 1 3 4
# 33 "/usr/include/grp.h" 2 3 4
# 42 "/usr/include/grp.h" 3 4
struct group
  {
    char *gr_name;
    char *gr_passwd;
    __gid_t gr_gid;
    char **gr_mem;
  };
# 62 "/usr/include/grp.h" 3 4
extern void setgrent (void);







extern void endgrent (void);





extern struct group *getgrent (void);
# 86 "/usr/include/grp.h" 3 4
extern struct group *fgetgrent (FILE *__stream);
# 96 "/usr/include/grp.h" 3 4
extern int putgrent (const struct group *__restrict __p,
       FILE *__restrict __f);






extern struct group *getgrgid (__gid_t __gid);





extern struct group *getgrnam (const char *__name);
# 134 "/usr/include/grp.h" 3 4
extern int getgrent_r (struct group *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct group **__restrict __result);






extern int getgrgid_r (__gid_t __gid, struct group *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct group **__restrict __result);





extern int getgrnam_r (const char *__restrict __name,
         struct group *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct group **__restrict __result);
# 164 "/usr/include/grp.h" 3 4
extern int fgetgrent_r (FILE *__restrict __stream,
   struct group *__restrict __resultbuf,
   char *__restrict __buffer, size_t __buflen,
   struct group **__restrict __result);
# 176 "/usr/include/grp.h" 3 4
# 1 "/usr/lib/gcc/x86_64-unknown-linux-gnu/4.9.2/include/stddef.h" 1 3 4
# 177 "/usr/include/grp.h" 2 3 4


extern int setgroups (size_t __n, const __gid_t *__groups) __attribute__ ((__nothrow__ , __leaf__));
# 189 "/usr/include/grp.h" 3 4
extern int getgrouplist (const char *__user, __gid_t __group,
    __gid_t *__groups, int *__ngroups);
# 200 "/usr/include/grp.h" 3 4
extern int initgroups (const char *__user, __gid_t __group);




# 44 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/os/unix/unixd.h" 2




# 1 "/usr/include/sys/ipc.h" 1 3 4
# 28 "/usr/include/sys/ipc.h" 3 4
# 1 "/usr/include/bits/ipctypes.h" 1 3 4
# 28 "/usr/include/bits/ipctypes.h" 3 4
typedef int __ipc_pid_t;
# 29 "/usr/include/sys/ipc.h" 2 3 4
# 1 "/usr/include/bits/ipc.h" 1 3 4
# 42 "/usr/include/bits/ipc.h" 3 4
struct ipc_perm
  {
    __key_t __key;
    __uid_t uid;
    __gid_t gid;
    __uid_t cuid;
    __gid_t cgid;
    unsigned short int mode;
    unsigned short int __pad1;
    unsigned short int __seq;
    unsigned short int __pad2;
    __syscall_ulong_t __glibc_reserved1;
    __syscall_ulong_t __glibc_reserved2;
  };
# 30 "/usr/include/sys/ipc.h" 2 3 4
# 51 "/usr/include/sys/ipc.h" 3 4



extern key_t ftok (const char *__pathname, int __proj_id) __attribute__ ((__nothrow__ , __leaf__));


# 49 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/os/unix/unixd.h" 2


typedef struct {
    uid_t uid;
    gid_t gid;
    int userdir;
} ap_unix_identity_t;

typedef ap_unix_identity_t * ap_HOOK_get_suexec_identity_t (const request_rec *r); void ap_hook_get_suexec_identity(ap_HOOK_get_suexec_identity_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); ap_unix_identity_t * ap_run_get_suexec_identity (const request_rec *r); apr_array_header_t * ap_hook_get_get_suexec_identity(void); typedef struct ap_LINK_get_suexec_identity_t { ap_HOOK_get_suexec_identity_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_get_suexec_identity_t;
# 70 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/os/unix/unixd.h"
typedef struct {
    const char *user_name;
    uid_t user_id;
    gid_t group_id;
    int suexec_enabled;
    const char *chroot_dir;
} unixd_config_rec;
 extern unixd_config_rec unixd_config;

int unixd_setup_child(void);
void unixd_pre_config(apr_pool_t *ptemp);
const char * unixd_set_user(cmd_parms *cmd, void *dummy,
                                        const char *arg);
const char * unixd_set_group(cmd_parms *cmd, void *dummy,
                                         const char *arg);
const char * unixd_set_chroot_dir(cmd_parms *cmd, void *dummy,
                                              const char *arg);


void unixd_set_rlimit(cmd_parms *cmd, struct rlimit **plimit,
                           const char *arg, const char * arg2, int type);
# 102 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/os/unix/unixd.h"
apr_status_t unixd_set_proc_mutex_perms(apr_proc_mutex_t *pmutex);
apr_status_t unixd_set_global_mutex_perms(apr_global_mutex_t *gmutex);
apr_status_t unixd_accept(void **accepted, ap_listen_rec *lr, apr_pool_t *ptrans);
# 30 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/server/mpm/prefork/mpm.h" 2
# 58 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/server/mpm/prefork/mpm.h"
extern int ap_threads_per_child;
extern int ap_max_daemons_limit;
extern server_rec *ap_server_conf;
# 46 "core.c" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/mpm_common.h" 1
# 43 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/mpm_common.h"
# 1 "/usr/include/netinet/tcp.h" 1 3 4
# 69 "/usr/include/netinet/tcp.h" 3 4
typedef u_int32_t tcp_seq;




struct tcphdr
  {
    __extension__ union
    {
      struct
      {
 u_int16_t th_sport;
 u_int16_t th_dport;
 tcp_seq th_seq;
 tcp_seq th_ack;

 u_int8_t th_x2:4;
 u_int8_t th_off:4;





 u_int8_t th_flags;






 u_int16_t th_win;
 u_int16_t th_sum;
 u_int16_t th_urp;
      };
      struct
      {
 u_int16_t source;
 u_int16_t dest;
 u_int32_t seq;
 u_int32_t ack_seq;

 u_int16_t res1:4;
 u_int16_t doff:4;
 u_int16_t fin:1;
 u_int16_t syn:1;
 u_int16_t rst:1;
 u_int16_t psh:1;
 u_int16_t ack:1;
 u_int16_t urg:1;
 u_int16_t res2:2;
# 132 "/usr/include/netinet/tcp.h" 3 4
 u_int16_t window;
 u_int16_t check;
 u_int16_t urg_ptr;
      };
    };
};

enum
{
  TCP_ESTABLISHED = 1,
  TCP_SYN_SENT,
  TCP_SYN_RECV,
  TCP_FIN_WAIT1,
  TCP_FIN_WAIT2,
  TCP_TIME_WAIT,
  TCP_CLOSE,
  TCP_CLOSE_WAIT,
  TCP_LAST_ACK,
  TCP_LISTEN,
  TCP_CLOSING
};
# 193 "/usr/include/netinet/tcp.h" 3 4
enum tcp_ca_state
{
  TCP_CA_Open = 0,
  TCP_CA_Disorder = 1,
  TCP_CA_CWR = 2,
  TCP_CA_Recovery = 3,
  TCP_CA_Loss = 4
};

struct tcp_info
{
  u_int8_t tcpi_state;
  u_int8_t tcpi_ca_state;
  u_int8_t tcpi_retransmits;
  u_int8_t tcpi_probes;
  u_int8_t tcpi_backoff;
  u_int8_t tcpi_options;
  u_int8_t tcpi_snd_wscale : 4, tcpi_rcv_wscale : 4;

  u_int32_t tcpi_rto;
  u_int32_t tcpi_ato;
  u_int32_t tcpi_snd_mss;
  u_int32_t tcpi_rcv_mss;

  u_int32_t tcpi_unacked;
  u_int32_t tcpi_sacked;
  u_int32_t tcpi_lost;
  u_int32_t tcpi_retrans;
  u_int32_t tcpi_fackets;


  u_int32_t tcpi_last_data_sent;
  u_int32_t tcpi_last_ack_sent;
  u_int32_t tcpi_last_data_recv;
  u_int32_t tcpi_last_ack_recv;


  u_int32_t tcpi_pmtu;
  u_int32_t tcpi_rcv_ssthresh;
  u_int32_t tcpi_rtt;
  u_int32_t tcpi_rttvar;
  u_int32_t tcpi_snd_ssthresh;
  u_int32_t tcpi_snd_cwnd;
  u_int32_t tcpi_advmss;
  u_int32_t tcpi_reordering;

  u_int32_t tcpi_rcv_rtt;
  u_int32_t tcpi_rcv_space;

  u_int32_t tcpi_total_retrans;
};





struct tcp_md5sig
{
  struct sockaddr_storage tcpm_addr;
  u_int16_t __tcpm_pad1;
  u_int16_t tcpm_keylen;
  u_int32_t __tcpm_pad2;
  u_int8_t tcpm_key[80];
};


struct tcp_repair_opt
{
  u_int32_t opt_code;
  u_int32_t opt_val;
};


enum
{
  TCP_NO_QUEUE,
  TCP_RECV_QUEUE,
  TCP_SEND_QUEUE,
  TCP_QUEUES_NR,
};
# 291 "/usr/include/netinet/tcp.h" 3 4
struct tcp_cookie_transactions
{
  u_int16_t tcpct_flags;
  u_int8_t __tcpct_pad1;
  u_int8_t tcpct_cookie_desired;
  u_int16_t tcpct_s_data_desired;
  u_int16_t tcpct_used;
  u_int8_t tcpct_value[536U];
};
# 44 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/mpm_common.h" 2


# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/server/mpm/prefork/mpm.h" 1
# 47 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/mpm_common.h" 2
# 99 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/mpm_common.h"
void ap_reclaim_child_processes(int terminate);
# 116 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/mpm_common.h"
void ap_relieve_child_processes(void);
# 131 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/mpm_common.h"
void ap_register_extra_mpm_process(pid_t pid);
# 144 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/mpm_common.h"
int ap_unregister_extra_mpm_process(pid_t pid);
# 157 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/mpm_common.h"
apr_status_t ap_mpm_safe_kill(pid_t pid, int sig);
# 169 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/mpm_common.h"
void ap_wait_or_timeout(apr_exit_why_e *status, int *exitcode, apr_proc_t *ret,
                        apr_pool_t *p);
# 181 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/mpm_common.h"
int ap_process_child_status(apr_proc_t *pid, apr_exit_why_e why, int status);
# 192 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/mpm_common.h"
void ap_sock_disable_nagle(apr_socket_t *s);
# 204 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/mpm_common.h"
uid_t ap_uname2id(const char *name);
# 214 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/mpm_common.h"
gid_t ap_gname2id(const char *name);






typedef struct ap_pod_t ap_pod_t;

struct ap_pod_t {
    apr_file_t *pod_in;
    apr_file_t *pod_out;
    apr_pool_t *p;
};






apr_status_t ap_mpm_pod_open(apr_pool_t *p, ap_pod_t **pod);




apr_status_t ap_mpm_pod_check(ap_pod_t *pod);




apr_status_t ap_mpm_pod_close(ap_pod_t *pod);






apr_status_t ap_mpm_pod_signal(ap_pod_t *pod);







void ap_mpm_pod_killpg(ap_pod_t *pod, int num);
# 274 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/mpm_common.h"
extern int ap_max_requests_per_child;
const char *ap_mpm_set_max_requests(cmd_parms *cmd, void *dummy,
                                    const char *arg);






extern const char *ap_pid_fname;
const char *ap_mpm_set_pidfile(cmd_parms *cmd, void *dummy,
                               const char *arg);






extern const char *ap_lock_fname;
const char *ap_mpm_set_lockfile(cmd_parms *cmd, void *dummy,
                                const char *arg);






extern apr_lockmech_e ap_accept_lock_mech;
extern const char ap_valid_accept_mutex_string[];
const char *ap_mpm_set_accept_lock_mech(cmd_parms *cmd, void *dummy,
                                        const char *arg);






const char *ap_mpm_set_scoreboard(cmd_parms *cmd, void *dummy,
                                  const char *arg);






extern char ap_coredump_dir[8192];
extern int ap_coredumpdir_configured;
const char *ap_mpm_set_coredumpdir(cmd_parms *cmd, void *dummy,
                                   const char *arg);






extern int ap_graceful_shutdown_timeout;
const char *ap_mpm_set_graceful_shutdown(cmd_parms *cmd, void *dummy,
                                         const char *arg);
# 340 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/mpm_common.h"
int ap_signal_server(int *, apr_pool_t *);
void ap_mpm_rewrite_args(process_rec *);



extern apr_uint32_t ap_max_mem_free;
extern const char *ap_mpm_set_max_mem_free(cmd_parms *cmd, void *dummy,
                                           const char *arg);
# 357 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/mpm_common.h"
extern apr_status_t ap_fatal_signal_setup(server_rec *s, apr_pool_t *pconf);
extern apr_status_t ap_fatal_signal_child_setup(server_rec *s);







typedef int ap_HOOK_monitor_t (apr_pool_t *p); void ap_hook_monitor(ap_HOOK_monitor_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int ap_run_monitor (apr_pool_t *p); apr_array_header_t * ap_hook_get_monitor(void); typedef struct ap_LINK_monitor_t { ap_HOOK_monitor_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } ap_LINK_monitor_t;
# 47 "core.c" 2

# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/http/mod_core.h" 1
# 42 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/http/mod_core.h"
extern ap_filter_rec_t *ap_http_input_filter_handle;
extern ap_filter_rec_t *ap_http_header_filter_handle;
extern ap_filter_rec_t *ap_chunk_filter_handle;
extern ap_filter_rec_t *ap_http_outerror_filter_handle;
extern ap_filter_rec_t *ap_byterange_filter_handle;




apr_status_t ap_http_filter(ap_filter_t *f, apr_bucket_brigade *b,
                            ap_input_mode_t mode, apr_read_type_e block,
                            apr_off_t readbytes);


apr_status_t ap_http_chunk_filter(ap_filter_t *f, apr_bucket_brigade *b);


apr_status_t ap_http_outerror_filter(ap_filter_t *f,
                                     apr_bucket_brigade *b);

char *ap_response_code_string(request_rec *r, int error_index);
# 73 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/http/mod_core.h"
void ap_basic_http_header(request_rec *r, apr_bucket_brigade *bb);
# 82 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/http/mod_core.h"
int ap_send_http_trace(request_rec *r);





int ap_send_http_options(request_rec *r);
# 49 "core.c" 2
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h" 1
# 57 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
# 1 "/usr/include/apr-1/apr_date.h" 1
# 60 "/usr/include/apr-1/apr_date.h"
int apr_date_checkmask(const char *data, const char *mask);
# 73 "/usr/include/apr-1/apr_date.h"
apr_time_t apr_date_parse_http(const char *date);
# 99 "/usr/include/apr-1/apr_date.h"
apr_time_t apr_date_parse_rfc(const char *date);
# 58 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h" 2
# 1 "/usr/include/apr-1/apr_strmatch.h" 1
# 38 "/usr/include/apr-1/apr_strmatch.h"
typedef struct apr_strmatch_pattern apr_strmatch_pattern;




struct apr_strmatch_pattern {

    const char *(*compare)(const apr_strmatch_pattern *this_pattern,
                           const char *s, apr_size_t slen);
    const char *pattern;
    apr_size_t length;
    void *context;
};
# 74 "/usr/include/apr-1/apr_strmatch.h"
const apr_strmatch_pattern * apr_strmatch_precompile(apr_pool_t *p, const char *s, int case_sensitive);
# 59 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h" 2

# 1 "/usr/include/apr-1/apr_reslist.h" 1
# 42 "/usr/include/apr-1/apr_reslist.h"
typedef struct apr_reslist_t apr_reslist_t;







typedef apr_status_t (*apr_reslist_constructor)(void **resource, void *params,
                                                apr_pool_t *pool);







typedef apr_status_t (*apr_reslist_destructor)(void *resource, void *params,
                                               apr_pool_t *pool);
# 89 "/usr/include/apr-1/apr_reslist.h"
apr_status_t apr_reslist_create(apr_reslist_t **reslist,
                                             int min, int smax, int hmax,
                                             apr_interval_time_t ttl,
                                             apr_reslist_constructor con,
                                             apr_reslist_destructor de,
                                             void *params,
                                             apr_pool_t *pool);
# 108 "/usr/include/apr-1/apr_reslist.h"
apr_status_t apr_reslist_destroy(apr_reslist_t *reslist);
# 118 "/usr/include/apr-1/apr_reslist.h"
apr_status_t apr_reslist_acquire(apr_reslist_t *reslist,
                                              void **resource);






apr_status_t apr_reslist_release(apr_reslist_t *reslist,
                                              void *resource);







void apr_reslist_timeout_set(apr_reslist_t *reslist,
                                          apr_interval_time_t timeout);





apr_uint32_t apr_reslist_acquired_count(apr_reslist_t *reslist);
# 151 "/usr/include/apr-1/apr_reslist.h"
apr_status_t apr_reslist_invalidate(apr_reslist_t *reslist,
                                                 void *resource);






apr_status_t apr_reslist_maintain(apr_reslist_t *reslist);
# 174 "/usr/include/apr-1/apr_reslist.h"
void apr_reslist_cleanup_order_set(apr_reslist_t *reslist,
                                                apr_uint32_t mode);
# 61 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h" 2

# 1 "/usr/include/apr-1/apr_want.h" 1
# 63 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h" 2
# 76 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_provider.h" 1
# 35 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_provider.h"
typedef struct {
    const char *provider_name;
} ap_list_provider_names_t;
# 50 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_provider.h"
apr_status_t ap_register_provider(apr_pool_t *pool,
                                              const char *provider_group,
                                              const char *provider_name,
                                              const char *provider_version,
                                              const void *provider);
# 64 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_provider.h"
void * ap_lookup_provider(const char *provider_group,
                                      const char *provider_name,
                                      const char *provider_version);
# 77 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/include/ap_provider.h"
apr_array_header_t * ap_list_provider_names(apr_pool_t *pool,
                                              const char *provider_group,
                                              const char *provider_version);
# 77 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h" 2





# 1 "/usr/include/arpa/inet.h" 1 3 4
# 30 "/usr/include/arpa/inet.h" 3 4




extern in_addr_t inet_addr (const char *__cp) __attribute__ ((__nothrow__ , __leaf__));


extern in_addr_t inet_lnaof (struct in_addr __in) __attribute__ ((__nothrow__ , __leaf__));



extern struct in_addr inet_makeaddr (in_addr_t __net, in_addr_t __host)
     __attribute__ ((__nothrow__ , __leaf__));


extern in_addr_t inet_netof (struct in_addr __in) __attribute__ ((__nothrow__ , __leaf__));



extern in_addr_t inet_network (const char *__cp) __attribute__ ((__nothrow__ , __leaf__));



extern char *inet_ntoa (struct in_addr __in) __attribute__ ((__nothrow__ , __leaf__));




extern int inet_pton (int __af, const char *__restrict __cp,
        void *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));




extern const char *inet_ntop (int __af, const void *__restrict __cp,
         char *__restrict __buf, socklen_t __len)
     __attribute__ ((__nothrow__ , __leaf__));






extern int inet_aton (const char *__cp, struct in_addr *__inp) __attribute__ ((__nothrow__ , __leaf__));



extern char *inet_neta (in_addr_t __net, char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));




extern char *inet_net_ntop (int __af, const void *__cp, int __bits,
       char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));




extern int inet_net_pton (int __af, const char *__cp,
     void *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));




extern unsigned int inet_nsap_addr (const char *__cp,
        unsigned char *__buf, int __len) __attribute__ ((__nothrow__ , __leaf__));



extern char *inet_nsap_ntoa (int __len, const unsigned char *__cp,
        char *__buf) __attribute__ ((__nothrow__ , __leaf__));



# 83 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h" 2



enum enctype {
    enc_path, enc_search, enc_user, enc_fpath, enc_parm
};
# 103 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
struct proxy_remote {
    const char *scheme;
    const char *protocol;
    const char *hostname;
    apr_port_t port;
    ap_regex_t *regexp;
    int use_regex;
};



struct proxy_alias {
    const char *real;
    const char *fake;
    ap_regex_t *regex;
    unsigned int flags;
};

struct dirconn_entry {
    char *name;
    struct in_addr addr, mask;
    struct apr_sockaddr_t *hostaddr;
    int (*matcher) (struct dirconn_entry * This, request_rec *r);
};

struct noproxy_entry {
    const char *name;
    struct apr_sockaddr_t *addr;
};

typedef struct proxy_balancer proxy_balancer;
typedef struct proxy_worker proxy_worker;
typedef struct proxy_conn_pool proxy_conn_pool;
typedef struct proxy_balancer_method proxy_balancer_method;

typedef struct {
    apr_array_header_t *proxies;
    apr_array_header_t *sec_proxy;
    apr_array_header_t *aliases;
    apr_array_header_t *noproxies;
    apr_array_header_t *dirconn;
    apr_array_header_t *allowed_connect_ports;
    apr_array_header_t *workers;
    apr_array_header_t *balancers;
    proxy_worker *forward;
    proxy_worker *reverse;
    const char *domain;
    int req;
    char req_set;
    enum {
      via_off,
      via_on,
      via_block,
      via_full
    } viaopt;
    char viaopt_set;
    apr_size_t recv_buffer_size;
    char recv_buffer_size_set;
    apr_size_t io_buffer_size;
    char io_buffer_size_set;
    long maxfwd;
    char maxfwd_set;
# 173 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
    int error_override;
    int error_override_set;
    int preserve_host;
    int preserve_host_set;
    apr_interval_time_t timeout;
    char timeout_set;
    enum {
      bad_error,
      bad_ignore,
      bad_body
    } badopt;
    char badopt_set;




    enum {
        status_off,
        status_on,
        status_full
    } proxy_status;
    char proxy_status_set;
    apr_pool_t *pool;
} proxy_server_conf;


typedef struct {
    const char *p;
    int p_is_fnmatch;
    ap_regex_t *r;
# 211 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
    apr_array_header_t *raliases;
    apr_array_header_t* cookie_paths;
    apr_array_header_t* cookie_domains;
    const apr_strmatch_pattern* cookie_path_str;
    const apr_strmatch_pattern* cookie_domain_str;
    const char *ftp_directory_charset;
    int interpolate_env;
} proxy_dir_conf;




typedef struct {
    apr_array_header_t *raliases;
    apr_array_header_t* cookie_paths;
    apr_array_header_t* cookie_domains;
} proxy_req_conf;

typedef struct {
    conn_rec *connection;
    const char *hostname;
    apr_port_t port;
    int is_ssl;
    apr_pool_t *pool;
    apr_socket_t *sock;
    apr_sockaddr_t *addr;
    apr_uint32_t flags;
    int close;
    int close_on_recycle;
    proxy_worker *worker;
    void *data;

    int inreslist;

    apr_pool_t *scpool;
    request_rec *r;

    int need_flush;

} proxy_conn_rec;

typedef struct {
        float cache_completion;
        int content_length;
} proxy_completion;


struct proxy_conn_pool {
    apr_pool_t *pool;
    apr_sockaddr_t *addr;

    apr_reslist_t *res;

    proxy_conn_rec *conn;
};
# 295 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
typedef struct {
    int status;
    apr_time_t error_time;
    int retries;
    int lbstatus;
    int lbfactor;
    apr_off_t transferred;
    apr_off_t read;
    apr_size_t elected;
    char route[63 +1];
    char redirect[63 +1];
    void *context;
    apr_size_t busy;
    int lbset;
} proxy_worker_stat;


struct proxy_worker {
    int id;
    apr_interval_time_t retry;
    int lbfactor;
    const char *name;
    const char *scheme;
    const char *hostname;
    const char *route;
    const char *redirect;
    int status;
    apr_port_t port;
    int min;
    int smax;
    int hmax;
    apr_interval_time_t ttl;

    apr_interval_time_t timeout;
    char timeout_set;
    apr_interval_time_t acquire;
    char acquire_set;
    apr_size_t recv_buffer_size;
    char recv_buffer_size_set;
    apr_size_t io_buffer_size;
    char io_buffer_size_set;
    char keepalive;
    char keepalive_set;
    proxy_conn_pool *cp;
    proxy_worker_stat *s;
    void *opaque;
    int is_address_reusable;

    apr_thread_mutex_t *mutex;

    void *context;
    enum {
         flush_off,
         flush_on,
         flush_auto
    } flush_packets;
    int flush_wait;
    int lbset;
    apr_interval_time_t ping_timeout;
    char ping_timeout_set;
    char retry_set;
    char disablereuse;
    char disablereuse_set;
    apr_interval_time_t conn_timeout;
    char conn_timeout_set;
};







struct proxy_balancer {
    apr_array_header_t *workers;
    const char *name;
    const char *sticky;
    int sticky_force;
    apr_interval_time_t timeout;
    int max_attempts;
    char max_attempts_set;
    proxy_balancer_method *lbmethod;







    apr_thread_mutex_t *mutex;

    void *context;
    int scolonsep;
};

struct proxy_balancer_method {
    const char *name;
    proxy_worker *(*finder)(proxy_balancer *balancer,
                            request_rec *r);
    void *context;
};
# 435 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
typedef int proxy_HOOK_scheme_handler_t (request_rec *r, proxy_worker *worker, proxy_server_conf *conf, char *url, const char *proxyhost, apr_port_t proxyport); void proxy_hook_scheme_handler(proxy_HOOK_scheme_handler_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int proxy_run_scheme_handler (request_rec *r, proxy_worker *worker, proxy_server_conf *conf, char *url, const char *proxyhost, apr_port_t proxyport); apr_array_header_t * proxy_hook_get_scheme_handler(void); typedef struct proxy_LINK_scheme_handler_t { proxy_HOOK_scheme_handler_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } proxy_LINK_scheme_handler_t;


typedef int proxy_HOOK_canon_handler_t (request_rec *r, char *url); void proxy_hook_canon_handler(proxy_HOOK_canon_handler_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int proxy_run_canon_handler (request_rec *r, char *url); apr_array_header_t * proxy_hook_get_canon_handler(void); typedef struct proxy_LINK_canon_handler_t { proxy_HOOK_canon_handler_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } proxy_LINK_canon_handler_t;


typedef int proxy_HOOK_create_req_t (request_rec *r, request_rec *pr); void proxy_hook_create_req(proxy_HOOK_create_req_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int proxy_run_create_req (request_rec *r, request_rec *pr); apr_array_header_t * proxy_hook_get_create_req(void); typedef struct proxy_LINK_create_req_t { proxy_HOOK_create_req_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } proxy_LINK_create_req_t;
typedef int proxy_HOOK_fixups_t (request_rec *r); void proxy_hook_fixups(proxy_HOOK_fixups_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int proxy_run_fixups (request_rec *r); apr_array_header_t * proxy_hook_get_fixups(void); typedef struct proxy_LINK_fixups_t { proxy_HOOK_fixups_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } proxy_LINK_fixups_t;
# 452 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
typedef int proxy_HOOK_pre_request_t (proxy_worker **worker, proxy_balancer **balancer, request_rec *r, proxy_server_conf *conf, char **url); void proxy_hook_pre_request(proxy_HOOK_pre_request_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int proxy_run_pre_request (proxy_worker **worker, proxy_balancer **balancer, request_rec *r, proxy_server_conf *conf, char **url); apr_array_header_t * proxy_hook_get_pre_request(void); typedef struct proxy_LINK_pre_request_t { proxy_HOOK_pre_request_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } proxy_LINK_pre_request_t;







typedef int proxy_HOOK_post_request_t (proxy_worker *worker, proxy_balancer *balancer, request_rec *r, proxy_server_conf *conf); void proxy_hook_post_request(proxy_HOOK_post_request_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int proxy_run_post_request (proxy_worker *worker, proxy_balancer *balancer, request_rec *r, proxy_server_conf *conf); apr_array_header_t * proxy_hook_get_post_request(void); typedef struct proxy_LINK_post_request_t { proxy_HOOK_post_request_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } proxy_LINK_post_request_t;
# 469 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
typedef int proxy_HOOK_request_status_t (int *status, request_rec *r); void proxy_hook_request_status(proxy_HOOK_request_status_t *pf, const char * const *aszPre, const char * const *aszSucc, int nOrder); int proxy_run_request_status (int *status, request_rec *r); apr_array_header_t * proxy_hook_get_request_status(void); typedef struct proxy_LINK_request_status_t { proxy_HOOK_request_status_t *pFunc; const char *szName; const char * const *aszPredecessors; const char * const *aszSuccessors; int nOrder; } proxy_LINK_request_status_t;




request_rec *ap_proxy_make_fake_req(conn_rec *c, request_rec *r);
int ap_proxy_hex2c(const char *x);
void ap_proxy_c2hex(int ch, char *x);
char *ap_proxy_canonenc(apr_pool_t *p, const char *x, int len, enum enctype t,
                                       int forcedec, int proxyreq);
char *ap_proxy_canon_netloc(apr_pool_t *p, char **const urlp, char **userp,
                                           char **passwordp, char **hostp, apr_port_t *port);
const char *ap_proxy_date_canon(apr_pool_t *p, const char *x);
int ap_proxy_liststr(const char *list, const char *val);
char *ap_proxy_removestr(apr_pool_t *pool, const char *list, const char *val);
int ap_proxy_hex2sec(const char *x);
void ap_proxy_sec2hex(int t, char *y);
int ap_proxyerror(request_rec *r, int statuscode, const char *message);
int ap_proxy_is_ipaddr(struct dirconn_entry *This, apr_pool_t *p);
int ap_proxy_is_domainname(struct dirconn_entry *This, apr_pool_t *p);
int ap_proxy_is_hostname(struct dirconn_entry *This, apr_pool_t *p);
int ap_proxy_is_word(struct dirconn_entry *This, apr_pool_t *p);
int ap_proxy_checkproxyblock(request_rec *r, proxy_server_conf *conf, apr_sockaddr_t *uri_addr);
int ap_proxy_pre_http_request(conn_rec *c, request_rec *r);
apr_status_t ap_proxy_string_read(conn_rec *c, apr_bucket_brigade *bb, char *buff, size_t bufflen, int *eos);
void ap_proxy_table_unmerge(apr_pool_t *p, apr_table_t *t, char *key);

int ap_proxy_connect_to_backend(apr_socket_t **, const char *, apr_sockaddr_t *, const char *, proxy_server_conf *, server_rec *, apr_pool_t *);
apr_status_t ap_proxy_ssl_connection_cleanup(proxy_conn_rec *conn,
                                                            request_rec *r);
int ap_proxy_ssl_enable(conn_rec *c);
int ap_proxy_ssl_disable(conn_rec *c);
int ap_proxy_conn_is_https(conn_rec *c);
const char * ap_proxy_ssl_val(apr_pool_t *p, server_rec *s, conn_rec *c, request_rec *r, const char *var);


const char * ap_proxy_location_reverse_map(request_rec *r, proxy_dir_conf *conf, const char *url);
const char * ap_proxy_cookie_reverse_map(request_rec *r, proxy_dir_conf *conf, const char *str);


typedef const char *(*ap_proxy_header_reverse_map_fn)(request_rec *,
                       proxy_dir_conf *, const char *);
# 533 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
proxy_worker * ap_proxy_get_worker(apr_pool_t *p,
                                                  proxy_server_conf *conf,
                                                  const char *url);
# 544 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
const char * ap_proxy_add_worker(proxy_worker **worker,
                                                apr_pool_t *p,
                                                proxy_server_conf *conf,
                                                const char *url);






proxy_worker * ap_proxy_create_worker(apr_pool_t *p);
# 563 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
void ap_proxy_initialize_worker_share(proxy_server_conf *conf,
                                                     proxy_worker *worker,
                                                     server_rec *s);
# 574 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
apr_status_t ap_proxy_initialize_worker(proxy_worker *worker,
                                                       server_rec *s);







proxy_balancer * ap_proxy_get_balancer(apr_pool_t *p,
                                                      proxy_server_conf *conf,
                                                      const char *url);
# 594 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
const char * ap_proxy_add_balancer(proxy_balancer **balancer,
                                                  apr_pool_t *p,
                                                  proxy_server_conf *conf,
                                                  const char *url);
# 606 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
void ap_proxy_add_worker_to_balancer(apr_pool_t *pool,
                                                    proxy_balancer *balancer,
                                                    proxy_worker *worker);
# 620 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
int ap_proxy_pre_request(proxy_worker **worker,
                                        proxy_balancer **balancer,
                                        request_rec *r,
                                        proxy_server_conf *conf,
                                        char **url);
# 635 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
int ap_proxy_post_request(proxy_worker *worker,
                                         proxy_balancer *balancer,
                                         request_rec *r,
                                         proxy_server_conf *conf);






 int ap_proxy_request_status(int *status, request_rec *r);
# 662 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
int ap_proxy_determine_connection(apr_pool_t *p, request_rec *r,
                                                 proxy_server_conf *conf,
                                                 proxy_worker *worker,
                                                 proxy_conn_rec *conn,
                                                 apr_uri_t *uri,
                                                 char **url,
                                                 const char *proxyname,
                                                 apr_port_t proxyport,
                                                 char *server_portstr,
                                                 int server_portstr_size);
# 683 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
int ap_proxy_retry_worker(const char *proxy_function,
                                         proxy_worker *worker,
                                         server_rec *s);
# 696 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
int ap_proxy_acquire_connection(const char *proxy_function,
                                               proxy_conn_rec **conn,
                                               proxy_worker *worker,
                                               server_rec *s);
# 708 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
int ap_proxy_release_connection(const char *proxy_function,
                                               proxy_conn_rec *conn,
                                               server_rec *s);
# 721 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
int ap_proxy_connect_backend(const char *proxy_function,
                                            proxy_conn_rec *conn,
                                            proxy_worker *worker,
                                            server_rec *s);
# 733 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
int ap_proxy_connection_create(const char *proxy_function,
                                              proxy_conn_rec *conn,
                                              conn_rec *c, server_rec *s);







void ap_proxy_backend_broke(request_rec *r,
                                           apr_bucket_brigade *brigade);
# 772 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
apr_status_t
ap_proxy_buckets_lifetime_transform(request_rec *r, apr_bucket_brigade *from,
                                        apr_bucket_brigade *to);
# 786 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/proxy/mod_proxy.h"
int ap_proxy_lb_workers(void);


extern module proxy_module;

extern int proxy_lb_workers;
# 50 "core.c" 2


# 1 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/mappers/mod_so.h" 1
# 33 "/run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/modules/mappers/mod_so.h"
typedef module * (apr_OFN_ap_find_loaded_module_symbol_t) (server_rec *s, const char *modname)
                                                             ;
# 53 "core.c" 2
# 69 "core.c"
static struct { apr_array_header_t *link_get_mgmt_items; } _hooks;



void ap_hook_get_mgmt_items(ap_HOOK_get_mgmt_items_t *pf,const char * const *aszPre, const char * const *aszSucc,int nOrder) { ap_LINK_get_mgmt_items_t *pHook; if(!_hooks.link_get_mgmt_items) { _hooks.link_get_mgmt_items=apr_array_make(apr_hook_global_pool,1,sizeof(ap_LINK_get_mgmt_items_t)); apr_hook_sort_register("get_mgmt_items",&_hooks.link_get_mgmt_items); } pHook=apr_array_push(_hooks.link_get_mgmt_items); pHook->pFunc=pf; pHook->aszPredecessors=aszPre; pHook->aszSuccessors=aszSucc; pHook->nOrder=nOrder; pHook->szName=apr_hook_debug_current; if(apr_hook_debug_enabled) apr_hook_debug_show("get_mgmt_items",aszPre,aszSucc); } apr_array_header_t * ap_hook_get_get_mgmt_items(void) { return _hooks.link_get_mgmt_items; } int ap_run_get_mgmt_items (apr_pool_t *p, const char *val, apr_hash_t *ht) { ap_LINK_get_mgmt_items_t *pHook; int n; int rv = 0; ; ; if(_hooks.link_get_mgmt_items) { pHook=(ap_LINK_get_mgmt_items_t *)_hooks.link_get_mgmt_items->elts; for(n=0 ; n < _hooks.link_get_mgmt_items->nelts ; ++n) { ; rv=pHook[n].pFunc (p, val, ht); ; if(rv != 0 && rv != -1) break; rv = 0; } } ; return rv; }
# 91 "core.c"
 ap_filter_rec_t *ap_subreq_core_filter_handle;
 ap_filter_rec_t *ap_core_output_filter_handle;
 ap_filter_rec_t *ap_content_length_filter_handle;
 ap_filter_rec_t *ap_core_input_filter_handle;


static char errordocument_default;

static void *create_core_dir_config(apr_pool_t *a, char *dir)
{
    core_dir_config *conf;
    int i;

    conf = (core_dir_config *)memset(apr_palloc(a, sizeof(core_dir_config)), 0, sizeof(core_dir_config));



    conf->opts = dir ? 16 : 16|(1|2|4|8);
    conf->opts_add = conf->opts_remove = 0;
    conf->override = dir ? 32 : 32|(1|2|4|8|16);
    conf->override_opts = 16 | (1|2|4|8) | 32 | 64
                          | 128;

    conf->content_md5 = 2;
    conf->accept_path_info = 3;

    conf->use_canonical_name = (3);
    conf->use_canonical_phys_port = (2);

    conf->hostname_lookups = 3;
    conf->satisfy = apr_palloc(a, sizeof(*conf->satisfy) * 64);
    for (i = 0; i < 64; ++i) {
        conf->satisfy[i] = 2;
    }


    conf->limit_cpu = ((void *)0);


    conf->limit_mem = ((void *)0);


    conf->limit_nproc = ((void *)0);


    conf->limit_req_body = ((apr_off_t) -1);
    conf->limit_xml_body = ((long) -1);
    conf->sec_file = apr_array_make(a, 2, sizeof(ap_conf_vector_t *));

    conf->server_signature = srv_sig_unset;

    conf->add_default_charset = (2);
    conf->add_default_charset_name = "iso-8859-1";



    conf->mime_type = ((void *)0);
    conf->handler = ((void *)0);
    conf->output_filters = ((void *)0);
    conf->input_filters = ((void *)0);




    conf->etag_bits = 0;
    conf->etag_add = 0;
    conf->etag_remove = 0;

    conf->enable_mmap = (2);
    conf->enable_sendfile = (2);
    conf->allow_encoded_slashes = 0;

    return (void *)conf;
}




static void *merge_ct_filters(apr_pool_t *p,
                              const void *key,
                              apr_ssize_t klen,
                              const void *overlay_val,
                              const void *base_val,
                              const void *data)
{
    ap_filter_rec_t *cur;
    const ap_filter_rec_t *overlay_info = (const ap_filter_rec_t *)overlay_val;
    const ap_filter_rec_t *base_info = (const ap_filter_rec_t *)base_val;

    cur = ((void *)0);

    while (overlay_info) {
        ap_filter_rec_t *new;

        new = memset(apr_palloc(p, sizeof(ap_filter_rec_t)), 0, sizeof(ap_filter_rec_t));
        new->name = apr_pstrdup(p, overlay_info->name);
        new->next = cur;
        cur = new;
        overlay_info = overlay_info->next;
    }

    while (base_info) {
        ap_filter_rec_t *f;
        int found = 0;


        f = cur;
        while (f) {
            if (!strcasecmp(base_info->name, f->name)) {
                found = 1;
                break;
            }

            f = f->next;
        }

        if (!found) {
            f = memset(apr_palloc(p, sizeof(ap_filter_rec_t)), 0, sizeof(ap_filter_rec_t));
            f->name = apr_pstrdup(p, base_info->name);
            f->next = cur;
            cur = f;
        }

        base_info = base_info->next;
    }

    return cur;
}

static void *merge_core_dir_configs(apr_pool_t *a, void *basev, void *newv)
{
    core_dir_config *base = (core_dir_config *)basev;
    core_dir_config *new = (core_dir_config *)newv;
    core_dir_config *conf;
    int i;




    conf = (core_dir_config *)apr_pmemdup(a, base, sizeof(core_dir_config));

    conf->d = new->d;
    conf->d_is_fnmatch = new->d_is_fnmatch;
    conf->d_components = new->d_components;
    conf->r = new->r;

    if (new->opts & 16) {



        conf->opts_add = (conf->opts_add & ~new->opts_remove) | new->opts_add;
        conf->opts_remove = (conf->opts_remove & ~new->opts_add)
                            | new->opts_remove;
        conf->opts = (conf->opts & ~conf->opts_remove) | conf->opts_add;
        if ((base->opts & 32) && (new->opts & 2)) {
            conf->opts = (conf->opts & ~32) | 2;
        }
    }
    else {



        conf->opts = new->opts;
        conf->opts_add = new->opts_add;
        conf->opts_remove = new->opts_remove;
    }

    if (!(new->override & 32)) {
        conf->override = new->override;
    }

    if (!(new->override_opts & 16)) {
        conf->override_opts = new->override_opts;
    }

    if (new->ap_default_type) {
        conf->ap_default_type = new->ap_default_type;
    }

    if (new->ap_auth_type) {
        conf->ap_auth_type = new->ap_auth_type;
    }

    if (new->ap_auth_name) {
        conf->ap_auth_name = new->ap_auth_name;
    }

    if (new->ap_requires) {
        conf->ap_requires = new->ap_requires;
    }

    if (conf->response_code_strings == ((void *)0)) {
        conf->response_code_strings = new->response_code_strings;
    }
    else if (new->response_code_strings != ((void *)0)) {


        conf->response_code_strings = apr_pmemdup(a,
            base->response_code_strings,
            sizeof(*conf->response_code_strings) * 57);

        for (i = 0; i < 57; ++i) {
            if (new->response_code_strings[i] != ((void *)0)) {
                conf->response_code_strings[i] = new->response_code_strings[i];
            }
        }
    }



    if (new->hostname_lookups != 3) {
        conf->hostname_lookups = new->hostname_lookups;
    }

    if ((new->content_md5 & 2) == 0) {
        conf->content_md5 = new->content_md5;
    }

    if (new->accept_path_info != 3) {
        conf->accept_path_info = new->accept_path_info;
    }

    if (new->use_canonical_name != (3)) {
        conf->use_canonical_name = new->use_canonical_name;
    }

    if (new->use_canonical_phys_port != (2)) {
        conf->use_canonical_phys_port = new->use_canonical_phys_port;
    }


    if (new->limit_cpu) {
        conf->limit_cpu = new->limit_cpu;
    }



    if (new->limit_mem) {
        conf->limit_mem = new->limit_mem;
    }



    if (new->limit_nproc) {
        conf->limit_nproc = new->limit_nproc;
    }


    if (new->limit_req_body != ((apr_off_t) -1)) {
        conf->limit_req_body = new->limit_req_body;
    }

    if (new->limit_xml_body != ((long) -1))
        conf->limit_xml_body = new->limit_xml_body;
    else
        conf->limit_xml_body = base->limit_xml_body;

    if (!conf->sec_file) {
        conf->sec_file = new->sec_file;
    }
    else if (new->sec_file) {


        conf->sec_file = apr_array_append(a, base->sec_file, new->sec_file);
    }




    conf->satisfy = apr_palloc(a, sizeof(*conf->satisfy) * 64);
    for (i = 0; i < 64; ++i) {
        if (new->satisfy[i] != 2) {
            conf->satisfy[i] = new->satisfy[i];
        } else {
            conf->satisfy[i] = base->satisfy[i];
        }
    }

    if (new->server_signature != srv_sig_unset) {
        conf->server_signature = new->server_signature;
    }

    if (new->add_default_charset != (2)) {
        conf->add_default_charset = new->add_default_charset;
        conf->add_default_charset_name = new->add_default_charset_name;
    }



    if (new->mime_type) {
        conf->mime_type = new->mime_type;
    }

    if (new->handler) {
        conf->handler = new->handler;
    }

    if (new->output_filters) {
        conf->output_filters = new->output_filters;
    }

    if (new->input_filters) {
        conf->input_filters = new->input_filters;
    }

    if (conf->ct_output_filters && new->ct_output_filters) {
        conf->ct_output_filters = apr_hash_merge(a,
                                                 new->ct_output_filters,
                                                 conf->ct_output_filters,
                                                 merge_ct_filters,
                                                 ((void *)0));
    }
    else if (new->ct_output_filters) {
        conf->ct_output_filters = apr_hash_copy(a, new->ct_output_filters);
    }
    else if (conf->ct_output_filters) {

        conf->ct_output_filters = apr_hash_copy(a, base->ct_output_filters);
    }




    if (new->etag_bits == 0) {
        conf->etag_add =
            (conf->etag_add & (~ new->etag_remove)) | new->etag_add;
        conf->etag_remove =
            (conf->etag_remove & (~ new->etag_add)) | new->etag_remove;
        conf->etag_bits =
            (conf->etag_bits & (~ conf->etag_remove)) | conf->etag_add;
    }
    else {
        conf->etag_bits = new->etag_bits;
        conf->etag_add = new->etag_add;
        conf->etag_remove = new->etag_remove;
    }

    if (conf->etag_bits != (1 << 0)) {
        conf->etag_bits &= (~ (1 << 0));
    }

    if (new->enable_mmap != (2)) {
        conf->enable_mmap = new->enable_mmap;
    }

    if (new->enable_sendfile != (2)) {
        conf->enable_sendfile = new->enable_sendfile;
    }

    conf->allow_encoded_slashes = new->allow_encoded_slashes;

    return (void*)conf;
}

static void *create_core_server_config(apr_pool_t *a, server_rec *s)
{
    core_server_config *conf;
    int is_virtual = s->is_virtual;

    conf = (core_server_config *)memset(apr_palloc(a, sizeof(core_server_config)), 0, sizeof(core_server_config));





    conf->access_name = is_virtual ? ((void *)0) : ".htaccess";
    conf->ap_document_root = is_virtual ? ((void *)0) : "/home/user/Desktop/demo/installdir/" "/htdocs";
    conf->sec_dir = apr_array_make(a, 40, sizeof(ap_conf_vector_t *));
    conf->sec_url = apr_array_make(a, 40, sizeof(ap_conf_vector_t *));


    conf->redirect_limit = 0;
    conf->subreq_limit = 0;

    conf->protocol = ((void *)0);
    conf->accf_map = apr_table_make(a, 5);


    apr_table_set(conf->accf_map, "http", "data");
    apr_table_set(conf->accf_map, "https", "data");
# 487 "core.c"
    conf->trace_enable = -1;

    return (void *)conf;
}

static void *merge_core_server_configs(apr_pool_t *p, void *basev, void *virtv)
{
    core_server_config *base = (core_server_config *)basev;
    core_server_config *virt = (core_server_config *)virtv;
    core_server_config *conf;

    conf = (core_server_config *)apr_pmemdup(p, virt, sizeof(core_server_config));

    if (!conf->access_name) {
        conf->access_name = base->access_name;
    }

    if (!conf->ap_document_root) {
        conf->ap_document_root = base->ap_document_root;
    }

    if (!conf->protocol) {
        conf->protocol = base->protocol;
    }

    conf->sec_dir = apr_array_append(p, base->sec_dir, virt->sec_dir);
    conf->sec_url = apr_array_append(p, base->sec_url, virt->sec_url);

    conf->redirect_limit = virt->redirect_limit
                           ? virt->redirect_limit
                           : base->redirect_limit;

    conf->subreq_limit = virt->subreq_limit
                         ? virt->subreq_limit
                         : base->subreq_limit;

    conf->trace_enable = (virt->trace_enable != -1)
                         ? virt->trace_enable
                         : base->trace_enable;

    return conf;
}





void ap_add_per_dir_conf(server_rec *s, void *dir_config)
{
    core_server_config *sconf = (((void **)(s->module_config))[(&core_module)->module_index])
                                                                  ;
    void **new_space = (void **)apr_array_push(sconf->sec_dir);

    *new_space = dir_config;
}

void ap_add_per_url_conf(server_rec *s, void *url_config)
{
    core_server_config *sconf = (((void **)(s->module_config))[(&core_module)->module_index])
                                                                  ;
    void **new_space = (void **)apr_array_push(sconf->sec_url);

    *new_space = url_config;
}

void ap_add_file_conf(core_dir_config *conf, void *url_config)
{
    void **new_space = (void **)apr_array_push(conf->sec_file);

    *new_space = url_config;
}






struct reorder_sort_rec {
    ap_conf_vector_t *elt;
    int orig_index;
};

static int reorder_sorter(const void *va, const void *vb)
{
    const struct reorder_sort_rec *a = va;
    const struct reorder_sort_rec *b = vb;
    core_dir_config *core_a;
    core_dir_config *core_b;

    core_a = (((void **)(a->elt))[(&core_module)->module_index]);
    core_b = (((void **)(b->elt))[(&core_module)->module_index]);



    if (!core_a->r && core_b->r) {
        return -1;
    }
    else if (core_a->r && !core_b->r) {
        return 1;
    }



    if (core_a->d_components < core_b->d_components) {
        return -1;
    }
    else if (core_a->d_components > core_b->d_components) {
        return 1;
    }




    return a->orig_index - b->orig_index;
}

void ap_core_reorder_directories(apr_pool_t *p, server_rec *s)
{
    core_server_config *sconf;
    apr_array_header_t *sec_dir;
    struct reorder_sort_rec *sortbin;
    int nelts;
    ap_conf_vector_t **elts;
    int i;
    apr_pool_t *tmp;

    sconf = (((void **)(s->module_config))[(&core_module)->module_index]);
    sec_dir = sconf->sec_dir;
    nelts = sec_dir->nelts;
    elts = (ap_conf_vector_t **)sec_dir->elts;

    if (!nelts) {





        return;
    }


    apr_pool_create_ex(&tmp, p, ((void *)0), ((void *)0));
    sortbin = apr_palloc(tmp, sec_dir->nelts * sizeof(*sortbin));
    for (i = 0; i < nelts; ++i) {
        sortbin[i].orig_index = i;
        sortbin[i].elt = elts[i];
    }

    qsort(sortbin, nelts, sizeof(*sortbin), reorder_sorter);


    for (i = 0; i < nelts; ++i) {
        elts[i] = sortbin[i].elt;
    }

    apr_pool_destroy(tmp);
}
# 653 "core.c"
int ap_allow_options(request_rec *r)
{
    core_dir_config *conf =
      (core_dir_config *)(((void **)(r->per_dir_config))[(&core_module)->module_index]);

    return conf->opts;
}

int ap_allow_overrides(request_rec *r)
{
    core_dir_config *conf;
    conf = (core_dir_config *)(((void **)(r->per_dir_config))[(&core_module)->module_index])
                                                                ;

    return conf->override;
}

const char * ap_auth_type(request_rec *r)
{
    core_dir_config *conf;

    conf = (core_dir_config *)(((void **)(r->per_dir_config))[(&core_module)->module_index])
                                                                ;

    return conf->ap_auth_type;
}

const char * ap_auth_name(request_rec *r)
{
    core_dir_config *conf;

    conf = (core_dir_config *)(((void **)(r->per_dir_config))[(&core_module)->module_index])
                                                                ;

    return conf->ap_auth_name;
}

const char * ap_default_type(request_rec *r)
{
    core_dir_config *conf;

    conf = (core_dir_config *)(((void **)(r->per_dir_config))[(&core_module)->module_index])
                                                                ;

    return conf->ap_default_type
               ? conf->ap_default_type
               : "text/plain";
}

const char * ap_document_root(request_rec *r)
{
    core_server_config *conf;

    conf = (core_server_config *)(((void **)(r->server->module_config))[(&core_module)->module_index])
                                                                   ;

    return conf->ap_document_root;
}

const apr_array_header_t * ap_requires(request_rec *r)
{
    core_dir_config *conf;

    conf = (core_dir_config *)(((void **)(r->per_dir_config))[(&core_module)->module_index])
                                                                ;

    return conf->ap_requires;
}

int ap_satisfies(request_rec *r)
{
    core_dir_config *conf;

    conf = (core_dir_config *)(((void **)(r->per_dir_config))[(&core_module)->module_index])
                                                                ;

    return conf->satisfy[r->method_number];
}






char *ap_response_code_string(request_rec *r, int error_index)
{
    core_dir_config *dirconf;
    core_request_config *reqconf;


    reqconf = (core_request_config *)(((void **)(r->request_config))[(&core_module)->module_index])
                                                                       ;
    if (reqconf->response_code_strings != ((void *)0) &&
        reqconf->response_code_strings[error_index] != ((void *)0)) {
        return reqconf->response_code_strings[error_index];
    }


    dirconf = (core_dir_config *)(((void **)(r->per_dir_config))[(&core_module)->module_index])
                                                                   ;

    if (dirconf->response_code_strings == ((void *)0)) {
        return ((void *)0);
    }

    if (dirconf->response_code_strings[error_index] == &errordocument_default) {
        return ((void *)0);
    }

    return dirconf->response_code_strings[error_index];
}



static __inline__ void do_double_reverse (conn_rec *conn)
{
    apr_sockaddr_t *sa;
    apr_status_t rv;

    if (conn->double_reverse) {

        return;
    }

    if (conn->remote_host == ((void *)0) || conn->remote_host[0] == '\0') {

        conn->double_reverse = -1;
        return;
    }

    rv = apr_sockaddr_info_get(&sa, conn->remote_host, 0, 0, 0, conn->pool);
    if (rv == 0) {
        while (sa) {
            if (apr_sockaddr_equal(sa, conn->remote_addr)) {
                conn->double_reverse = 1;
                return;
            }

            sa = sa->next;
        }
    }

    conn->double_reverse = -1;
}

const char * ap_get_remote_host(conn_rec *conn, void *dir_config,
                                            int type, int *str_is_ip)
{
    int hostname_lookups;
    int ignored_str_is_ip;

    if (!str_is_ip) {
        str_is_ip = &ignored_str_is_ip;
    }
    *str_is_ip = 0;


    if (dir_config) {
        hostname_lookups =
            ((core_dir_config *)(((void **)(dir_config))[(&core_module)->module_index]))
            ->hostname_lookups;

        if (hostname_lookups == 3) {
            hostname_lookups = 0;
        }
    }
    else {

        hostname_lookups = 0;
    }

    if (type != (2)
        && conn->remote_host == ((void *)0)
        && (type == (3)
        || hostname_lookups != 0)) {

        if (apr_getnameinfo(&conn->remote_host, conn->remote_addr, 0)
            == 0) {
            ap_str_tolower(conn->remote_host);

            if (hostname_lookups == 2) {
                do_double_reverse(conn);
                if (conn->double_reverse != 1) {
                    conn->remote_host = ((void *)0);
                }
            }
        }


        if (conn->remote_host == ((void *)0)) {
            conn->remote_host = "";
        }
    }

    if (type == (3)) {
        do_double_reverse(conn);
        if (conn->double_reverse == -1) {
            return ((void *)0);
        }
    }






    if (conn->remote_host != ((void *)0) && conn->remote_host[0] != '\0') {
        return conn->remote_host;
    }
    else {
        if (type == (0) || type == (3)) {
            return ((void *)0);
        }
        else {
            *str_is_ip = 1;
            return conn->remote_ip;
        }
    }
}




static apr_OFN_ap_ident_lookup_t *ident_lookup;

const char * ap_get_remote_logname(request_rec *r)
{
    if (r->connection->remote_logname != ((void *)0)) {
        return r->connection->remote_logname;
    }

    if (ident_lookup) {
        return ident_lookup(r);
    }

    return ((void *)0);
}
# 902 "core.c"
const char * ap_get_server_name(request_rec *r)
{
    conn_rec *conn = r->connection;
    core_dir_config *d;
    const char *retval;

    d = (core_dir_config *)(((void **)(r->per_dir_config))[(&core_module)->module_index])
                                                             ;

    switch (d->use_canonical_name) {
        case (1):
            retval = r->server->server_hostname;
            break;
        case (2):
            if (conn->local_host == ((void *)0)) {
                if (apr_getnameinfo(&conn->local_host,
                                conn->local_addr, 0) != 0)
                    conn->local_host = apr_pstrdup(conn->pool,
                                               r->server->server_hostname);
                else {
                    ap_str_tolower(conn->local_host);
                }
            }
            retval = conn->local_host;
            break;
        case (0):
        case (3):
            retval = r->hostname ? r->hostname : r->server->server_hostname;
            break;
        default:
            ap_log_rerror("core.c",932, 3, 0, r,
                         "ap_get_server_name: Invalid UCN Option somehow");
            retval = "localhost";
            break;
    }
    return retval;
}






static const char *get_server_name_for_url(request_rec *r)
{
    const char *plain_server_name = ap_get_server_name(r);


    if (strchr(plain_server_name, ':')) {
        return apr_psprintf(r->pool, "[%s]", plain_server_name);
    }

    return plain_server_name;
}

apr_port_t ap_get_server_port(const request_rec *r)
{
    apr_port_t port;
    core_dir_config *d =
      (core_dir_config *)(((void **)(r->per_dir_config))[(&core_module)->module_index]);

    switch (d->use_canonical_name) {
        case (0):
        case (2):
        case (3):
            if (d->use_canonical_phys_port == (1))
                port = r->parsed_uri.port_str ? r->parsed_uri.port :
                       r->connection->local_addr->port ? r->connection->local_addr->port :
                       r->server->port ? r->server->port :
                       ap_run_default_port(r);
            else
                port = r->parsed_uri.port_str ? r->parsed_uri.port :
                       r->server->port ? r->server->port :
                       ap_run_default_port(r);
            break;
        case (1):
# 986 "core.c"
            if (d->use_canonical_phys_port == (1))
                port = r->server->port ? r->server->port :
                       r->connection->local_addr->port ? r->connection->local_addr->port :
                       ap_run_default_port(r);
            else
                port = r->server->port ? r->server->port :
                       ap_run_default_port(r);
            break;
        default:
            ap_log_rerror("core.c",995, 3, 0, r,
                         "ap_get_server_port: Invalid UCN Option somehow");
            port = ap_run_default_port(r);
            break;
    }

    return port;
}

char * ap_construct_url(apr_pool_t *p, const char *uri,
                                    request_rec *r)
{
    unsigned port = ap_get_server_port(r);
    const char *host = get_server_name_for_url(r);

    if (((port) == ap_run_default_port(r))) {
        return apr_pstrcat(p, ap_run_http_scheme(r), "://", host, uri, ((void *)0));
    }

    return apr_psprintf(p, "%s://%s:%u%s", ap_run_http_scheme(r), host, port, uri);
}

apr_off_t ap_get_limit_req_body(const request_rec *r)
{
    core_dir_config *d =
      (core_dir_config *)(((void **)(r->per_dir_config))[(&core_module)->module_index]);

    if (d->limit_req_body == ((apr_off_t) -1)) {
        return ((apr_off_t) 0);
    }

    return d->limit_req_body;
}
# 1038 "core.c"
static const ap_directive_t * find_parent(const ap_directive_t *dirp,
                                          const char *what)
{
    while (dirp->parent != ((void *)0)) {
        dirp = dirp->parent;


        if (strcasecmp(dirp->directive, what) == 0)
            return dirp;
    }

    return ((void *)0);
}

const char * ap_check_cmd_context(cmd_parms *cmd,
                                              unsigned forbidden)
{
    const char *gt = (cmd->cmd->name[0] == '<'
                      && cmd->cmd->name[strlen(cmd->cmd->name)-1] != '>')
                         ? ">" : "";
    const ap_directive_t *found;

    if ((forbidden & 0x01) && cmd->server->is_virtual) {
        return apr_pstrcat(cmd->pool, cmd->cmd->name, gt,
                           " cannot occur within <VirtualHost> section", ((void *)0));
    }

    if ((forbidden & 0x02) && cmd->limited != -1) {
        return apr_pstrcat(cmd->pool, cmd->cmd->name, gt,
                           " cannot occur within <Limit> section", ((void *)0));
    }

    if ((forbidden & (0x04|0x08|0x10)) == (0x04|0x08|0x10)) {
        if (cmd->path != ((void *)0)) {
            return apr_pstrcat(cmd->pool, cmd->cmd->name, gt,
                            " cannot occur within <Directory/Location/Files> "
                            "section", ((void *)0));
        }
        if (cmd->cmd->req_override & 256) {



            return ((void *)0);
        }
    }

    if (((forbidden & 0x04)
         && ((found = find_parent(cmd->directive, "<Directory"))
             || (found = find_parent(cmd->directive, "<DirectoryMatch"))))
        || ((forbidden & 0x08)
            && ((found = find_parent(cmd->directive, "<Location"))
                || (found = find_parent(cmd->directive, "<LocationMatch"))))
        || ((forbidden & 0x10)
            && ((found = find_parent(cmd->directive, "<Files"))
                || (found = find_parent(cmd->directive, "<FilesMatch"))))) {
        return apr_pstrcat(cmd->pool, cmd->cmd->name, gt,
                           " cannot occur within ", found->directive,
                           "> section", ((void *)0));
    }

    return ((void *)0);
}

static const char *set_access_name(cmd_parms *cmd, void *dummy,
                                   const char *arg)
{
    void *sconf = cmd->server->module_config;
    core_server_config *conf = (((void **)(sconf))[(&core_module)->module_index]);

    const char *err = ap_check_cmd_context(cmd,
                                           (0x04|0x08|0x10)|0x02);
    if (err != ((void *)0)) {
        return err;
    }

    conf->access_name = apr_pstrdup(cmd->pool, arg);
    return ((void *)0);
}
# 1134 "core.c"
static const char *set_add_default_charset(cmd_parms *cmd,
                                           void *d_, const char *arg)
{
    core_dir_config *d = d_;

    const char *err = ap_check_cmd_context(cmd, 0x02);
    if (err != ((void *)0)) {
        return err;
    }

    if (!strcasecmp(arg, "Off")) {
       d->add_default_charset = (0);
    }
    else if (!strcasecmp(arg, "On")) {
       d->add_default_charset = (1);
       d->add_default_charset_name = "iso-8859-1";
    }
    else {
       d->add_default_charset = (1);
       d->add_default_charset_name = arg;
    }

    return ((void *)0);
}

static const char *set_document_root(cmd_parms *cmd, void *dummy,
                                     const char *arg)
{
    void *sconf = cmd->server->module_config;
    core_server_config *conf = (((void **)(sconf))[(&core_module)->module_index]);

    const char *err = ap_check_cmd_context(cmd,
                                           (0x04|0x08|0x10)|0x02);
    if (err != ((void *)0)) {
        return err;
    }


    arg = ap_server_root_relative(cmd->pool, arg);
    if (arg == ((void *)0)) {
        return "DocumentRoot must be a directory";
    }


    if (apr_filepath_merge((char**)&conf->ap_document_root, ((void *)0), arg,
                           0x20, cmd->pool) != 0
        || !ap_is_directory(cmd->pool, arg)) {
        if (cmd->server->is_virtual) {
            ap_log_perror("core.c",1182, ((0x07 + 1) * 4), 0,
                          cmd->pool,
                          "Warning: DocumentRoot [%s] does not exist",
                          arg);
            conf->ap_document_root = arg;
        }
        else {
            return "DocumentRoot must be a directory";
        }
    }
    return ((void *)0);
}

void ap_custom_response(request_rec *r, int status,
                                    const char *string)
{
    core_request_config *conf =
        (((void **)(r->request_config))[(&core_module)->module_index]);
    int idx;

    if (conf->response_code_strings == ((void *)0)) {
        conf->response_code_strings =
            memset(apr_palloc(r->pool, sizeof(*conf->response_code_strings) * 57), 0, sizeof(*conf->response_code_strings) * 57)
                                                                              ;
    }

    idx = ap_index_of_response(status);

    conf->response_code_strings[idx] =
       ((ap_is_url(string) || (*string == '/')) && (*string != '"')) ?
       apr_pstrdup(r->pool, string) : apr_pstrcat(r->pool, "\"", string, ((void *)0));
}

static const char *set_error_document(cmd_parms *cmd, void *conf_,
                                      const char *errno_str, const char *msg)
{
    core_dir_config *conf = conf_;
    int error_number, index_number, idx500;
    enum { MSG, LOCAL_PATH, REMOTE_PATH } what = MSG;

    const char *err = ap_check_cmd_context(cmd, 0x02);
    if (err != ((void *)0)) {
        return err;
    }




    error_number = atoi(errno_str);
    idx500 = ap_index_of_response(500);

    if (error_number == 500) {
        index_number = idx500;
    }
    else if ((index_number = ap_index_of_response(error_number)) == idx500) {
        return apr_pstrcat(cmd->pool, "Unsupported HTTP response code ",
                           errno_str, ((void *)0));
    }


    if (strchr(msg, ' '))
        what = MSG;
    else if (msg[0] == '/')
        what = LOCAL_PATH;
    else if (ap_is_url(msg))
        what = REMOTE_PATH;
    else
        what = MSG;



    if (error_number == 401 && what == REMOTE_PATH) {
        ap_log_error("core.c",1254, 5, 0, cmd->server,
                     "cannot use a full URL in a 401 ErrorDocument "
                     "directive --- ignoring!");
    }
    else {
        if (conf->response_code_strings == ((void *)0)) {
            conf->response_code_strings =
                memset(apr_palloc(cmd->pool, sizeof(*conf->response_code_strings) * 57), 0, sizeof(*conf->response_code_strings) * 57)

                                           ;
        }

        if (strcmp(msg, "default") == 0) {



            conf->response_code_strings[index_number] = &errordocument_default;
        }
        else {




            conf->response_code_strings[index_number] = (what == MSG) ?
                    apr_pstrcat(cmd->pool, "\"",msg,((void *)0)) :
                    apr_pstrdup(cmd->pool, msg);
        }
    }

    return ((void *)0);
}

static const char *set_allow_opts(cmd_parms *cmd, allow_options_t *opts,
                                  const char *l)
{
    allow_options_t opt;
    int first = 1;

    char *w, *p = (char *) l;
    char *tok_state;

    while ((w = apr_strtok(p, ",", &tok_state)) != ((void *)0)) {

        if (first) {
            p = ((void *)0);
            *opts = 0;
            first = 0;
        }

        if (!strcasecmp(w, "Indexes")) {
            opt = 1;
        }
        else if (!strcasecmp(w, "Includes")) {
            opt = 2;
        }
        else if (!strcasecmp(w, "IncludesNOEXEC")) {
            opt = (2 | 32);
        }
        else if (!strcasecmp(w, "FollowSymLinks")) {
            opt = 4;
        }
        else if (!strcasecmp(w, "SymLinksIfOwnerMatch")) {
            opt = 64;
        }
        else if (!strcasecmp(w, "ExecCGI")) {
            opt = 8;
        }
        else if (!strcasecmp(w, "MultiViews")) {
            opt = 128;
        }
        else if (!strcasecmp(w, "RunScripts")) {
            opt = 128|8;
        }
        else if (!strcasecmp(w, "None")) {
            opt = 0;
        }
        else if (!strcasecmp(w, "All")) {
            opt = (1|2|4|8);
        }
        else {
            return apr_pstrcat(cmd->pool, "Illegal option ", w, ((void *)0));
        }

        *opts |= opt;
    }

    (*opts) &= (~16);

    return ((void *)0);
}

static const char *set_override(cmd_parms *cmd, void *d_, const char *l)
{
    core_dir_config *d = d_;
    char *w;
    char *k, *v;

    const char *err = ap_check_cmd_context(cmd, 0x02);
    if (err != ((void *)0)) {
        return err;
    }


    if (ap_check_cmd_context(cmd, 0x08 | 0x10)) {
        ap_log_error("core.c",1358, 4, 0, cmd->server,
                     "Useless use of AllowOverride in line %d of %s.",
                     cmd->directive->line_num, cmd->directive->filename);
    }

    d->override = 0;
    while (l[0]) {
        w = ap_getword_conf(cmd->pool, &l);

        k = w;
        v = strchr(k, '=');
        if (v) {
                *v++ = '\0';
        }

        if (!strcasecmp(w, "Limit")) {
            d->override |= 1;
        }
        else if (!strcasecmp(k, "Options")) {
            d->override |= 2;
            if (v)
                set_allow_opts(cmd, &(d->override_opts), v);
            else
                d->override_opts = (1|2|4|8);
        }
        else if (!strcasecmp(w, "FileInfo")) {
            d->override |= 4;
        }
        else if (!strcasecmp(w, "AuthConfig")) {
            d->override |= 8;
        }
        else if (!strcasecmp(w, "Indexes")) {
            d->override |= 16;
        }
        else if (!strcasecmp(w, "None")) {
            d->override = 0;
        }
        else if (!strcasecmp(w, "All")) {
            d->override = (1|2|4|8|16);
        }
        else {
            return apr_pstrcat(cmd->pool, "Illegal override option ", w, ((void *)0));
        }

        d->override &= ~32;
    }

    return ((void *)0);
}

static const char *set_options(cmd_parms *cmd, void *d_, const char *l)
{
    core_dir_config *d = d_;
    allow_options_t opt;
    int first = 1;
    char action;

    while (l[0]) {
        char *w = ap_getword_conf(cmd->pool, &l);
        action = '\0';

        if (*w == '+' || *w == '-') {
            action = *(w++);
        }
        else if (first) {
              d->opts = 0;
            first = 0;
        }

        if (!strcasecmp(w, "Indexes")) {
            opt = 1;
        }
        else if (!strcasecmp(w, "Includes")) {
            opt = 2;
        }
        else if (!strcasecmp(w, "IncludesNOEXEC")) {
            opt = (2 | 32);
        }
        else if (!strcasecmp(w, "FollowSymLinks")) {
            opt = 4;
        }
        else if (!strcasecmp(w, "SymLinksIfOwnerMatch")) {
            opt = 64;
        }
        else if (!strcasecmp(w, "ExecCGI")) {
            opt = 8;
        }
        else if (!strcasecmp(w, "MultiViews")) {
            opt = 128;
        }
        else if (!strcasecmp(w, "RunScripts")) {
            opt = 128|8;
        }
        else if (!strcasecmp(w, "None")) {
            opt = 0;
        }
        else if (!strcasecmp(w, "All")) {
            opt = (1|2|4|8);
        }
        else {
            return apr_pstrcat(cmd->pool, "Illegal option ", w, ((void *)0));
        }

        if ( (cmd->override_opts & opt) != opt ) {
            return apr_pstrcat(cmd->pool, "Option ", w, " not allowed here", ((void *)0));
        }
        else if (action == '-') {

            d->opts_remove |= opt;
            d->opts_add &= ~opt;
            d->opts &= ~opt;
        }
        else if (action == '+') {
            d->opts_add |= opt;
            d->opts_remove &= ~opt;
            d->opts |= opt;
        }
        else {
            d->opts |= opt;
        }
    }

    return ((void *)0);
}






static const char *set_etag_bits(cmd_parms *cmd, void *mconfig,
                                 const char *args_p)
{
    core_dir_config *cfg;
    etag_components_t bit;
    char action;
    char *token;
    const char *args;
    int valid;
    int first;
    int explicit;

    cfg = (core_dir_config *)mconfig;

    args = args_p;
    first = 1;
    explicit = 0;
    while (args[0] != '\0') {
        action = '*';
        bit = 0;
        valid = 1;
        token = ap_getword_conf(cmd->pool, &args);
        if ((*token == '+') || (*token == '-')) {
            action = *token;
            token++;
        }
        else {





            if (first) {
                cfg->etag_bits = 0;
                cfg->etag_add = 0;
                cfg->etag_remove = 0;
                first = 0;
            }
        }

        if (strcasecmp(token, "None") == 0) {
            if (action != '*') {
                valid = 0;
            }
            else {
                cfg->etag_bits = bit = (1 << 0);
                explicit = 1;
            }
        }
        else if (strcasecmp(token, "All") == 0) {
            if (action != '*') {
                valid = 0;
            }
            else {
                explicit = 1;
                cfg->etag_bits = bit = ((1 << 1) | (1 << 2) | (1 << 3));
            }
        }
        else if (strcasecmp(token, "Size") == 0) {
            bit = (1 << 3);
        }
        else if ((strcasecmp(token, "LMTime") == 0)
                 || (strcasecmp(token, "MTime") == 0)
                 || (strcasecmp(token, "LastModified") == 0)) {
            bit = (1 << 1);
        }
        else if (strcasecmp(token, "INode") == 0) {
            bit = (1 << 2);
        }
        else {
            return apr_pstrcat(cmd->pool, "Unknown keyword '",
                               token, "' for ", cmd->cmd->name,
                               " directive", ((void *)0));
        }

        if (! valid) {
            return apr_pstrcat(cmd->pool, cmd->cmd->name, " keyword '",
                               token, "' cannot be used with '+' or '-'",
                               ((void *)0));
        }

        if (action == '+') {




            cfg->etag_add |= bit;
            cfg->etag_remove &= (~ bit);
        }
        else if (action == '-') {
            cfg->etag_remove |= bit;
            cfg->etag_add &= (~ bit);
        }
        else {




            cfg->etag_bits |= bit;
            cfg->etag_add = 0;
            cfg->etag_remove = 0;
            explicit = 1;
        }
    }





    if (cfg->etag_add != 0) {
        cfg->etag_add &= (~ 0);
    }

    if (cfg->etag_remove != 0) {
        cfg->etag_remove &= (~ 0);
    }

    if (explicit) {
        cfg->etag_bits &= (~ 0);

        if ((cfg->etag_bits & (1 << 0)) != (1 << 0)) {
            cfg->etag_bits &= (~ (1 << 0));
        }
    }

    return ((void *)0);
}

static const char *set_enable_mmap(cmd_parms *cmd, void *d_,
                                   const char *arg)
{
    core_dir_config *d = d_;
    const char *err = ap_check_cmd_context(cmd, 0x02);

    if (err != ((void *)0)) {
        return err;
    }

    if (strcasecmp(arg, "on") == 0) {
        d->enable_mmap = (1);
    }
    else if (strcasecmp(arg, "off") == 0) {
        d->enable_mmap = (0);
    }
    else {
        return "parameter must be 'on' or 'off'";
    }

    return ((void *)0);
}

static const char *set_enable_sendfile(cmd_parms *cmd, void *d_,
                                   const char *arg)
{
    core_dir_config *d = d_;
    const char *err = ap_check_cmd_context(cmd, 0x02);

    if (err != ((void *)0)) {
        return err;
    }

    if (strcasecmp(arg, "on") == 0) {
        d->enable_sendfile = (1);
    }
    else if (strcasecmp(arg, "off") == 0) {
        d->enable_sendfile = (0);
    }
    else {
        return "parameter must be 'on' or 'off'";
    }

    return ((void *)0);
}

static const char *satisfy(cmd_parms *cmd, void *c_, const char *arg)
{
    core_dir_config *c = c_;
    int satisfy = 2;
    int i;

    if (!strcasecmp(arg, "all")) {
        satisfy = 0;
    }
    else if (!strcasecmp(arg, "any")) {
        satisfy = 1;
    }
    else {
        return "Satisfy either 'any' or 'all'.";
    }

    for (i = 0; i < 64; ++i) {
        if (cmd->limited & (((apr_int64_t)1) << i)) {
            c->satisfy[i] = satisfy;
        }
    }

    return ((void *)0);
}

static const char *require(cmd_parms *cmd, void *c_, const char *arg)
{
    require_line *r;
    core_dir_config *c = c_;

    if (!c->ap_requires) {
        c->ap_requires = apr_array_make(cmd->pool, 2, sizeof(require_line));
    }

    r = (require_line *)apr_array_push(c->ap_requires);
    r->requirement = apr_pstrdup(cmd->pool, arg);
    r->method_mask = cmd->limited;

    return ((void *)0);
}




static char *unclosed_directive(cmd_parms *cmd)
{
    return apr_pstrcat(cmd->pool, cmd->cmd->name,
                       "> directive missing closing '>'", ((void *)0));
}




static char *missing_container_arg(cmd_parms *cmd)
{
    return apr_pstrcat(cmd->pool, cmd->cmd->name,
                       "> directive requires additional arguments", ((void *)0));
}

const char * ap_limit_section(cmd_parms *cmd,
                                                      void *dummy,
                                                      const char *arg)
{
    const char *endp = strrchr(arg, '>');
    const char *limited_methods;
    void *tog = cmd->cmd->cmd_data;
    apr_int64_t limited = 0;
    const char *errmsg;

    const char *err = ap_check_cmd_context(cmd, 0x02);
    if (err != ((void *)0)) {
        return err;
    }

    if (endp == ((void *)0)) {
        return unclosed_directive(cmd);
    }

    limited_methods = apr_pstrndup(cmd->pool, arg, endp - arg);

    if (!limited_methods[0]) {
        return missing_container_arg(cmd);
    }

    while (limited_methods[0]) {
        char *method = ap_getword_conf(cmd->pool, &limited_methods);
        int methnum;


        methnum = ap_method_number_of(method);

        if (methnum == 6 && !tog) {
            return "TRACE cannot be controlled by <Limit>, see TraceEnable";
        }
        else if (methnum == 26) {



            methnum = ap_method_register(cmd->pool, method);
        }

        limited |= (((apr_int64_t)1) << methnum);
    }




    cmd->limited = tog ? ~limited : limited;

    errmsg = ap_walk_config(cmd->directive->first_child, cmd, cmd->context);

    cmd->limited = -1;

    return errmsg;
}
# 1790 "core.c"
static const char *dirsection(cmd_parms *cmd, void *mconfig, const char *arg)
{
    const char *errmsg;
    const char *endp = strrchr(arg, '>');
    int old_overrides = cmd->override;
    char *old_path = cmd->path;
    core_dir_config *conf;
    ap_conf_vector_t *new_dir_conf = ap_create_per_dir_config(cmd->pool);
    ap_regex_t *r = ((void *)0);
    const command_rec *thiscmd = cmd->cmd;

    const char *err = ap_check_cmd_context(cmd,
                                           (0x04|0x08|0x10)|0x02);
    if (err != ((void *)0)) {
        return err;
    }

    if (endp == ((void *)0)) {
        return unclosed_directive(cmd);
    }

    arg = apr_pstrndup(cmd->pool, arg, endp - arg);

    if (!arg[0]) {
        return missing_container_arg(cmd);
    }

    if (!arg) {
        if (thiscmd->cmd_data)
            return "<DirectoryMatch > block must specify a path";
        else
            return "<Directory > block must specify a path";
    }

    cmd->path = ap_getword_conf(cmd->pool, &arg);
    cmd->override = (1|2|4|8|16)|64;

    if (!strcmp(cmd->path, "~")) {
        cmd->path = ap_getword_conf(cmd->pool, &arg);
        if (!cmd->path)
            return "<Directory ~ > block must specify a path";
        r = ap_pregcomp(cmd->pool, cmd->path, (0)|0);
        if (!r) {
            return "Regex could not be compiled";
        }
    }
    else if (thiscmd->cmd_data) {
        r = ap_pregcomp(cmd->pool, cmd->path, (0)|0);
        if (!r) {
            return "Regex could not be compiled";
        }
    }
    else if (!strcmp(cmd->path, "/") == 0)
    {
        char *newpath;




        apr_status_t rv = apr_filepath_merge(&newpath, ((void *)0), cmd->path,
                                             0x20, cmd->pool);
        if (rv != 0 && rv != (20000 + 25)) {
            return apr_pstrcat(cmd->pool, "<Directory \"", cmd->path,
                               "\"> path is invalid.", ((void *)0));
        }

        cmd->path = newpath;
        if (cmd->path[strlen(cmd->path) - 1] != '/')
            cmd->path = apr_pstrcat(cmd->pool, cmd->path, "/", ((void *)0));
    }


    conf = ap_set_config_vectors(cmd->server, new_dir_conf, cmd->path,
                                 &core_module, cmd->pool);

    errmsg = ap_walk_config(cmd->directive->first_child, cmd, new_dir_conf);
    if (errmsg != ((void *)0))
        return errmsg;

    conf->r = r;
    conf->d = cmd->path;
    conf->d_is_fnmatch = (apr_fnmatch_test(conf->d) != 0);





    if (strcmp(conf->d, "/") == 0)
        conf->d_components = 0;
    else
        conf->d_components = ap_count_dirs(conf->d);

    ap_add_per_dir_conf(cmd->server, new_dir_conf);

    if (*arg != '\0') {
        return apr_pstrcat(cmd->pool, "Multiple ", thiscmd->name,
                           "> arguments not (yet) supported.", ((void *)0));
    }

    cmd->path = old_path;
    cmd->override = old_overrides;

    return ((void *)0);
}

static const char *urlsection(cmd_parms *cmd, void *mconfig, const char *arg)
{
    const char *errmsg;
    const char *endp = strrchr(arg, '>');
    int old_overrides = cmd->override;
    char *old_path = cmd->path;
    core_dir_config *conf;
    ap_regex_t *r = ((void *)0);
    const command_rec *thiscmd = cmd->cmd;
    ap_conf_vector_t *new_url_conf = ap_create_per_dir_config(cmd->pool);
    const char *err = ap_check_cmd_context(cmd,
                                           (0x04|0x08|0x10)|0x02);
    if (err != ((void *)0)) {
        return err;
    }

    if (endp == ((void *)0)) {
        return unclosed_directive(cmd);
    }

    arg = apr_pstrndup(cmd->pool, arg, endp - arg);

    if (!arg[0]) {
        return missing_container_arg(cmd);
    }

    cmd->path = ap_getword_conf(cmd->pool, &arg);
    cmd->override = (1|2|4|8|16)|64;

    if (thiscmd->cmd_data) {
        r = ap_pregcomp(cmd->pool, cmd->path, (0));
        if (!r) {
            return "Regex could not be compiled";
        }
    }
    else if (!strcmp(cmd->path, "~")) {
        cmd->path = ap_getword_conf(cmd->pool, &arg);
        r = ap_pregcomp(cmd->pool, cmd->path, (0));
        if (!r) {
            return "Regex could not be compiled";
        }
    }


    conf = ap_set_config_vectors(cmd->server, new_url_conf, cmd->path,
                                 &core_module, cmd->pool);

    errmsg = ap_walk_config(cmd->directive->first_child, cmd, new_url_conf);
    if (errmsg != ((void *)0))
        return errmsg;

    conf->d = apr_pstrdup(cmd->pool, cmd->path);
    conf->d_is_fnmatch = apr_fnmatch_test(conf->d) != 0;
    conf->r = r;

    ap_add_per_url_conf(cmd->server, new_url_conf);

    if (*arg != '\0') {
        return apr_pstrcat(cmd->pool, "Multiple ", thiscmd->name,
                           "> arguments not (yet) supported.", ((void *)0));
    }

    cmd->path = old_path;
    cmd->override = old_overrides;

    return ((void *)0);
}

static const char *filesection(cmd_parms *cmd, void *mconfig, const char *arg)
{
    const char *errmsg;
    const char *endp = strrchr(arg, '>');
    int old_overrides = cmd->override;
    char *old_path = cmd->path;
    core_dir_config *conf;
    ap_regex_t *r = ((void *)0);
    const command_rec *thiscmd = cmd->cmd;
    core_dir_config *c = mconfig;
    ap_conf_vector_t *new_file_conf = ap_create_per_dir_config(cmd->pool);
    const char *err = ap_check_cmd_context(cmd, 0x02|0x08);

    if (err != ((void *)0)) {
        return err;
    }

    if (endp == ((void *)0)) {
        return unclosed_directive(cmd);
    }

    arg = apr_pstrndup(cmd->pool, arg, endp - arg);

    if (!arg[0]) {
        return missing_container_arg(cmd);
    }

    cmd->path = ap_getword_conf(cmd->pool, &arg);

    if (!old_path) {
        cmd->override = (1|2|4|8|16)|64;
    }

    if (thiscmd->cmd_data) {
        r = ap_pregcomp(cmd->pool, cmd->path, (0)|0);
        if (!r) {
            return "Regex could not be compiled";
        }
    }
    else if (!strcmp(cmd->path, "~")) {
        cmd->path = ap_getword_conf(cmd->pool, &arg);
        r = ap_pregcomp(cmd->pool, cmd->path, (0)|0);
        if (!r) {
            return "Regex could not be compiled";
        }
    }
    else {
        char *newpath;


        if (apr_filepath_merge(&newpath, "", cmd->path,
                               0, cmd->pool) != 0)
                return apr_pstrcat(cmd->pool, "<Files \"", cmd->path,
                               "\"> is invalid.", ((void *)0));
        cmd->path = newpath;
    }


    conf = ap_set_config_vectors(cmd->server, new_file_conf, cmd->path,
                                 &core_module, cmd->pool);

    errmsg = ap_walk_config(cmd->directive->first_child, cmd, new_file_conf);
    if (errmsg != ((void *)0))
        return errmsg;

    conf->d = cmd->path;
    conf->d_is_fnmatch = apr_fnmatch_test(conf->d) != 0;
    conf->r = r;

    ap_add_file_conf(c, new_file_conf);

    if (*arg != '\0') {
        return apr_pstrcat(cmd->pool, "Multiple ", thiscmd->name,
                           "> arguments not (yet) supported.", ((void *)0));
    }

    cmd->path = old_path;
    cmd->override = old_overrides;

    return ((void *)0);
}

static const char *start_ifmod(cmd_parms *cmd, void *mconfig, const char *arg)
{
    const char *endp = strrchr(arg, '>');
    int not = (arg[0] == '!');
    module *found;

    if (endp == ((void *)0)) {
        return unclosed_directive(cmd);
    }

    arg = apr_pstrndup(cmd->pool, arg, endp - arg);

    if (not) {
        arg++;
    }

    if (!arg[0]) {
        return missing_container_arg(cmd);
    }

    found = ap_find_linked_module(arg);


    if (!found) {
        ap_module_symbol_t *current = ap_prelinked_module_symbols;

        for (; current->name; ++current) {
            if (!strcmp(current->name, arg)) {
                found = current->modp;
                break;
            }
        }
    }


    if (!found) {
        apr_OFN_ap_find_loaded_module_symbol_t *check_symbol =
            (apr_OFN_ap_find_loaded_module_symbol_t *)apr_dynamic_fn_retrieve("ap_find_loaded_module_symbol");

        if (check_symbol) {
            found = check_symbol(cmd->server, arg);
        }
    }

    if ((!not && found) || (not && !found)) {
        ap_directive_t *parent = ((void *)0);
        ap_directive_t *current = ((void *)0);
        const char *retval;

        retval = ap_build_cont_config(cmd->pool, cmd->temp_pool, cmd,
                                      &current, &parent, "<IfModule");
        *(ap_directive_t **)mconfig = current;
        return retval;
    }
    else {
        *(ap_directive_t **)mconfig = ((void *)0);
        return ap_soak_end_container(cmd, "<IfModule");
    }
}

int ap_exists_config_define(const char *name)
{
    char **defines;
    int i;

    defines = (char **)ap_server_config_defines->elts;
    for (i = 0; i < ap_server_config_defines->nelts; i++) {
        if (strcmp(defines[i], name) == 0) {
            return 1;
        }
    }

    return 0;
}

static const char *start_ifdefine(cmd_parms *cmd, void *dummy, const char *arg)
{
    const char *endp;
    int defined;
    int not = 0;

    endp = strrchr(arg, '>');
    if (endp == ((void *)0)) {
        return unclosed_directive(cmd);
    }

    arg = apr_pstrndup(cmd->pool, arg, endp - arg);

    if (arg[0] == '!') {
        not = 1;
        arg++;
    }

    if (!arg[0]) {
        return missing_container_arg(cmd);
    }

    defined = ap_exists_config_define(arg);
    if ((!not && defined) || (not && !defined)) {
        ap_directive_t *parent = ((void *)0);
        ap_directive_t *current = ((void *)0);
        const char *retval;

        retval = ap_build_cont_config(cmd->pool, cmd->temp_pool, cmd,
                                      &current, &parent, "<IfDefine");
        *(ap_directive_t **)dummy = current;
        return retval;
    }
    else {
        *(ap_directive_t **)dummy = ((void *)0);
        return ap_soak_end_container(cmd, "<IfDefine");
    }
}



static const char *virtualhost_section(cmd_parms *cmd, void *dummy,
                                       const char *arg)
{
    server_rec *main_server = cmd->server, *s;
    const char *errmsg;
    const char *endp = strrchr(arg, '>');
    apr_pool_t *p = cmd->pool;

    const char *err = ap_check_cmd_context(cmd, (0x01|0x02|(0x04|0x08|0x10)));
    if (err != ((void *)0)) {
        return err;
    }

    if (endp == ((void *)0)) {
        return unclosed_directive(cmd);
    }

    arg = apr_pstrndup(cmd->pool, arg, endp - arg);

    if (!arg[0]) {
        return missing_container_arg(cmd);
    }






    if (main_server->is_virtual) {
        return "<VirtualHost> doesn't nest!";
    }

    errmsg = ap_init_virtual_host(p, arg, main_server, &s);
    if (errmsg) {
        return errmsg;
    }

    s->next = main_server->next;
    main_server->next = s;

    s->defn_name = cmd->directive->filename;
    s->defn_line_number = cmd->directive->line_num;

    cmd->server = s;

    errmsg = ap_walk_config(cmd->directive->first_child, cmd,
                            s->lookup_defaults);

    cmd->server = main_server;

    return errmsg;
}

static const char *set_server_alias(cmd_parms *cmd, void *dummy,
                                    const char *arg)
{
    if (!cmd->server->names) {
        return "ServerAlias only used in <VirtualHost>";
    }

    while (*arg) {
        char **item, *name = ap_getword_conf(cmd->pool, &arg);

        if (ap_is_matchexp(name)) {
            item = (char **)apr_array_push(cmd->server->wild_names);
        }
        else {
            item = (char **)apr_array_push(cmd->server->names);
        }

        *item = name;
    }

    return ((void *)0);
}

static const char *set_accf_map(cmd_parms *cmd, void *dummy,
                                const char *iproto, const char* iaccf)
{
    const char *err = ap_check_cmd_context(cmd, (0x01|0x02|(0x04|0x08|0x10)));
    core_server_config *conf = (((void **)(cmd->server->module_config))[(&core_module)->module_index])
                                                                 ;
    char* proto;
    char* accf;
    if (err != ((void *)0)) {
        return err;
    }

    proto = apr_pstrdup(cmd->pool, iproto);
    ap_str_tolower(proto);
    accf = apr_pstrdup(cmd->pool, iaccf);
    ap_str_tolower(accf);
    apr_table_set(conf->accf_map, proto, accf);

    return ((void *)0);
}

const char* ap_get_server_protocol(server_rec* s)
{
    core_server_config *conf = (((void **)(s->module_config))[(&core_module)->module_index])
                                                                 ;
    return conf->protocol;
}

void ap_set_server_protocol(server_rec* s, const char* proto)
{
    core_server_config *conf = (((void **)(s->module_config))[(&core_module)->module_index])
                                                                 ;
    conf->protocol = proto;
}

static const char *set_protocol(cmd_parms *cmd, void *dummy,
                                const char *arg)
{
    const char *err = ap_check_cmd_context(cmd, (0x04|0x08|0x10)|0x02);
    core_server_config *conf = (((void **)(cmd->server->module_config))[(&core_module)->module_index])
                                                                 ;
    char* proto;

    if (err != ((void *)0)) {
        return err;
    }

    proto = apr_pstrdup(cmd->pool, arg);
    ap_str_tolower(proto);
    conf->protocol = proto;

    return ((void *)0);
}

static const char *set_server_string_slot(cmd_parms *cmd, void *dummy,
                                          const char *arg)
{


    int offset = (int)(long)cmd->info;
    char *struct_ptr = (char *)cmd->server;

    const char *err = ap_check_cmd_context(cmd,
                                           (0x04|0x08|0x10)|0x02);
    if (err != ((void *)0)) {
        return err;
    }

    *(const char **)(struct_ptr + offset) = arg;
    return ((void *)0);
}
# 2317 "core.c"
static const char *server_hostname_port(cmd_parms *cmd, void *dummy, const char *arg)
{
    const char *err = ap_check_cmd_context(cmd, (0x04|0x08|0x10)|0x02);
    const char *portstr, *part;
    char *scheme;
    int port;

    if (err != ((void *)0)) {
        return err;
    }

    part = strstr(arg, "://");

    if (part) {
      scheme = apr_pstrmemdup(cmd->pool, arg, part - arg);
      ap_str_tolower(scheme);
      cmd->server->server_scheme = scheme;
      part += 3;
    } else {
      part = arg;
    }

    portstr = strchr(part, ':');
    if (portstr) {
        cmd->server->server_hostname = apr_pstrmemdup(cmd->pool, part,
                                                      portstr - part);
        portstr++;
        port = atoi(portstr);
        if (port <= 0 || port >= 65536) {
            return apr_pstrcat(cmd->temp_pool, "The port number \"", arg,
                          "\" is outside the appropriate range "
                          "(i.e., 1..65535).", ((void *)0));
        }
    }
    else {
        cmd->server->server_hostname = apr_pstrdup(cmd->pool, part);
        port = 0;
    }

    cmd->server->port = port;
    return ((void *)0);
}

static const char *set_signature_flag(cmd_parms *cmd, void *d_,
                                      const char *arg)
{
    core_dir_config *d = d_;
    const char *err = ap_check_cmd_context(cmd, 0x02);

    if (err != ((void *)0)) {
        return err;
    }

    if (strcasecmp(arg, "On") == 0) {
        d->server_signature = srv_sig_on;
    }
    else if (strcasecmp(arg, "Off") == 0) {
        d->server_signature = srv_sig_off;
    }
    else if (strcasecmp(arg, "EMail") == 0) {
        d->server_signature = srv_sig_withmail;
    }
    else {
        return "ServerSignature: use one of: off | on | email";
    }

    return ((void *)0);
}

static const char *set_server_root(cmd_parms *cmd, void *dummy,
                                   const char *arg)
{
    const char *err = ap_check_cmd_context(cmd, (0x01|0x02|(0x04|0x08|0x10)));

    if (err != ((void *)0)) {
        return err;
    }

    if ((apr_filepath_merge((char**)&ap_server_root, ((void *)0), arg,
                            0x20, cmd->pool) != 0)
        || !ap_is_directory(cmd->pool, ap_server_root)) {
        return "ServerRoot must be a valid directory";
    }

    return ((void *)0);
}

static const char *set_timeout(cmd_parms *cmd, void *dummy, const char *arg)
{
    const char *err = ap_check_cmd_context(cmd, (0x04|0x08|0x10)|0x02);

    if (err != ((void *)0)) {
        return err;
    }

    cmd->server->timeout = ((apr_time_t)(atoi(arg)) * 1000000L);
    return ((void *)0);
}

static const char *set_allow2f(cmd_parms *cmd, void *d_, int arg)
{
    core_dir_config *d = d_;
    const char *err = ap_check_cmd_context(cmd, 0x02);

    if (err != ((void *)0)) {
        return err;
    }

    d->allow_encoded_slashes = arg != 0;
    return ((void *)0);
}

static const char *set_hostname_lookups(cmd_parms *cmd, void *d_,
                                        const char *arg)
{
    core_dir_config *d = d_;
    const char *err = ap_check_cmd_context(cmd, 0x02);

    if (err != ((void *)0)) {
        return err;
    }

    if (!strcasecmp(arg, "on")) {
        d->hostname_lookups = 1;
    }
    else if (!strcasecmp(arg, "off")) {
        d->hostname_lookups = 0;
    }
    else if (!strcasecmp(arg, "double")) {
        d->hostname_lookups = 2;
    }
    else {
        return "parameter must be 'on', 'off', or 'double'";
    }

    return ((void *)0);
}

static const char *set_serverpath(cmd_parms *cmd, void *dummy,
                                  const char *arg)
{
    const char *err = ap_check_cmd_context(cmd, (0x04|0x08|0x10)|0x02);

    if (err != ((void *)0)) {
        return err;
    }

    cmd->server->path = arg;
    cmd->server->pathlen = (int)strlen(arg);
    return ((void *)0);
}

static const char *set_content_md5(cmd_parms *cmd, void *d_, int arg)
{
    core_dir_config *d = d_;
    const char *err = ap_check_cmd_context(cmd, 0x02);

    if (err != ((void *)0)) {
        return err;
    }

    d->content_md5 = arg != 0;
    return ((void *)0);
}

static const char *set_accept_path_info(cmd_parms *cmd, void *d_, const char *arg)
{
    core_dir_config *d = d_;

    if (strcasecmp(arg, "on") == 0) {
        d->accept_path_info = 0;
    }
    else if (strcasecmp(arg, "off") == 0) {
        d->accept_path_info = 1;
    }
    else if (strcasecmp(arg, "default") == 0) {
        d->accept_path_info = 2;
    }
    else {
        return "AcceptPathInfo must be set to on, off or default";
    }

    return ((void *)0);
}

static const char *set_use_canonical_name(cmd_parms *cmd, void *d_,
                                          const char *arg)
{
    core_dir_config *d = d_;
    const char *err = ap_check_cmd_context(cmd, 0x02);

    if (err != ((void *)0)) {
        return err;
    }

    if (strcasecmp(arg, "on") == 0) {
        d->use_canonical_name = (1);
    }
    else if (strcasecmp(arg, "off") == 0) {
        d->use_canonical_name = (0);
    }
    else if (strcasecmp(arg, "dns") == 0) {
        d->use_canonical_name = (2);
    }
    else {
        return "parameter must be 'on', 'off', or 'dns'";
    }

    return ((void *)0);
}

static const char *set_use_canonical_phys_port(cmd_parms *cmd, void *d_,
                                          const char *arg)
{
    core_dir_config *d = d_;
    const char *err = ap_check_cmd_context(cmd, 0x02);

    if (err != ((void *)0)) {
        return err;
    }

    if (strcasecmp(arg, "on") == 0) {
        d->use_canonical_phys_port = (1);
    }
    else if (strcasecmp(arg, "off") == 0) {
        d->use_canonical_phys_port = (0);
    }
    else {
        return "parameter must be 'on' or 'off'";
    }

    return ((void *)0);
}


static const char *include_config (cmd_parms *cmd, void *dummy,
                                   const char *name)
{
    ap_directive_t *conftree = ((void *)0);
    const char* conffile, *error;
    unsigned *recursion;
    void *data;

    apr_pool_userdata_get(&data, "ap_include_sentinel", cmd->pool);
    if (data) {
        recursion = data;
    }
    else {
        data = recursion = apr_palloc(cmd->pool, sizeof(*recursion));
        *recursion = 0;
        apr_pool_userdata_setn(data, "ap_include_sentinel", ((void *)0), cmd->pool);
    }

    if (++*recursion > (128)) {
        *recursion = 0;
        return apr_psprintf(cmd->pool, "Exceeded maximum include depth of %u. "
                            "You have probably a recursion somewhere.",
                            (128));
    }

    conffile = ap_server_root_relative(cmd->pool, name);
    if (!conffile) {
        *recursion = 0;
        return apr_pstrcat(cmd->pool, "Invalid Include path ",
                           name, ((void *)0));
    }

    error = ap_process_resource_config(cmd->server, conffile,
                                       &conftree, cmd->pool, cmd->temp_pool);
    if (error) {
        *recursion = 0;
        return error;
    }

    *(ap_directive_t **)dummy = conftree;


    if (*recursion) {
        --*recursion;
    }

    return ((void *)0);
}

static const char *set_loglevel(cmd_parms *cmd, void *dummy, const char *arg)
{
    char *str;

    const char *err = ap_check_cmd_context(cmd,
                                           (0x04|0x08|0x10)|0x02);
    if (err != ((void *)0)) {
        return err;
    }

    if ((str = ap_getword_conf(cmd->pool, &arg))) {
        if (!strcasecmp(str, "emerg")) {
            cmd->server->loglevel = 0;
        }
        else if (!strcasecmp(str, "alert")) {
            cmd->server->loglevel = 1;
        }
        else if (!strcasecmp(str, "crit")) {
            cmd->server->loglevel = 2;
        }
        else if (!strcasecmp(str, "error")) {
            cmd->server->loglevel = 3;
        }
        else if (!strcasecmp(str, "warn")) {
            cmd->server->loglevel = 4;
        }
        else if (!strcasecmp(str, "notice")) {
            cmd->server->loglevel = 5;
        }
        else if (!strcasecmp(str, "info")) {
            cmd->server->loglevel = 6;
        }
        else if (!strcasecmp(str, "debug")) {
            cmd->server->loglevel = 7;
        }
        else {
            return "LogLevel requires level keyword: one of "
                   "emerg/alert/crit/error/warn/notice/info/debug";
        }
    }
    else {
        return "LogLevel requires level keyword";
    }

    return ((void *)0);
}

const char * ap_psignature(const char *prefix, request_rec *r)
{
    char sport[20];
    core_dir_config *conf;

    conf = (core_dir_config *)(((void **)(r->per_dir_config))[(&core_module)->module_index])
                                                                ;
    if ((conf->server_signature == srv_sig_off)
            || (conf->server_signature == srv_sig_unset)) {
        return "";
    }

    apr_snprintf(sport, sizeof sport, "%u", (unsigned) ap_get_server_port(r));

    if (conf->server_signature == srv_sig_withmail) {
        return apr_pstrcat(r->pool, prefix, "<address>",
                           ap_get_server_banner(),
                           " Server at <a href=\"",
                           ap_is_url(r->server->server_admin) ? "" : "mailto:",
                           ap_escape_html(r->pool, r->server->server_admin),
                           "\">",
                           ap_escape_html(r->pool, ap_get_server_name(r)),
                           "</a> Port ", sport,
                           "</address>\n", ((void *)0));
    }

    return apr_pstrcat(r->pool, prefix, "<address>", ap_get_server_banner(),
                       " Server at ",
                       ap_escape_html(r->pool, ap_get_server_name(r)),
                       " Port ", sport,
                       "</address>\n", ((void *)0));
}





static const char *set_authname(cmd_parms *cmd, void *mconfig,
                                const char *word1)
{
    core_dir_config *aconfig = (core_dir_config *)mconfig;

    aconfig->ap_auth_name = ap_escape_quotes(cmd->pool, word1);
    return ((void *)0);
}
# 2702 "core.c"
static char *server_banner = ((void *)0);
static int banner_locked = 0;
static char *server_description = ((void *)0);

enum server_token_type {
    SrvTk_MAJOR,
    SrvTk_MINOR,
    SrvTk_MINIMAL,
    SrvTk_OS,
    SrvTk_FULL,
    SrvTk_PRODUCT_ONLY
};
static enum server_token_type ap_server_tokens = SrvTk_FULL;

static apr_status_t reset_banner(void *dummy)
{
    banner_locked = 0;
    ap_server_tokens = SrvTk_FULL;
    server_banner = ((void *)0);
    server_description = ((void *)0);
    return 0;
}

void ap_get_server_revision(ap_version_t *version)
{
    version->major = 2;
    version->minor = 2;
    version->patch = 11;
    version->add_string = "";
}

const char * ap_get_server_description(void)
{
    return server_description ? server_description :
        "Apache" "/" "2" "." "2" "." "11" "" " (" "Unix" ")";
}

const char * ap_get_server_banner(void)
{
    return server_banner ? server_banner : "Apache" "/" "2" "." "2" "." "11" "";
}




const char * ap_get_server_version(void)
{
    return ap_get_server_banner();
}

void ap_add_version_component(apr_pool_t *pconf, const char *component)
{
    if (! banner_locked) {





        if (server_banner == ((void *)0)) {
            apr_pool_cleanup_register(pconf, ((void *)0), reset_banner,
                                      apr_pool_cleanup_null);
            server_banner = apr_pstrdup(pconf, component);
        }
        else {




            server_banner = apr_pstrcat(pconf, server_banner, " ",
                                        component, ((void *)0));
        }
    }
    server_description = apr_pstrcat(pconf, server_description, " ",
                                     component, ((void *)0));
}





static void set_banner(apr_pool_t *pconf)
{
    if (ap_server_tokens == SrvTk_PRODUCT_ONLY) {
        ap_add_version_component(pconf, "Apache");
    }
    else if (ap_server_tokens == SrvTk_MINIMAL) {
        ap_add_version_component(pconf, "Apache" "/" "2" "." "2" "." "11" "");
    }
    else if (ap_server_tokens == SrvTk_MINOR) {
        ap_add_version_component(pconf, "Apache" "/" "2" "." "2");
    }
    else if (ap_server_tokens == SrvTk_MAJOR) {
        ap_add_version_component(pconf, "Apache" "/" "2");
    }
    else {
        ap_add_version_component(pconf, "Apache" "/" "2" "." "2" "." "11" "" " (" "Unix" ")");
    }





    if (ap_server_tokens != SrvTk_FULL) {
        banner_locked++;
    }
    server_description = "Apache" "/" "2" "." "2" "." "11" "" " (" "Unix" ")";
}

static const char *set_serv_tokens(cmd_parms *cmd, void *dummy,
                                   const char *arg)
{
    const char *err = ap_check_cmd_context(cmd, (0x01|0x02|(0x04|0x08|0x10)));

    if (err != ((void *)0)) {
        return err;
    }

    if (!strcasecmp(arg, "OS")) {
        ap_server_tokens = SrvTk_OS;
    }
    else if (!strcasecmp(arg, "Min") || !strcasecmp(arg, "Minimal")) {
        ap_server_tokens = SrvTk_MINIMAL;
    }
    else if (!strcasecmp(arg, "Major")) {
        ap_server_tokens = SrvTk_MAJOR;
    }
    else if (!strcasecmp(arg, "Minor") ) {
        ap_server_tokens = SrvTk_MINOR;
    }
    else if (!strcasecmp(arg, "Prod") || !strcasecmp(arg, "ProductOnly")) {
        ap_server_tokens = SrvTk_PRODUCT_ONLY;
    }
    else {
        ap_server_tokens = SrvTk_FULL;
    }

    return ((void *)0);
}

static const char *set_limit_req_line(cmd_parms *cmd, void *dummy,
                                      const char *arg)
{
    const char *err = ap_check_cmd_context(cmd,
                                           (0x04|0x08|0x10)|0x02);
    int lim;

    if (err != ((void *)0)) {
        return err;
    }

    lim = atoi(arg);
    if (lim < 0) {
        return apr_pstrcat(cmd->temp_pool, "LimitRequestLine \"", arg,
                           "\" must be a non-negative integer", ((void *)0));
    }

    cmd->server->limit_req_line = lim;
    return ((void *)0);
}

static const char *set_limit_req_fieldsize(cmd_parms *cmd, void *dummy,
                                           const char *arg)
{
    const char *err = ap_check_cmd_context(cmd,
                                           (0x04|0x08|0x10)|0x02);
    int lim;

    if (err != ((void *)0)) {
        return err;
    }

    lim = atoi(arg);
    if (lim < 0) {
        return apr_pstrcat(cmd->temp_pool, "LimitRequestFieldsize \"", arg,
                          "\" must be a non-negative integer",
                          ((void *)0));
    }

    cmd->server->limit_req_fieldsize = lim;
    return ((void *)0);
}

static const char *set_limit_req_fields(cmd_parms *cmd, void *dummy,
                                        const char *arg)
{
    const char *err = ap_check_cmd_context(cmd,
                                           (0x04|0x08|0x10)|0x02);
    int lim;

    if (err != ((void *)0)) {
        return err;
    }

    lim = atoi(arg);
    if (lim < 0) {
        return apr_pstrcat(cmd->temp_pool, "LimitRequestFields \"", arg,
                           "\" must be a non-negative integer (0 = no limit)",
                           ((void *)0));
    }

    cmd->server->limit_req_fields = lim;
    return ((void *)0);
}

static const char *set_limit_req_body(cmd_parms *cmd, void *conf_,
                                      const char *arg)
{
    core_dir_config *conf = conf_;
    const char *err = ap_check_cmd_context(cmd, 0x02);
    char *errp;

    if (err != ((void *)0)) {
        return err;
    }

    if (0 != apr_strtoff(&conf->limit_req_body, arg, &errp, 10)) {
        return "LimitRequestBody argument is not parsable.";
    }
    if (*errp || conf->limit_req_body < 0) {
        return "LimitRequestBody requires a non-negative integer.";
    }

    return ((void *)0);
}

static const char *set_limit_xml_req_body(cmd_parms *cmd, void *conf_,
                                          const char *arg)
{
    core_dir_config *conf = conf_;
    const char *err = ap_check_cmd_context(cmd, 0x02);

    if (err != ((void *)0)) {
        return err;
    }

    conf->limit_xml_body = atol(arg);
    if (conf->limit_xml_body < 0)
        return "LimitXMLRequestBody requires a non-negative integer.";

    return ((void *)0);
}

size_t ap_get_limit_xml_body(const request_rec *r)
{
    core_dir_config *conf;

    conf = (((void **)(r->per_dir_config))[(&core_module)->module_index]);
    if (conf->limit_xml_body == ((long) -1))
        return ((size_t)1000000);

    return (size_t)conf->limit_xml_body;
}
# 2967 "core.c"
static const char *set_limit_cpu(cmd_parms *cmd, void *conf_,
                                 const char *arg, const char *arg2)
{
    core_dir_config *conf = conf_;

    unixd_set_rlimit(cmd, &conf->limit_cpu, arg, arg2, RLIMIT_CPU);
    return ((void *)0);
}



static const char *set_limit_mem(cmd_parms *cmd, void *conf_,
                                 const char *arg, const char * arg2)
{
    core_dir_config *conf = conf_;


    unixd_set_rlimit(cmd, &conf->limit_mem, arg, arg2 ,RLIMIT_AS);






    return ((void *)0);
}



static const char *set_limit_nproc(cmd_parms *cmd, void *conf_,
                                   const char *arg, const char * arg2)
{
    core_dir_config *conf = conf_;

    unixd_set_rlimit(cmd, &conf->limit_nproc, arg, arg2, __RLIMIT_NPROC);
    return ((void *)0);
}


static const char *set_recursion_limit(cmd_parms *cmd, void *dummy,
                                       const char *arg1, const char *arg2)
{
    core_server_config *conf = (((void **)(cmd->server->module_config))[(&core_module)->module_index])
                                                                 ;
    int limit = atoi(arg1);

    if (limit <= 0) {
        return "The recursion limit must be greater than zero.";
    }
    if (limit < 4) {
        ap_log_error("core.c",3017, 4, 0, cmd->server,
                     "Limiting internal redirects to very low numbers may "
                     "cause normal requests to fail.");
    }

    conf->redirect_limit = limit;

    if (arg2) {
        limit = atoi(arg2);

        if (limit <= 0) {
            return "The recursion limit must be greater than zero.";
        }
        if (limit < 4) {
            ap_log_error("core.c",3031, 4, 0, cmd->server,
                         "Limiting the subrequest depth to a very low level may"
                         " cause normal requests to fail.");
        }
    }

    conf->subreq_limit = limit;

    return ((void *)0);
}

static void log_backtrace(const request_rec *r)
{
    const request_rec *top = r;

    ap_log_rerror("core.c",3046, 7, 0, r,
                  "r->uri = %s", r->uri ? r->uri : "(unexpectedly NULL)");

    while (top && (top->prev || top->main)) {
        if (top->prev) {
            top = top->prev;
            ap_log_rerror("core.c",3052, 7, 0, r,
                          "redirected from r->uri = %s",
                          top->uri ? top->uri : "(unexpectedly NULL)");
        }

        if (!top->prev && top->main) {
            top = top->main;
            ap_log_rerror("core.c",3059, 7, 0, r,
                          "subrequested from r->uri = %s",
                          top->uri ? top->uri : "(unexpectedly NULL)");
        }
    }
}




int ap_is_recursion_limit_exceeded(const request_rec *r)
{
    core_server_config *conf = (((void **)(r->server->module_config))[(&core_module)->module_index])
                                                                 ;
    const request_rec *top = r;
    int redirects = 0, subreqs = 0;
    int rlimit = conf->redirect_limit
                 ? conf->redirect_limit
                 : 10;
    int slimit = conf->subreq_limit
                 ? conf->subreq_limit
                 : 10;


    while (top->prev || top->main) {
        if (top->prev) {
            if (++redirects >= rlimit) {

                ap_log_rerror("core.c",3087, 3, 0, r,
                              "Request exceeded the limit of %d internal "
                              "redirects due to probable configuration error. "
                              "Use 'LimitInternalRecursion' to increase the "
                              "limit if necessary. Use 'LogLevel debug' to get "
                              "a backtrace.", rlimit);


                log_backtrace(r);


                return 1;
            }

            top = top->prev;
        }

        if (!top->prev && top->main) {
            if (++subreqs >= slimit) {

                ap_log_rerror("core.c",3107, 3, 0, r,
                              "Request exceeded the limit of %d subrequest "
                              "nesting levels due to probable confguration "
                              "error. Use 'LimitInternalRecursion' to increase "
                              "the limit if necessary. Use 'LogLevel debug' to "
                              "get a backtrace.", slimit);


                log_backtrace(r);


                return 1;
            }

            top = top->main;
        }
    }


    return 0;
}

static const char *add_ct_output_filters(cmd_parms *cmd, void *conf_,
                                         const char *arg, const char *arg2)
{
    core_dir_config *conf = conf_;
    ap_filter_rec_t *old, *new = ((void *)0);
    const char *filter_name;

    if (!conf->ct_output_filters) {
        conf->ct_output_filters = apr_hash_make(cmd->pool);
        old = ((void *)0);
    }
    else {
        old = (ap_filter_rec_t*) apr_hash_get(conf->ct_output_filters, arg2,
                                              (-1));

        if (old) {
            while (old->next) {
                old = old->next;
            }
        }
    }

    while (*arg &&
           (filter_name = ap_getword(cmd->pool, &arg, ';')) &&
           strcmp(filter_name, "")) {
        new = memset(apr_palloc(cmd->pool, sizeof(ap_filter_rec_t)), 0, sizeof(ap_filter_rec_t));
        new->name = filter_name;


        if (old) {
            old->next = new;
        }
        else {
            apr_hash_set(conf->ct_output_filters, arg2,
                         (-1), new);
        }
        old = new;
    }

    if (!new) {
        return "invalid filter name";
    }

    return ((void *)0);
}






void ap_add_output_filters_by_type(request_rec *r)
{
    core_dir_config *conf;
    const char *ctype;

    conf = (core_dir_config *)(((void **)(r->per_dir_config))[(&core_module)->module_index])
                                                                ;




    if (!r->content_type || !conf->ct_output_filters) {
        return;
    }


    ctype = ap_field_noparam(r->pool, r->content_type);
    if (ctype) {
        ap_filter_rec_t *ct_filter;
        ct_filter = apr_hash_get(conf->ct_output_filters, ctype,
                                 (-1));
        while (ct_filter) {
            ap_add_output_filter(ct_filter->name, ((void *)0), r, r->connection);
            ct_filter = ct_filter->next;
        }
    }

    return;
}

static const char *set_trace_enable(cmd_parms *cmd, void *dummy,
                                    const char *arg1)
{
    core_server_config *conf = (((void **)(cmd->server->module_config))[(&core_module)->module_index])
                                                                 ;

    if (strcasecmp(arg1, "on") == 0) {
        conf->trace_enable = 1;
    }
    else if (strcasecmp(arg1, "off") == 0) {
        conf->trace_enable = 0;
    }
    else if (strcasecmp(arg1, "extended") == 0) {
        conf->trace_enable = 2;
    }
    else {
        return "TraceEnable must be one of 'on', 'off', or 'extended'";
    }

    return ((void *)0);
}





static const command_rec core_cmds[] = {



{ "<Directory", { .raw_args=dirsection }, ((void *)0), 128, RAW_ARGS, "Container for directives affecting resources located in the specified " "directories" }

                ,
{ "<Location", { .raw_args=urlsection }, ((void *)0), 128, RAW_ARGS, "Container for directives affecting resources accessed through the " "specified URL paths" }

                        ,
{ "<VirtualHost", { .raw_args=virtualhost_section }, ((void *)0), 128, RAW_ARGS, "Container to map directives to a particular virtual host, takes one or " "more host addresses" }

                        ,
{ "<Files", { .raw_args=filesection }, ((void *)0), (1|2|4|8|16), RAW_ARGS, "Container for directives affecting files matching specified patterns" }
                                                                         ,
{ "<Limit", { .raw_args=ap_limit_section }, ((void *)0), (1|2|4|8|16), RAW_ARGS, "Container for authentication directives when accessed using specified HTTP " "methods" }

            ,
{ "<LimitExcept", { .raw_args=ap_limit_section }, (void*)1, (1|2|4|8|16), RAW_ARGS, "Container for authentication directives to be applied when any HTTP " "method other than those specified is used to access the resource" }

                                                                     ,
{ "<IfModule", { .take1=start_ifmod }, ((void *)0), 256 | (1|2|4|8|16), TAKE1, "Container for directives based on existance of specified modules" }
                                                                     ,
{ "<IfDefine", { .take1=start_ifdefine }, ((void *)0), 256 | (1|2|4|8|16), TAKE1, "Container for directives based on existance of command line defines" }
                                                                        ,
{ "<DirectoryMatch", { .raw_args=dirsection }, (void*)1, 128, RAW_ARGS, "Container for directives affecting resources located in the " "specified directories" }

                          ,
{ "<LocationMatch", { .raw_args=urlsection }, (void*)1, 128, RAW_ARGS, "Container for directives affecting resources accessed through the " "specified URL paths" }

                        ,
{ "<FilesMatch", { .raw_args=filesection }, (void*)1, (1|2|4|8|16), RAW_ARGS, "Container for directives affecting files matching specified patterns" }
                                                                         ,
{ "AuthType", { .take1=ap_set_string_slot }, (void*)((long) (((char *) (&(((core_dir_config*)((void *)0))->ap_auth_type))) - ((char *) ((void *)0)))), 8, TAKE1, "An HTTP authorization type (e.g., \"Basic\")" }

                                                 ,
{ "AuthName", { .take1=set_authname }, ((void *)0), 8, TAKE1, "The authentication realm (e.g. \"Members Only\")" }
                                                     ,
{ "Require", { .raw_args=require }, ((void *)0), 8, RAW_ARGS, "Selects which authenticated users or groups may access a protected space" }
                                                                             ,
{ "Satisfy", { .take1=satisfy }, ((void *)0), 8, TAKE1, "access policy if both allow and require used ('all' or 'any')" }
                                                                  ,




{ "AddDefaultCharset", { .take1=set_add_default_charset }, ((void *)0), 4, TAKE1, "The name of the default charset to add to any Content-Type without one or 'Off' to disable" }
                                                                                               ,
{ "AcceptPathInfo", { .take1=set_accept_path_info }, ((void *)0), 4, TAKE1, "Set to on or off for PATH_INFO to be accepted by handlers, or default for the per-handler preference" }
                                                                                                         ,



{ "AccessFileName", { .raw_args=set_access_name }, ((void *)0), 128, RAW_ARGS, "Name(s) of per-directory config files (default: .htaccess)" }
                                                               ,
{ "DocumentRoot", { .take1=set_document_root }, ((void *)0), 128, TAKE1, "Root directory of the document tree" }
                                        ,
{ "ErrorDocument", { .take2=set_error_document }, ((void *)0), 4, TAKE2, "Change responses for HTTP errors" }
                                     ,
{ "AllowOverride", { .raw_args=set_override }, ((void *)0), 64, RAW_ARGS, "Controls what groups of directives can be configured by per-directory " "config files" }

                 ,
{ "Options", { .raw_args=set_options }, ((void *)0), 2, RAW_ARGS, "Set a number of attributes for a given directory" }
                                                     ,
{ "DefaultType", { .take1=ap_set_string_slot }, (void*)((long) (((char *) (&(((core_dir_config*)((void *)0))->ap_default_type))) - ((char *) ((void *)0)))), 4, TAKE1, "the default MIME type for untypable files" }

                                                           ,
{ "FileETag", { .raw_args=set_etag_bits }, ((void *)0), 4, RAW_ARGS, "Specify components used to construct a file's ETag" }
                                                       ,
{ "EnableMMAP", { .take1=set_enable_mmap }, ((void *)0), 4, TAKE1, "Controls whether memory-mapping may be used to read files" }
                                                              ,
{ "EnableSendfile", { .take1=set_enable_sendfile }, ((void *)0), 4, TAKE1, "Controls whether sendfile may be used to transmit files" }
                                                            ,



{ "Protocol", { .take1=set_protocol }, ((void *)0), 128, TAKE1, "Set the Protocol for httpd to use." }
                                       ,
{ "AcceptFilter", { .take2=set_accf_map }, ((void *)0), 128, TAKE2, "Set the Accept Filter to use for a protocol" }
                                                ,
{ "Port", { .take1=ap_set_deprecated }, ((void *)0), 128, TAKE1, "Port was replaced with Listen in Apache 2.0" }
                                                ,
{ "HostnameLookups", { .take1=set_hostname_lookups }, ((void *)0), 64|128, TAKE1, "\"on\" to enable, \"off\" to disable reverse DNS lookups, or \"double\" to " "enable double-reverse DNS lookups" }


                                      ,
{ "ServerAdmin", { .take1=set_server_string_slot }, (void *)((long) (((char *) (&(((server_rec*)((void *)0))->server_admin))) - ((char *) ((void *)0)))), 128, TAKE1, "The email address of the server administrator" }

                                                  ,
{ "ServerName", { .take1=server_hostname_port }, ((void *)0), 128, TAKE1, "The hostname and port of the server" }
                                        ,
{ "ServerSignature", { .take1=set_signature_flag }, ((void *)0), (1|2|4|8|16), TAKE1, "En-/disable server signature (on|off|email)" }
                                                ,
{ "ServerRoot", { .take1=set_server_root }, ((void *)0), 128 | 256, TAKE1, "Common directory of server-related files (logs, confs, etc.)" }
                                                                 ,
{ "ErrorLog", { .take1=set_server_string_slot }, (void *)((long) (((char *) (&(((server_rec*)((void *)0))->error_fname))) - ((char *) ((void *)0)))), 128, TAKE1, "The filename of the error log" }

                                  ,
{ "ServerAlias", { .raw_args=set_server_alias }, ((void *)0), 128, RAW_ARGS, "A name or names alternately used to access the server" }
                                                          ,
{ "ServerPath", { .take1=set_serverpath }, ((void *)0), 128, TAKE1, "The pathname the server can be reached at" }
                                              ,
{ "Timeout", { .take1=set_timeout }, ((void *)0), 128, TAKE1, "Timeout duration (sec)" }
                           ,
{ "ContentDigest", { .flag=set_content_md5 }, ((void *)0), 2, FLAG, "whether or not to send a Content-MD5 header with each request" }
                                                                  ,
{ "UseCanonicalName", { .take1=set_use_canonical_name }, ((void *)0), 128|64, TAKE1, "How to work out the ServerName : Port when constructing URLs" }

                                                                 ,
{ "UseCanonicalPhysicalPort", { .take1=set_use_canonical_phys_port }, ((void *)0), 128|64, TAKE1, "Whether to use the physical Port when constructing URLs" }

                                                            ,


{ "Include", { .take1=include_config }, ((void *)0), (128 | 64 | 256), TAKE1, "Name of the config file to be included" }

                                           ,
{ "LogLevel", { .take1=set_loglevel }, ((void *)0), 128, TAKE1, "Level of verbosity in error logging" }
                                        ,
{ "NameVirtualHost", { .take1=ap_set_name_virtual_host }, ((void *)0), 128, TAKE1, "A numeric IP address:port, or the name of a host" }
                                                     ,
{ "ServerTokens", { .take1=set_serv_tokens }, ((void *)0), 128, TAKE1, "Determine tokens displayed in the Server: header - Min(imal), OS or Full" }
                                                                             ,
{ "LimitRequestLine", { .take1=set_limit_req_line }, ((void *)0), 128, TAKE1, "Limit on maximum size of an HTTP request line" }
                                                  ,
{ "LimitRequestFieldsize", { .take1=set_limit_req_fieldsize }, ((void *)0), 128, TAKE1, "Limit on maximum size of an HTTP request header field" }

                                                          ,
{ "LimitRequestFields", { .take1=set_limit_req_fields }, ((void *)0), 128, TAKE1, "Limit (0 = unlimited) on max number of header fields in a request message" }
                                                                              ,
{ "LimitRequestBody", { .take1=set_limit_req_body }, (void*)((long) (((char *) (&(((core_dir_config*)((void *)0))->limit_req_body))) - ((char *) ((void *)0)))), (1|2|4|8|16), TAKE1, "Limit (in bytes) on maximum size of request message body" }

                                                             ,
{ "LimitXMLRequestBody", { .take1=set_limit_xml_req_body }, ((void *)0), (1|2|4|8|16), TAKE1, "Limit (in bytes) on maximum size of an XML-based request " "body" }

                     ,



{ "RLimitCPU", { .take2=set_limit_cpu }, (void*)((long) (((char *) (&(((core_dir_config*)((void *)0))->limit_cpu))) - ((char *) ((void *)0)))), (1|2|4|8|16), TAKE12, "Soft/hard limits for max CPU usage in seconds" }

                                                          ,





{ "RLimitMEM", { .take2=set_limit_mem }, (void*)((long) (((char *) (&(((core_dir_config*)((void *)0))->limit_mem))) - ((char *) ((void *)0)))), (1|2|4|8|16), TAKE12, "Soft/hard limits for max memory usage per process" }

                                                              ,





{ "RLimitNPROC", { .take2=set_limit_nproc }, (void*)((long) (((char *) (&(((core_dir_config*)((void *)0))->limit_nproc))) - ((char *) ((void *)0)))), (1|2|4|8|16), TAKE12, "soft/hard limits for max number of processes per uid" }

                                                                 ,






{ "LimitInternalRecursion", { .take2=set_recursion_limit }, ((void *)0), 128, TAKE12, "maximum recursion depth of internal redirects and subrequests" }
                                                                              ,

{ "ForceType", { .take1=ap_set_string_slot_lower }, (void *)((long) (((char *) (&(((core_dir_config*)((void *)0))->mime_type))) - ((char *) ((void *)0)))), 4, TAKE1, "a mime type that overrides other configured type" }

                                                        ,
{ "SetHandler", { .take1=ap_set_string_slot_lower }, (void *)((long) (((char *) (&(((core_dir_config*)((void *)0))->handler))) - ((char *) ((void *)0)))), 4, TAKE1, "a handler name that overrides any other configured handler" }

                                                                ,
{ "SetOutputFilter", { .take1=ap_set_string_slot }, (void *)((long) (((char *) (&(((core_dir_config*)((void *)0))->output_filters))) - ((char *) ((void *)0)))), 4, TAKE1, "filter (or ; delimited list of filters) to be run on the request content" }

                                                                              ,
{ "SetInputFilter", { .take1=ap_set_string_slot }, (void *)((long) (((char *) (&(((core_dir_config*)((void *)0))->input_filters))) - ((char *) ((void *)0)))), 4, TAKE1, "filter (or ; delimited list of filters) to be run on the request body" }

                                                                           ,
{ "AddOutputFilterByType", { .take2=add_ct_output_filters }, (void *)((long) (((char *) (&(((core_dir_config*)((void *)0))->ct_output_filters))) - ((char *) ((void *)0)))), 4, ITERATE2, "output filter name followed by one or more content-types" }

                                                                ,
{ "AllowEncodedSlashes", { .flag=set_allow2f }, ((void *)0), 128, FLAG, "Allow URLs containing '/' encoded as '%2F'" }
                                                          ,







{ "PidFile", { .take1=ap_mpm_set_pidfile }, ((void *)0), 128, TAKE1, "A file for logging the server process ID" }
                                                         ,


{ "ScoreBoardFile", { .take1=ap_mpm_set_scoreboard }, ((void *)0), 128, TAKE1, "A file for Apache to maintain runtime process management information" }
                                                                                     ,


{ "LockFile", { .take1=ap_mpm_set_lockfile }, ((void *)0), 128, TAKE1, "The lockfile used when Apache needs to lock the accept() call" }
                                                                              ,


{ "MaxRequestsPerChild", { .take1=ap_mpm_set_max_requests }, ((void *)0), 128, TAKE1, "Maximum number of requests a particular child serves before dying." }
                                                                                   ,


{ "CoreDumpDirectory", { .take1=ap_mpm_set_coredumpdir }, ((void *)0), 128, TAKE1, "The location of the directory Apache changes to before dumping core" }
                                                                                    ,


{ "AcceptMutex", { .take1=ap_mpm_set_accept_lock_mech }, ((void *)0), 128, TAKE1, ap_valid_accept_mutex_string }
                                           ,


{ "MaxMemFree", { .take1=ap_mpm_set_max_mem_free }, ((void *)0), 128, TAKE1, "Maximum number of 1k blocks a particular childs allocator may hold." }
                                                                                    ,
# 3462 "core.c"
{ "TraceEnable", { .take1=set_trace_enable }, ((void *)0), 128, TAKE1, "'on' (default), 'off' or 'extended' to trace request body content" }
                                                                                  ,
{ ((void *)0) }
};






int ap_core_translate(request_rec *r)
{
    void *sconf = r->server->module_config;
    core_server_config *conf = (((void **)(sconf))[(&core_module)->module_index]);
    apr_status_t rv;




    if (r->proxyreq) {
        return 403;
    }
    if (!r->uri || ((r->uri[0] != '/') && strcmp(r->uri, "*"))) {
        ap_log_rerror("core.c",3485, 3, 0, r,
                     "Invalid URI in request %s", r->the_request);
        return 400;
    }

    if (r->server->path
        && !strncmp(r->uri, r->server->path, r->server->pathlen)
        && (r->server->path[r->server->pathlen - 1] == '/'
            || r->uri[r->server->pathlen] == '/'
            || r->uri[r->server->pathlen] == '\0'))
    {



        char *path = r->uri + r->server->pathlen;
        while (*path == '/') {
            ++path;
        }
        if ((rv = apr_filepath_merge(&r->filename, conf->ap_document_root, path,
                                     0x20
                                   | 0x03, r->pool))
                    != 0) {
            ap_log_rerror("core.c",3507, 3, rv, r,
                         "Cannot map %s to file", r->the_request);
            return 403;
        }
        r->canonical_filename = r->filename;
    }
    else {
# 3522 "core.c"
        char *path = r->uri;
        while (*path == '/') {
            ++path;
        }
        if ((rv = apr_filepath_merge(&r->filename, conf->ap_document_root, path,
                                     0x20
                                   | 0x03, r->pool))
                    != 0) {
            ap_log_rerror("core.c",3530, 3, rv, r,
                         "Cannot map %s to file", r->the_request);
            return 403;
        }
        r->canonical_filename = r->filename;
    }

    return 0;
}





static int core_map_to_storage(request_rec *r)
{
    int access_status;

    if ((access_status = ap_directory_walk(r))) {
        return access_status;
    }

    if ((access_status = ap_file_walk(r))) {
        return access_status;
    }

    return 0;
}


static int do_nothing(request_rec *r) { return 0; }


static int core_override_type(request_rec *r)
{
    core_dir_config *conf =
        (core_dir_config *)(((void **)(r->per_dir_config))[(&core_module)->module_index])
                                                             ;



    if (conf->mime_type && strcmp(conf->mime_type, "none"))
        ap_set_content_type(r, (char*) conf->mime_type);

    if (conf->handler && strcmp(conf->handler, "none"))
        r->handler = conf->handler;
# 3587 "core.c"
    if ((r->used_path_info == 2)
        && (conf->accept_path_info != 3)) {
        r->used_path_info = conf->accept_path_info;
    }

    return 0;
}

static int default_handler(request_rec *r)
{
    conn_rec *c = r->connection;
    apr_bucket_brigade *bb;
    apr_bucket *e;
    core_dir_config *d;
    int errstatus;
    apr_file_t *fd = ((void *)0);
    apr_status_t status;







    int bld_content_md5;

    d = (core_dir_config *)(((void **)(r->per_dir_config))[(&core_module)->module_index])
                                                             ;
    bld_content_md5 = (d->content_md5 & 1)
                      && r->output_filters->frec->ftype != AP_FTYPE_RESOURCE;

    ap_allow_standard_methods(r, 0, 0, 5, 2, -1);






    if ((errstatus = ap_discard_request_body(r)) != 0) {
        return errstatus;
    }

    if (r->method_number == 0 || r->method_number == 2) {
        if (r->finfo.filetype == 0) {
            ap_log_rerror("core.c",3631, 3, 0, r,
                          "File does not exist: %s", r->filename);
            return 404;
        }




        if (r->finfo.filetype == APR_DIR) {
            ap_log_rerror("core.c",3640, 3, 0, r,
                          "Attempt to serve directory: %s", r->filename);
            return 404;
        }

        if ((r->used_path_info != 0) &&
            r->path_info && *r->path_info)
        {

            ap_log_rerror("core.c",3649, 3, 0, r,
                          "File does not exist: %s",
                          apr_pstrcat(r->pool, r->filename, r->path_info, ((void *)0)));
            return 404;
        }
# 3663 "core.c"
        if (r->method_number != 0) {
            core_request_config *req_cfg;

            req_cfg = (((void **)(r->request_config))[(&core_module)->module_index]);
            if (!req_cfg->deliver_script) {

                ap_log_rerror("core.c",3669, 3, 0, r,
                              "This resource does not accept the %s method.",
                              r->method);
                return 405;
            }
        }


        if ((status = apr_file_open(&fd, r->filename, 0x00001 | 0x00020

                            | ((d->enable_sendfile == (0))
                                                ? 0 : 0x01000)

                                    , 0, r->pool)) != 0) {
            ap_log_rerror("core.c",3683, 3, status, r,
                          "file permissions deny server access: %s", r->filename);
            return 403;
        }

        ap_update_mtime(r, r->finfo.mtime);
        ap_set_last_modified(r);
        ap_set_etag(r);
        apr_table_setn(r->headers_out, "Accept-Ranges", "bytes");
        ap_set_content_length(r, r->finfo.size);

        bb = apr_brigade_create(r->pool, c->bucket_alloc);

        if ((errstatus = ap_meets_conditions(r)) != 0) {
            apr_file_close(fd);
            r->status = errstatus;
        }
        else {
            if (bld_content_md5) {
                apr_table_setn(r->headers_out, "Content-MD5",
                               ap_md5digest(r->pool, fd));
            }





            if (sizeof(apr_off_t) > sizeof(apr_size_t)
                && r->finfo.size > 16777216) {
                apr_off_t fsize = r->finfo.size;
                e = apr_bucket_file_create(fd, 0, 16777216, r->pool,
                                           c->bucket_alloc);
                while (fsize > 16777216) {
                    apr_bucket *ce;
                    (e)->type->copy(e, &ce);
                    do { apr_bucket *ap__b = (ce); do { ((((ap__b))))->link.next = ((struct apr_bucket *)((char *)(&(((&(bb)->list)))->next) - ((long) (((char *) (&(((struct apr_bucket*)((void *)0))->link))) - ((char *) ((void *)0)))))); ((((ap__b))))->link.prev = (((struct apr_bucket *)((char *)(&(((&(bb)->list)))->next) - ((long) (((char *) (&(((struct apr_bucket*)((void *)0))->link))) - ((char *) ((void *)0)))))))->link.prev; ((((struct apr_bucket *)((char *)(&(((&(bb)->list)))->next) - ((long) (((char *) (&(((struct apr_bucket*)((void *)0))->link))) - ((char *) ((void *)0)))))))->link.prev)->link.next = (((ap__b))); (((struct apr_bucket *)((char *)(&(((&(bb)->list)))->next) - ((long) (((char *) (&(((struct apr_bucket*)((void *)0))->link))) - ((char *) ((void *)0)))))))->link.prev = (((ap__b))); } while (0); ; } while (0);
                    e->start += 16777216;
                    fsize -= 16777216;
                }
                e->length = (apr_size_t)fsize;
            }
            else {
                e = apr_bucket_file_create(fd, 0, (apr_size_t)r->finfo.size,
                                           r->pool, c->bucket_alloc);
            }


            if (d->enable_mmap == (0)) {
                (void)apr_bucket_file_enable_mmap(e, 0);
            }

            do { apr_bucket *ap__b = (e); do { ((((ap__b))))->link.next = ((struct apr_bucket *)((char *)(&(((&(bb)->list)))->next) - ((long) (((char *) (&(((struct apr_bucket*)((void *)0))->link))) - ((char *) ((void *)0)))))); ((((ap__b))))->link.prev = (((struct apr_bucket *)((char *)(&(((&(bb)->list)))->next) - ((long) (((char *) (&(((struct apr_bucket*)((void *)0))->link))) - ((char *) ((void *)0)))))))->link.prev; ((((struct apr_bucket *)((char *)(&(((&(bb)->list)))->next) - ((long) (((char *) (&(((struct apr_bucket*)((void *)0))->link))) - ((char *) ((void *)0)))))))->link.prev)->link.next = (((ap__b))); (((struct apr_bucket *)((char *)(&(((&(bb)->list)))->next) - ((long) (((char *) (&(((struct apr_bucket*)((void *)0))->link))) - ((char *) ((void *)0)))))))->link.prev = (((ap__b))); } while (0); ; } while (0);
        }

        e = apr_bucket_eos_create(c->bucket_alloc);
        do { apr_bucket *ap__b = (e); do { ((((ap__b))))->link.next = ((struct apr_bucket *)((char *)(&(((&(bb)->list)))->next) - ((long) (((char *) (&(((struct apr_bucket*)((void *)0))->link))) - ((char *) ((void *)0)))))); ((((ap__b))))->link.prev = (((struct apr_bucket *)((char *)(&(((&(bb)->list)))->next) - ((long) (((char *) (&(((struct apr_bucket*)((void *)0))->link))) - ((char *) ((void *)0)))))))->link.prev; ((((struct apr_bucket *)((char *)(&(((&(bb)->list)))->next) - ((long) (((char *) (&(((struct apr_bucket*)((void *)0))->link))) - ((char *) ((void *)0)))))))->link.prev)->link.next = (((ap__b))); (((struct apr_bucket *)((char *)(&(((&(bb)->list)))->next) - ((long) (((char *) (&(((struct apr_bucket*)((void *)0))->link))) - ((char *) ((void *)0)))))))->link.prev = (((ap__b))); } while (0); ; } while (0);

        status = ap_pass_brigade(r->output_filters, bb);
        if (status == 0
            || r->status != 200
            || c->aborted) {
            return 0;
        }
        else {

            ap_log_rerror("core.c",3748, 7, status, r,
                          "default_handler: ap_pass_brigade returned %i",
                          status);
            return 500;
        }
    }
    else {
        if (r->method_number == 26) {
            ap_log_rerror("core.c",3756, 3, 0, r,
                          "Invalid method in request %s", r->the_request);
            return 501;
        }

        if (r->method_number == 5) {
            return ap_send_http_options(r);
        }
        return 405;
    }
}




apr_OFN_ap_logio_add_bytes_out_t *logio_add_bytes_out;

static int core_post_config(apr_pool_t *pconf, apr_pool_t *plog, apr_pool_t *ptemp, server_rec *s)
{
    logio_add_bytes_out = (apr_OFN_ap_logio_add_bytes_out_t *)apr_dynamic_fn_retrieve("ap_logio_add_bytes_out");
    ident_lookup = (apr_OFN_ap_ident_lookup_t *)apr_dynamic_fn_retrieve("ap_ident_lookup");

    set_banner(pconf);
    ap_setup_make_content_type(pconf);
    return 0;
}

static void core_insert_filter(request_rec *r)
{
    core_dir_config *conf = (core_dir_config *)
                            (((void **)(r->per_dir_config))[(&core_module)->module_index])
                                                              ;
    const char *filter, *filters = conf->output_filters;

    if (filters) {
        while (*filters && (filter = ap_getword(r->pool, &filters, ';'))) {
            ap_add_output_filter(filter, ((void *)0), r, r->connection);
        }
    }

    filters = conf->input_filters;
    if (filters) {
        while (*filters && (filter = ap_getword(r->pool, &filters, ';'))) {
            ap_add_input_filter(filter, ((void *)0), r, r->connection);
        }
    }
}

static apr_size_t num_request_notes = 3;

static apr_status_t reset_request_notes(void *dummy)
{
    num_request_notes = 3;
    return 0;
}

apr_size_t ap_register_request_note(void)
{
    apr_pool_cleanup_register(apr_hook_global_pool, ((void *)0), reset_request_notes,
                              apr_pool_cleanup_null);
    return num_request_notes++;
}

void ** ap_get_request_note(request_rec *r, apr_size_t note_num)
{
    core_request_config *req_cfg;

    if (note_num >= num_request_notes) {
        return ((void *)0);
    }

    req_cfg = (core_request_config *)
        (((void **)(r->request_config))[(&core_module)->module_index]);

    if (!req_cfg) {
        return ((void *)0);
    }

    return &(req_cfg->notes[note_num]);
}

static int core_create_req(request_rec *r)
{



    core_request_config *req_cfg;

    req_cfg = memset(apr_palloc(r->pool, sizeof(core_request_config) + sizeof(void *) * num_request_notes), 0, sizeof(core_request_config) + sizeof(void *) * num_request_notes)
                                                             ;
    req_cfg->notes = (void **)((char *)req_cfg + sizeof(core_request_config));


    req_cfg->deliver_script = 1;

    if (r->main) {
        core_request_config *main_req_cfg = (core_request_config *)
            (((void **)(r->main->request_config))[(&core_module)->module_index]);
        req_cfg->bb = main_req_cfg->bb;
    }
    else {
        req_cfg->bb = apr_brigade_create(r->pool, r->connection->bucket_alloc);
    }

    ((((void **)(r->request_config))[(&core_module)->module_index]) = (req_cfg));

    return 0;
}

static int core_create_proxy_req(request_rec *r, request_rec *pr)
{
    return core_create_req(pr);
}

static conn_rec *core_create_conn(apr_pool_t *ptrans, server_rec *server,
                                  apr_socket_t *csd, long id, void *sbh,
                                  apr_bucket_alloc_t *alloc)
{
    apr_status_t rv;
    conn_rec *c = (conn_rec *) memset(apr_palloc(ptrans, sizeof(conn_rec)), 0, sizeof(conn_rec));

    c->sbh = sbh;
    (void)ap_update_child_status(c->sbh, 3, (request_rec *)((void *)0));




    c->conn_config = ap_create_conn_config(ptrans);
    c->notes = apr_table_make(ptrans, 5);

    c->pool = ptrans;
    if ((rv = apr_socket_addr_get(&c->local_addr, APR_LOCAL, csd))
        != 0) {
        ap_log_error("core.c",3889, 6, rv, server,
                     "apr_socket_addr_get(APR_LOCAL)");
        apr_socket_close(csd);
        return ((void *)0);
    }

    apr_sockaddr_ip_get(&c->local_ip, c->local_addr);
    if ((rv = apr_socket_addr_get(&c->remote_addr, APR_REMOTE, csd))
        != 0) {
        ap_log_error("core.c",3898, 6, rv, server,
                     "apr_socket_addr_get(APR_REMOTE)");
        apr_socket_close(csd);
        return ((void *)0);
    }

    apr_sockaddr_ip_get(&c->remote_ip, c->remote_addr);
    c->base_server = server;

    c->id = id;
    c->bucket_alloc = alloc;
    c->clogging_input_filters = 0;

    return c;
}

static int core_pre_connection(conn_rec *c, void *csd)
{
    core_net_rec *net = apr_palloc(c->pool, sizeof(*net));
    apr_status_t rv;
# 3927 "core.c"
    rv = apr_socket_opt_set(csd, 512, 1);
    if (rv != 0 && rv != ((20000 + 50000) + 23)) {



        ap_log_cerror("core.c",3932, 7, rv, c,
                      "apr_socket_opt_set(APR_TCP_NODELAY)");
    }
# 3943 "core.c"
    rv = apr_socket_timeout_set(csd, c->base_server->timeout);
    if (rv != 0) {

        ap_log_cerror("core.c",3946, 7, rv, c,
                      "apr_socket_timeout_set");
    }

    net->c = c;
    net->in_ctx = ((void *)0);
    net->out_ctx = ((void *)0);
    net->client_socket = csd;

    ((((void **)(net->c->conn_config))[(&core_module)->module_index]) = (csd));
    ap_add_input_filter_handle(ap_core_input_filter_handle, net, ((void *)0), net->c);
    ap_add_output_filter_handle(ap_core_output_filter_handle, net, ((void *)0), net->c);
    return -2;
}

static void register_hooks(apr_pool_t *p)
{





    ap_hook_create_connection(core_create_conn, ((void *)0), ((void *)0),
                              30);
    ap_hook_pre_connection(core_pre_connection, ((void *)0), ((void *)0),
                           30);

    ap_hook_post_config(core_post_config,((void *)0),((void *)0),(-10));
    ap_hook_translate_name(ap_core_translate,((void *)0),((void *)0),30);
    ap_hook_map_to_storage(core_map_to_storage,((void *)0),((void *)0),30);
    ap_hook_open_logs(ap_open_logs,((void *)0),((void *)0),(-10));
    ap_hook_child_init(ap_logs_child_init,((void *)0),((void *)0),10);
    ap_hook_handler(default_handler,((void *)0),((void *)0),30);

    ap_hook_type_checker(do_nothing,((void *)0),((void *)0),30);
    ap_hook_fixups(core_override_type,((void *)0),((void *)0),(-10));
    ap_hook_access_checker(do_nothing,((void *)0),((void *)0),30);
    ap_hook_create_request(core_create_req, ((void *)0), ((void *)0), 10);
    do { proxy_HOOK_create_req_t *apu__hook = core_create_proxy_req; apr_optional_hook_add("create_req",(void (*)(void))apu__hook,((void *)0), ((void *)0), 10); } while (0)
                                      ;
    ap_hook_pre_mpm(ap_create_scoreboard, ((void *)0), ((void *)0), 10);




    ap_hook_insert_filter(core_insert_filter, ((void *)0), ((void *)0), 10);

    ap_core_input_filter_handle =
        ap_register_input_filter("CORE_IN", ap_core_input_filter,
                                 ((void *)0), AP_FTYPE_NETWORK);
    ap_content_length_filter_handle =
        ap_register_output_filter("CONTENT_LENGTH", ap_content_length_filter,
                                  ((void *)0), AP_FTYPE_PROTOCOL);
    ap_core_output_filter_handle =
        ap_register_output_filter("CORE", ap_core_output_filter,
                                  ((void *)0), AP_FTYPE_NETWORK);
    ap_subreq_core_filter_handle =
        ap_register_output_filter("SUBREQ_CORE", ap_sub_req_output_filter,
                                  ((void *)0), AP_FTYPE_CONTENT_SET);
    ap_old_write_func =
        ap_register_output_filter("OLD_WRITE", ap_old_write_filter,
                                  ((void *)0), AP_FTYPE_RESOURCE - 10);
}

 module core_module = {
    20051115, 21, -1, "core.c", ((void *)0), ((void *)0), 0x41503232UL, ((void *)0),
    create_core_dir_config,
    merge_core_dir_configs,
    create_core_server_config,
    merge_core_server_configs,
    core_cmds,
    register_hooks
};
