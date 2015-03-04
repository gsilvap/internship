	.file	"modules.c"
	.globl	ap_prelinked_modules
	.data
	.align 64
	.type	ap_prelinked_modules, @object
	.size	ap_prelinked_modules, 216
ap_prelinked_modules:
	.quad	core_module
	.quad	authn_file_module
	.quad	authn_default_module
	.quad	authz_host_module
	.quad	authz_groupfile_module
	.quad	authz_user_module
	.quad	authz_default_module
	.quad	auth_basic_module
	.quad	include_module
	.quad	filter_module
	.quad	log_config_module
	.quad	env_module
	.quad	setenvif_module
	.quad	mpm_prefork_module
	.quad	http_module
	.quad	mime_module
	.quad	status_module
	.quad	autoindex_module
	.quad	asis_module
	.quad	cgi_module
	.quad	negotiation_module
	.quad	dir_module
	.quad	actions_module
	.quad	userdir_module
	.quad	alias_module
	.quad	so_module
	.quad	0
	.globl	ap_prelinked_module_symbols
	.section	.rodata
.LC0:
	.string	"core_module"
.LC1:
	.string	"authn_file_module"
.LC2:
	.string	"authn_default_module"
.LC3:
	.string	"authz_host_module"
.LC4:
	.string	"authz_groupfile_module"
.LC5:
	.string	"authz_user_module"
.LC6:
	.string	"authz_default_module"
.LC7:
	.string	"auth_basic_module"
.LC8:
	.string	"include_module"
.LC9:
	.string	"filter_module"
.LC10:
	.string	"log_config_module"
.LC11:
	.string	"env_module"
.LC12:
	.string	"setenvif_module"
.LC13:
	.string	"mpm_prefork_module"
.LC14:
	.string	"http_module"
.LC15:
	.string	"mime_module"
.LC16:
	.string	"status_module"
.LC17:
	.string	"autoindex_module"
.LC18:
	.string	"asis_module"
.LC19:
	.string	"cgi_module"
.LC20:
	.string	"negotiation_module"
.LC21:
	.string	"dir_module"
.LC22:
	.string	"actions_module"
.LC23:
	.string	"userdir_module"
.LC24:
	.string	"alias_module"
.LC25:
	.string	"so_module"
	.data
	.align 64
	.type	ap_prelinked_module_symbols, @object
	.size	ap_prelinked_module_symbols, 432
ap_prelinked_module_symbols:
	.quad	.LC0
	.quad	core_module
	.quad	.LC1
	.quad	authn_file_module
	.quad	.LC2
	.quad	authn_default_module
	.quad	.LC3
	.quad	authz_host_module
	.quad	.LC4
	.quad	authz_groupfile_module
	.quad	.LC5
	.quad	authz_user_module
	.quad	.LC6
	.quad	authz_default_module
	.quad	.LC7
	.quad	auth_basic_module
	.quad	.LC8
	.quad	include_module
	.quad	.LC9
	.quad	filter_module
	.quad	.LC10
	.quad	log_config_module
	.quad	.LC11
	.quad	env_module
	.quad	.LC12
	.quad	setenvif_module
	.quad	.LC13
	.quad	mpm_prefork_module
	.quad	.LC14
	.quad	http_module
	.quad	.LC15
	.quad	mime_module
	.quad	.LC16
	.quad	status_module
	.quad	.LC17
	.quad	autoindex_module
	.quad	.LC18
	.quad	asis_module
	.quad	.LC19
	.quad	cgi_module
	.quad	.LC20
	.quad	negotiation_module
	.quad	.LC21
	.quad	dir_module
	.quad	.LC22
	.quad	actions_module
	.quad	.LC23
	.quad	userdir_module
	.quad	.LC24
	.quad	alias_module
	.quad	.LC25
	.quad	so_module
	.quad	0
	.quad	0
	.globl	ap_preloaded_modules
	.align 64
	.type	ap_preloaded_modules, @object
	.size	ap_preloaded_modules, 216
ap_preloaded_modules:
	.quad	core_module
	.quad	authn_file_module
	.quad	authn_default_module
	.quad	authz_host_module
	.quad	authz_groupfile_module
	.quad	authz_user_module
	.quad	authz_default_module
	.quad	auth_basic_module
	.quad	include_module
	.quad	filter_module
	.quad	log_config_module
	.quad	env_module
	.quad	setenvif_module
	.quad	mpm_prefork_module
	.quad	http_module
	.quad	mime_module
	.quad	status_module
	.quad	autoindex_module
	.quad	asis_module
	.quad	cgi_module
	.quad	negotiation_module
	.quad	dir_module
	.quad	actions_module
	.quad	userdir_module
	.quad	alias_module
	.quad	so_module
	.quad	0
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits
