exp_exec_prefix = /home/user/Desktop/demo/installdir/
rel_exec_prefix =
exp_bindir = /home/user/Desktop/demo/installdir//bin
rel_bindir = bin
exp_sbindir = /home/user/Desktop/demo/installdir//bin
rel_sbindir = bin
exp_libdir = /home/user/Desktop/demo/installdir//lib
rel_libdir = lib
exp_libexecdir = /home/user/Desktop/demo/installdir//modules
rel_libexecdir = modules
exp_mandir = /home/user/Desktop/demo/installdir//man
rel_mandir = man
exp_sysconfdir = /home/user/Desktop/demo/installdir//conf
rel_sysconfdir = conf
exp_datadir = /home/user/Desktop/demo/installdir/
rel_datadir =
exp_installbuilddir = /home/user/Desktop/demo/installdir//build
rel_installbuilddir = build
exp_errordir = /home/user/Desktop/demo/installdir//error
rel_errordir = error
exp_iconsdir = /home/user/Desktop/demo/installdir//icons
rel_iconsdir = icons
exp_htdocsdir = /home/user/Desktop/demo/installdir//htdocs
rel_htdocsdir = htdocs
exp_manualdir = /home/user/Desktop/demo/installdir//manual
rel_manualdir = manual
exp_cgidir = /home/user/Desktop/demo/installdir//cgi-bin
rel_cgidir = cgi-bin
exp_includedir = /home/user/Desktop/demo/installdir//include
rel_includedir = include
exp_localstatedir = /home/user/Desktop/demo/installdir/
rel_localstatedir =
exp_runtimedir = /home/user/Desktop/demo/installdir//logs
rel_runtimedir = logs
exp_logfiledir = /home/user/Desktop/demo/installdir//logs
rel_logfiledir = logs
exp_proxycachedir = /home/user/Desktop/demo/installdir//proxy
rel_proxycachedir = proxy
SHLTCFLAGS = -prefer-pic
LTCFLAGS = -prefer-non-pic -static
MKINSTALLDIRS = $(abs_srcdir)/build/mkdir.sh
INSTALL = $(LIBTOOL) --mode=install $(abs_srcdir)/build/install.sh -c
MOD_AUTHN_FILE_LDADD =
MOD_AUTHN_DEFAULT_LDADD =
MOD_AUTHZ_HOST_LDADD =
MOD_AUTHZ_GROUPFILE_LDADD =
MOD_AUTHZ_USER_LDADD =
MOD_AUTHZ_DEFAULT_LDADD =
MOD_AUTH_BASIC_LDADD =
MOD_INCLUDE_LDADD =
MOD_FILTER_LDADD =
MOD_LOG_CONFIG_LDADD =
MOD_ENV_LDADD =
MOD_SETENVIF_LDADD =
MPM_NAME = prefork
MPM_SUBDIR_NAME = prefork
htpasswd_LTFLAGS =
htdigest_LTFLAGS =
rotatelogs_LTFLAGS =
logresolve_LTFLAGS =
htdbm_LTFLAGS =
ab_LTFLAGS =
checkgid_LTFLAGS =
htcacheclean_LTFLAGS =
httxt2dbm_LTFLAGS =
APACHECTL_ULIMIT = ulimit -S -n `ulimit -H -n`
MOD_HTTP_LDADD =
MOD_MIME_LDADD =
MOD_STATUS_LDADD =
MOD_AUTOINDEX_LDADD =
MOD_ASIS_LDADD =
MOD_CGI_LDADD =
MOD_NEGOTIATION_LDADD =
MOD_DIR_LDADD =
MOD_ACTIONS_LDADD =
MOD_USERDIR_LDADD =
MOD_ALIAS_LDADD =
INSTALL_DSO = yes
MOD_SO_LDADD =
progname = httpd
MPM_LIB = server/mpm/prefork/libprefork.la
OS = unix
OS_DIR = unix
BUILTIN_LIBS = modules/aaa/libmod_authn_file.la modules/aaa/libmod_authn_default.la modules/aaa/libmod_authz_host.la modules/aaa/libmod_authz_groupfile.la modules/aaa/libmod_authz_user.la modules/aaa/libmod_authz_default.la modules/aaa/libmod_auth_basic.la modules/filters/libmod_include.la modules/filters/libmod_filter.la modules/loggers/libmod_log_config.la modules/metadata/libmod_env.la modules/metadata/libmod_setenvif.la modules/http/libmod_http.la modules/http/libmod_mime.la modules/generators/libmod_status.la modules/generators/libmod_autoindex.la modules/generators/libmod_asis.la modules/generators/libmod_cgi.la modules/mappers/libmod_negotiation.la modules/mappers/libmod_dir.la modules/mappers/libmod_actions.la modules/mappers/libmod_userdir.la modules/mappers/libmod_alias.la modules/mappers/libmod_so.la
SHLIBPATH_VAR = LD_LIBRARY_PATH
OS_SPECIFIC_VARS =
PRE_SHARED_CMDS = echo ""
POST_SHARED_CMDS = echo ""
shared_build =
AP_LIBS = /run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11/srclib/pcre/libpcre.la -L/usr/lib -R/usr/lib -laprutil-1 -ldb-5.3 -lgdbm -lexpat -L/usr/lib -R/usr/lib -lapr-1 -luuid -lrt -lcrypt -lpthread -ldl
AP_BUILD_SRCLIB_DIRS = pcre
AP_CLEAN_SRCLIB_DIRS = pcre
abs_srcdir = /run/media/master/data/OneDrive/mei/internship/tools/httpd-2.2.11
bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/bin
cgidir = ${datadir}/cgi-bin
logfiledir = ${localstatedir}/logs
exec_prefix = ${prefix}
datadir = ${prefix}
localstatedir = ${prefix}
mandir = ${prefix}/man
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/modules
htdocsdir = ${datadir}/htdocs
manualdir = ${datadir}/manual
includedir = ${prefix}/include
errordir = ${datadir}/error
iconsdir = ${datadir}/icons
sysconfdir = ${prefix}/conf
installbuilddir = ${datadir}/build
runtimedir = ${localstatedir}/logs
proxycachedir = ${localstatedir}/proxy
other_targets =
progname = httpd
prefix = /home/user/Desktop/demo/installdir/
AWK = gawk
CC = gcc
CPP = gcc -E
CXX =
CPPFLAGS =
CFLAGS =
CXXFLAGS =
LTFLAGS = --silent
LDFLAGS =
LT_LDFLAGS =
SH_LDFLAGS =
HTTPD_LDFLAGS = -export-dynamic
UTIL_LDFLAGS =
LIBS =
DEFS =
INCLUDES =
NOTEST_CPPFLAGS =
NOTEST_CFLAGS =
NOTEST_CXXFLAGS =
NOTEST_LDFLAGS =
NOTEST_LIBS =
EXTRA_CPPFLAGS = -DLINUX -D_REENTRANT -D_GNU_SOURCE
EXTRA_CFLAGS = -pthread
EXTRA_CXXFLAGS =
EXTRA_LDFLAGS = -L/usr/lib
EXTRA_LIBS = -lm
EXTRA_INCLUDES = -I$(top_builddir)/srclib/pcre -I. -I$(top_srcdir)/os/$(OS_DIR) -I$(top_srcdir)/server/mpm/$(MPM_SUBDIR_NAME) -I$(top_srcdir)/modules/http -I$(top_srcdir)/modules/filters -I$(top_srcdir)/modules/proxy -I$(top_srcdir)/include -I$(top_srcdir)/modules/generators -I$(top_srcdir)/modules/mappers -I$(top_srcdir)/modules/database -I/usr/include/apr-1 -I/usr/include -I$(top_srcdir)/modules/proxy/../generators -I$(top_srcdir)/modules/ssl -I$(top_srcdir)/modules/dav/main
LIBTOOL = /usr/share/apr-1/build/libtool $(LTFLAGS)
SHELL = /bin/sh
RSYNC =
MODULE_DIRS = aaa filters loggers metadata http generators mappers
MODULE_CLEANDIRS = arch/win32 cache database debug echo experimental ldap proxy ssl test dav/main dav/fs dav/lock
PORT = 80
SSLPORT = 443
nonssl_listen_stmt_1 =
nonssl_listen_stmt_2 =
CORE_IMPLIB_FILE =
CORE_IMPLIB =
SH_LIBS =
SH_LIBTOOL = $(LIBTOOL)
MK_IMPLIB =
MKDEP = $(CC) -MM
INSTALL_PROG_FLAGS =
DSO_MODULES =
APR_BINDIR = /usr/bin
APR_INCLUDEDIR = /usr/include/apr-1
APR_VERSION = 1.5.1
APR_CONFIG = /usr/bin/apr-1-config
APU_BINDIR = /usr/bin
APU_INCLUDEDIR = /usr/include/apr-1
APU_VERSION = 1.5.4
APU_CONFIG = /usr/bin/apu-1-config
