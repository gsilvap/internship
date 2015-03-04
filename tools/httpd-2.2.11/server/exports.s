	.file	"exports.c"
	.globl	ap_ugly_hack
	.bss
	.align 8
	.type	ap_ugly_hack, @object
	.size	ap_ugly_hack, 8
ap_ugly_hack:
	.zero	8
	.globl	ap_hack_ap_listen_pre_config
	.data
	.align 8
	.type	ap_hack_ap_listen_pre_config, @object
	.size	ap_hack_ap_listen_pre_config, 8
ap_hack_ap_listen_pre_config:
	.quad	ap_listen_pre_config
	.globl	ap_hack_ap_setup_listeners
	.align 8
	.type	ap_hack_ap_setup_listeners, @object
	.size	ap_hack_ap_setup_listeners, 8
ap_hack_ap_setup_listeners:
	.quad	ap_setup_listeners
	.globl	ap_hack_ap_close_listeners
	.align 8
	.type	ap_hack_ap_close_listeners, @object
	.size	ap_hack_ap_close_listeners, 8
ap_hack_ap_close_listeners:
	.quad	ap_close_listeners
	.globl	ap_hack_ap_set_listenbacklog
	.align 8
	.type	ap_hack_ap_set_listenbacklog, @object
	.size	ap_hack_ap_set_listenbacklog, 8
ap_hack_ap_set_listenbacklog:
	.quad	ap_set_listenbacklog
	.globl	ap_hack_ap_set_listener
	.align 8
	.type	ap_hack_ap_set_listener, @object
	.size	ap_hack_ap_set_listener, 8
ap_hack_ap_set_listener:
	.quad	ap_set_listener
	.globl	ap_hack_ap_set_send_buffer_size
	.align 8
	.type	ap_hack_ap_set_send_buffer_size, @object
	.size	ap_hack_ap_set_send_buffer_size, 8
ap_hack_ap_set_send_buffer_size:
	.quad	ap_set_send_buffer_size
	.globl	ap_hack_ap_set_receive_buffer_size
	.align 8
	.type	ap_hack_ap_set_receive_buffer_size, @object
	.size	ap_hack_ap_set_receive_buffer_size, 8
ap_hack_ap_set_receive_buffer_size:
	.quad	ap_set_receive_buffer_size
	.globl	ap_hack_ap_mpm_run
	.align 8
	.type	ap_hack_ap_mpm_run, @object
	.size	ap_hack_ap_mpm_run, 8
ap_hack_ap_mpm_run:
	.quad	ap_mpm_run
	.globl	ap_hack_ap_graceful_stop_signalled
	.align 8
	.type	ap_hack_ap_graceful_stop_signalled, @object
	.size	ap_hack_ap_graceful_stop_signalled, 8
ap_hack_ap_graceful_stop_signalled:
	.quad	ap_graceful_stop_signalled
	.globl	ap_hack_ap_os_create_privileged_process
	.align 8
	.type	ap_hack_ap_os_create_privileged_process, @object
	.size	ap_hack_ap_os_create_privileged_process, 8
ap_hack_ap_os_create_privileged_process:
	.quad	ap_os_create_privileged_process
	.globl	ap_hack_ap_mpm_query
	.align 8
	.type	ap_hack_ap_mpm_query, @object
	.size	ap_hack_ap_mpm_query, 8
ap_hack_ap_mpm_query:
	.quad	ap_mpm_query
	.globl	ap_hack_ap_register_provider
	.align 8
	.type	ap_hack_ap_register_provider, @object
	.size	ap_hack_ap_register_provider, 8
ap_hack_ap_register_provider:
	.quad	ap_register_provider
	.globl	ap_hack_ap_lookup_provider
	.align 8
	.type	ap_hack_ap_lookup_provider, @object
	.size	ap_hack_ap_lookup_provider, 8
ap_hack_ap_lookup_provider:
	.quad	ap_lookup_provider
	.globl	ap_hack_ap_list_provider_names
	.align 8
	.type	ap_hack_ap_list_provider_names, @object
	.size	ap_hack_ap_list_provider_names, 8
ap_hack_ap_list_provider_names:
	.quad	ap_list_provider_names
	.globl	ap_hack_ap_regcomp
	.align 8
	.type	ap_hack_ap_regcomp, @object
	.size	ap_hack_ap_regcomp, 8
ap_hack_ap_regcomp:
	.quad	ap_regcomp
	.globl	ap_hack_ap_regexec
	.align 8
	.type	ap_hack_ap_regexec, @object
	.size	ap_hack_ap_regexec, 8
ap_hack_ap_regexec:
	.quad	ap_regexec
	.globl	ap_hack_ap_regerror
	.align 8
	.type	ap_hack_ap_regerror, @object
	.size	ap_hack_ap_regerror, 8
ap_hack_ap_regerror:
	.quad	ap_regerror
	.globl	ap_hack_ap_regfree
	.align 8
	.type	ap_hack_ap_regfree, @object
	.size	ap_hack_ap_regfree, 8
ap_hack_ap_regfree:
	.quad	ap_regfree
	.globl	ap_hack_ap_get_module_config
	.align 8
	.type	ap_hack_ap_get_module_config, @object
	.size	ap_hack_ap_get_module_config, 8
ap_hack_ap_get_module_config:
	.quad	ap_get_module_config
	.globl	ap_hack_ap_set_module_config
	.align 8
	.type	ap_hack_ap_set_module_config, @object
	.size	ap_hack_ap_set_module_config, 8
ap_hack_ap_set_module_config:
	.quad	ap_set_module_config
	.globl	ap_hack_ap_set_string_slot
	.align 8
	.type	ap_hack_ap_set_string_slot, @object
	.size	ap_hack_ap_set_string_slot, 8
ap_hack_ap_set_string_slot:
	.quad	ap_set_string_slot
	.globl	ap_hack_ap_set_int_slot
	.align 8
	.type	ap_hack_ap_set_int_slot, @object
	.size	ap_hack_ap_set_int_slot, 8
ap_hack_ap_set_int_slot:
	.quad	ap_set_int_slot
	.globl	ap_hack_ap_method_is_limited
	.align 8
	.type	ap_hack_ap_method_is_limited, @object
	.size	ap_hack_ap_method_is_limited, 8
ap_hack_ap_method_is_limited:
	.quad	ap_method_is_limited
	.globl	ap_hack_ap_set_string_slot_lower
	.align 8
	.type	ap_hack_ap_set_string_slot_lower, @object
	.size	ap_hack_ap_set_string_slot_lower, 8
ap_hack_ap_set_string_slot_lower:
	.quad	ap_set_string_slot_lower
	.globl	ap_hack_ap_set_flag_slot
	.align 8
	.type	ap_hack_ap_set_flag_slot, @object
	.size	ap_hack_ap_set_flag_slot, 8
ap_hack_ap_set_flag_slot:
	.quad	ap_set_flag_slot
	.globl	ap_hack_ap_set_file_slot
	.align 8
	.type	ap_hack_ap_set_file_slot, @object
	.size	ap_hack_ap_set_file_slot, 8
ap_hack_ap_set_file_slot:
	.quad	ap_set_file_slot
	.globl	ap_hack_ap_set_deprecated
	.align 8
	.type	ap_hack_ap_set_deprecated, @object
	.size	ap_hack_ap_set_deprecated, 8
ap_hack_ap_set_deprecated:
	.quad	ap_set_deprecated
	.globl	ap_hack_ap_server_root_relative
	.align 8
	.type	ap_hack_ap_server_root_relative, @object
	.size	ap_hack_ap_server_root_relative, 8
ap_hack_ap_server_root_relative:
	.quad	ap_server_root_relative
	.globl	ap_hack_ap_add_module
	.align 8
	.type	ap_hack_ap_add_module, @object
	.size	ap_hack_ap_add_module, 8
ap_hack_ap_add_module:
	.quad	ap_add_module
	.globl	ap_hack_ap_remove_module
	.align 8
	.type	ap_hack_ap_remove_module, @object
	.size	ap_hack_ap_remove_module, 8
ap_hack_ap_remove_module:
	.quad	ap_remove_module
	.globl	ap_hack_ap_add_loaded_module
	.align 8
	.type	ap_hack_ap_add_loaded_module, @object
	.size	ap_hack_ap_add_loaded_module, 8
ap_hack_ap_add_loaded_module:
	.quad	ap_add_loaded_module
	.globl	ap_hack_ap_remove_loaded_module
	.align 8
	.type	ap_hack_ap_remove_loaded_module, @object
	.size	ap_hack_ap_remove_loaded_module, 8
ap_hack_ap_remove_loaded_module:
	.quad	ap_remove_loaded_module
	.globl	ap_hack_ap_find_module_name
	.align 8
	.type	ap_hack_ap_find_module_name, @object
	.size	ap_hack_ap_find_module_name, 8
ap_hack_ap_find_module_name:
	.quad	ap_find_module_name
	.globl	ap_hack_ap_find_linked_module
	.align 8
	.type	ap_hack_ap_find_linked_module, @object
	.size	ap_hack_ap_find_linked_module, 8
ap_hack_ap_find_linked_module:
	.quad	ap_find_linked_module
	.globl	ap_hack_ap_pcfg_openfile
	.align 8
	.type	ap_hack_ap_pcfg_openfile, @object
	.size	ap_hack_ap_pcfg_openfile, 8
ap_hack_ap_pcfg_openfile:
	.quad	ap_pcfg_openfile
	.globl	ap_hack_ap_pcfg_open_custom
	.align 8
	.type	ap_hack_ap_pcfg_open_custom, @object
	.size	ap_hack_ap_pcfg_open_custom, 8
ap_hack_ap_pcfg_open_custom:
	.quad	ap_pcfg_open_custom
	.globl	ap_hack_ap_cfg_getline
	.align 8
	.type	ap_hack_ap_cfg_getline, @object
	.size	ap_hack_ap_cfg_getline, 8
ap_hack_ap_cfg_getline:
	.quad	ap_cfg_getline
	.globl	ap_hack_ap_cfg_getc
	.align 8
	.type	ap_hack_ap_cfg_getc, @object
	.size	ap_hack_ap_cfg_getc, 8
ap_hack_ap_cfg_getc:
	.quad	ap_cfg_getc
	.globl	ap_hack_ap_cfg_closefile
	.align 8
	.type	ap_hack_ap_cfg_closefile, @object
	.size	ap_hack_ap_cfg_closefile, 8
ap_hack_ap_cfg_closefile:
	.quad	ap_cfg_closefile
	.globl	ap_hack_ap_soak_end_container
	.align 8
	.type	ap_hack_ap_soak_end_container, @object
	.size	ap_hack_ap_soak_end_container, 8
ap_hack_ap_soak_end_container:
	.quad	ap_soak_end_container
	.globl	ap_hack_ap_build_cont_config
	.align 8
	.type	ap_hack_ap_build_cont_config, @object
	.size	ap_hack_ap_build_cont_config, 8
ap_hack_ap_build_cont_config:
	.quad	ap_build_cont_config
	.globl	ap_hack_ap_build_config
	.align 8
	.type	ap_hack_ap_build_config, @object
	.size	ap_hack_ap_build_config, 8
ap_hack_ap_build_config:
	.quad	ap_build_config
	.globl	ap_hack_ap_walk_config
	.align 8
	.type	ap_hack_ap_walk_config, @object
	.size	ap_hack_ap_walk_config, 8
ap_hack_ap_walk_config:
	.quad	ap_walk_config
	.globl	ap_hack_ap_check_cmd_context
	.align 8
	.type	ap_hack_ap_check_cmd_context, @object
	.size	ap_hack_ap_check_cmd_context, 8
ap_hack_ap_check_cmd_context:
	.quad	ap_check_cmd_context
	.globl	ap_hack_ap_single_module_configure
	.align 8
	.type	ap_hack_ap_single_module_configure, @object
	.size	ap_hack_ap_single_module_configure, 8
ap_hack_ap_single_module_configure:
	.quad	ap_single_module_configure
	.globl	ap_hack_ap_setup_prelinked_modules
	.align 8
	.type	ap_hack_ap_setup_prelinked_modules, @object
	.size	ap_hack_ap_setup_prelinked_modules, 8
ap_hack_ap_setup_prelinked_modules:
	.quad	ap_setup_prelinked_modules
	.globl	ap_hack_ap_show_directives
	.align 8
	.type	ap_hack_ap_show_directives, @object
	.size	ap_hack_ap_show_directives, 8
ap_hack_ap_show_directives:
	.quad	ap_show_directives
	.globl	ap_hack_ap_show_modules
	.align 8
	.type	ap_hack_ap_show_modules, @object
	.size	ap_hack_ap_show_modules, 8
ap_hack_ap_show_modules:
	.quad	ap_show_modules
	.globl	ap_hack_ap_show_mpm
	.align 8
	.type	ap_hack_ap_show_mpm, @object
	.size	ap_hack_ap_show_mpm, 8
ap_hack_ap_show_mpm:
	.quad	ap_show_mpm
	.globl	ap_hack_ap_read_config
	.align 8
	.type	ap_hack_ap_read_config, @object
	.size	ap_hack_ap_read_config, 8
ap_hack_ap_read_config:
	.quad	ap_read_config
	.globl	ap_hack_ap_run_rewrite_args
	.align 8
	.type	ap_hack_ap_run_rewrite_args, @object
	.size	ap_hack_ap_run_rewrite_args, 8
ap_hack_ap_run_rewrite_args:
	.quad	ap_run_rewrite_args
	.globl	ap_hack_ap_register_hooks
	.align 8
	.type	ap_hack_ap_register_hooks, @object
	.size	ap_hack_ap_register_hooks, 8
ap_hack_ap_register_hooks:
	.quad	ap_register_hooks
	.globl	ap_hack_ap_fixup_virtual_hosts
	.align 8
	.type	ap_hack_ap_fixup_virtual_hosts, @object
	.size	ap_hack_ap_fixup_virtual_hosts, 8
ap_hack_ap_fixup_virtual_hosts:
	.quad	ap_fixup_virtual_hosts
	.globl	ap_hack_ap_create_request_config
	.align 8
	.type	ap_hack_ap_create_request_config, @object
	.size	ap_hack_ap_create_request_config, 8
ap_hack_ap_create_request_config:
	.quad	ap_create_request_config
	.globl	ap_hack_ap_create_per_dir_config
	.align 8
	.type	ap_hack_ap_create_per_dir_config, @object
	.size	ap_hack_ap_create_per_dir_config, 8
ap_hack_ap_create_per_dir_config:
	.quad	ap_create_per_dir_config
	.globl	ap_hack_ap_merge_per_dir_configs
	.align 8
	.type	ap_hack_ap_merge_per_dir_configs, @object
	.size	ap_hack_ap_merge_per_dir_configs, 8
ap_hack_ap_merge_per_dir_configs:
	.quad	ap_merge_per_dir_configs
	.globl	ap_hack_ap_create_conn_config
	.align 8
	.type	ap_hack_ap_create_conn_config, @object
	.size	ap_hack_ap_create_conn_config, 8
ap_hack_ap_create_conn_config:
	.quad	ap_create_conn_config
	.globl	ap_hack_ap_parse_htaccess
	.align 8
	.type	ap_hack_ap_parse_htaccess, @object
	.size	ap_hack_ap_parse_htaccess, 8
ap_hack_ap_parse_htaccess:
	.quad	ap_parse_htaccess
	.globl	ap_hack_ap_init_virtual_host
	.align 8
	.type	ap_hack_ap_init_virtual_host, @object
	.size	ap_hack_ap_init_virtual_host, 8
ap_hack_ap_init_virtual_host:
	.quad	ap_init_virtual_host
	.globl	ap_hack_ap_process_resource_config
	.align 8
	.type	ap_hack_ap_process_resource_config, @object
	.size	ap_hack_ap_process_resource_config, 8
ap_hack_ap_process_resource_config:
	.quad	ap_process_resource_config
	.globl	ap_hack_ap_process_config_tree
	.align 8
	.type	ap_hack_ap_process_config_tree, @object
	.size	ap_hack_ap_process_config_tree, 8
ap_hack_ap_process_config_tree:
	.quad	ap_process_config_tree
	.globl	ap_hack_ap_invoke_handler
	.align 8
	.type	ap_hack_ap_invoke_handler, @object
	.size	ap_hack_ap_invoke_handler, 8
ap_hack_ap_invoke_handler:
	.quad	ap_invoke_handler
	.globl	ap_hack_ap_find_command
	.align 8
	.type	ap_hack_ap_find_command, @object
	.size	ap_hack_ap_find_command, 8
ap_hack_ap_find_command:
	.quad	ap_find_command
	.globl	ap_hack_ap_find_command_in_modules
	.align 8
	.type	ap_hack_ap_find_command_in_modules, @object
	.size	ap_hack_ap_find_command_in_modules, 8
ap_hack_ap_find_command_in_modules:
	.quad	ap_find_command_in_modules
	.globl	ap_hack_ap_set_config_vectors
	.align 8
	.type	ap_hack_ap_set_config_vectors, @object
	.size	ap_hack_ap_set_config_vectors, 8
ap_hack_ap_set_config_vectors:
	.quad	ap_set_config_vectors
	.globl	ap_hack_ap_hook_header_parser
	.align 8
	.type	ap_hack_ap_hook_header_parser, @object
	.size	ap_hack_ap_hook_header_parser, 8
ap_hack_ap_hook_header_parser:
	.quad	ap_hook_header_parser
	.globl	ap_hack_ap_hook_get_header_parser
	.align 8
	.type	ap_hack_ap_hook_get_header_parser, @object
	.size	ap_hack_ap_hook_get_header_parser, 8
ap_hack_ap_hook_get_header_parser:
	.quad	ap_hook_get_header_parser
	.globl	ap_hack_ap_run_header_parser
	.align 8
	.type	ap_hack_ap_run_header_parser, @object
	.size	ap_hack_ap_run_header_parser, 8
ap_hack_ap_run_header_parser:
	.quad	ap_run_header_parser
	.globl	ap_hack_ap_hook_pre_config
	.align 8
	.type	ap_hack_ap_hook_pre_config, @object
	.size	ap_hack_ap_hook_pre_config, 8
ap_hack_ap_hook_pre_config:
	.quad	ap_hook_pre_config
	.globl	ap_hack_ap_hook_get_pre_config
	.align 8
	.type	ap_hack_ap_hook_get_pre_config, @object
	.size	ap_hack_ap_hook_get_pre_config, 8
ap_hack_ap_hook_get_pre_config:
	.quad	ap_hook_get_pre_config
	.globl	ap_hack_ap_run_pre_config
	.align 8
	.type	ap_hack_ap_run_pre_config, @object
	.size	ap_hack_ap_run_pre_config, 8
ap_hack_ap_run_pre_config:
	.quad	ap_run_pre_config
	.globl	ap_hack_ap_hook_test_config
	.align 8
	.type	ap_hack_ap_hook_test_config, @object
	.size	ap_hack_ap_hook_test_config, 8
ap_hack_ap_hook_test_config:
	.quad	ap_hook_test_config
	.globl	ap_hack_ap_hook_get_test_config
	.align 8
	.type	ap_hack_ap_hook_get_test_config, @object
	.size	ap_hack_ap_hook_get_test_config, 8
ap_hack_ap_hook_get_test_config:
	.quad	ap_hook_get_test_config
	.globl	ap_hack_ap_run_test_config
	.align 8
	.type	ap_hack_ap_run_test_config, @object
	.size	ap_hack_ap_run_test_config, 8
ap_hack_ap_run_test_config:
	.quad	ap_run_test_config
	.globl	ap_hack_ap_hook_post_config
	.align 8
	.type	ap_hack_ap_hook_post_config, @object
	.size	ap_hack_ap_hook_post_config, 8
ap_hack_ap_hook_post_config:
	.quad	ap_hook_post_config
	.globl	ap_hack_ap_hook_get_post_config
	.align 8
	.type	ap_hack_ap_hook_get_post_config, @object
	.size	ap_hack_ap_hook_get_post_config, 8
ap_hack_ap_hook_get_post_config:
	.quad	ap_hook_get_post_config
	.globl	ap_hack_ap_run_post_config
	.align 8
	.type	ap_hack_ap_run_post_config, @object
	.size	ap_hack_ap_run_post_config, 8
ap_hack_ap_run_post_config:
	.quad	ap_run_post_config
	.globl	ap_hack_ap_hook_open_logs
	.align 8
	.type	ap_hack_ap_hook_open_logs, @object
	.size	ap_hack_ap_hook_open_logs, 8
ap_hack_ap_hook_open_logs:
	.quad	ap_hook_open_logs
	.globl	ap_hack_ap_hook_get_open_logs
	.align 8
	.type	ap_hack_ap_hook_get_open_logs, @object
	.size	ap_hack_ap_hook_get_open_logs, 8
ap_hack_ap_hook_get_open_logs:
	.quad	ap_hook_get_open_logs
	.globl	ap_hack_ap_run_open_logs
	.align 8
	.type	ap_hack_ap_run_open_logs, @object
	.size	ap_hack_ap_run_open_logs, 8
ap_hack_ap_run_open_logs:
	.quad	ap_run_open_logs
	.globl	ap_hack_ap_hook_child_init
	.align 8
	.type	ap_hack_ap_hook_child_init, @object
	.size	ap_hack_ap_hook_child_init, 8
ap_hack_ap_hook_child_init:
	.quad	ap_hook_child_init
	.globl	ap_hack_ap_hook_get_child_init
	.align 8
	.type	ap_hack_ap_hook_get_child_init, @object
	.size	ap_hack_ap_hook_get_child_init, 8
ap_hack_ap_hook_get_child_init:
	.quad	ap_hook_get_child_init
	.globl	ap_hack_ap_run_child_init
	.align 8
	.type	ap_hack_ap_run_child_init, @object
	.size	ap_hack_ap_run_child_init, 8
ap_hack_ap_run_child_init:
	.quad	ap_run_child_init
	.globl	ap_hack_ap_hook_handler
	.align 8
	.type	ap_hack_ap_hook_handler, @object
	.size	ap_hack_ap_hook_handler, 8
ap_hack_ap_hook_handler:
	.quad	ap_hook_handler
	.globl	ap_hack_ap_hook_get_handler
	.align 8
	.type	ap_hack_ap_hook_get_handler, @object
	.size	ap_hack_ap_hook_get_handler, 8
ap_hack_ap_hook_get_handler:
	.quad	ap_hook_get_handler
	.globl	ap_hack_ap_run_handler
	.align 8
	.type	ap_hack_ap_run_handler, @object
	.size	ap_hack_ap_run_handler, 8
ap_hack_ap_run_handler:
	.quad	ap_run_handler
	.globl	ap_hack_ap_hook_quick_handler
	.align 8
	.type	ap_hack_ap_hook_quick_handler, @object
	.size	ap_hack_ap_hook_quick_handler, 8
ap_hack_ap_hook_quick_handler:
	.quad	ap_hook_quick_handler
	.globl	ap_hack_ap_hook_get_quick_handler
	.align 8
	.type	ap_hack_ap_hook_get_quick_handler, @object
	.size	ap_hack_ap_hook_get_quick_handler, 8
ap_hack_ap_hook_get_quick_handler:
	.quad	ap_hook_get_quick_handler
	.globl	ap_hack_ap_run_quick_handler
	.align 8
	.type	ap_hack_ap_run_quick_handler, @object
	.size	ap_hack_ap_run_quick_handler, 8
ap_hack_ap_run_quick_handler:
	.quad	ap_run_quick_handler
	.globl	ap_hack_ap_hook_optional_fn_retrieve
	.align 8
	.type	ap_hack_ap_hook_optional_fn_retrieve, @object
	.size	ap_hack_ap_hook_optional_fn_retrieve, 8
ap_hack_ap_hook_optional_fn_retrieve:
	.quad	ap_hook_optional_fn_retrieve
	.globl	ap_hack_ap_hook_get_optional_fn_retrieve
	.align 8
	.type	ap_hack_ap_hook_get_optional_fn_retrieve, @object
	.size	ap_hack_ap_hook_get_optional_fn_retrieve, 8
ap_hack_ap_hook_get_optional_fn_retrieve:
	.quad	ap_hook_get_optional_fn_retrieve
	.globl	ap_hack_ap_run_optional_fn_retrieve
	.align 8
	.type	ap_hack_ap_run_optional_fn_retrieve, @object
	.size	ap_hack_ap_run_optional_fn_retrieve, 8
ap_hack_ap_run_optional_fn_retrieve:
	.quad	ap_run_optional_fn_retrieve
	.globl	ap_hack_ap_process_connection
	.align 8
	.type	ap_hack_ap_process_connection, @object
	.size	ap_hack_ap_process_connection, 8
ap_hack_ap_process_connection:
	.quad	ap_process_connection
	.globl	ap_hack_ap_flush_conn
	.align 8
	.type	ap_hack_ap_flush_conn, @object
	.size	ap_hack_ap_flush_conn, 8
ap_hack_ap_flush_conn:
	.quad	ap_flush_conn
	.globl	ap_hack_ap_lingering_close
	.align 8
	.type	ap_hack_ap_lingering_close, @object
	.size	ap_hack_ap_lingering_close, 8
ap_hack_ap_lingering_close:
	.quad	ap_lingering_close
	.globl	ap_hack_ap_hook_create_connection
	.align 8
	.type	ap_hack_ap_hook_create_connection, @object
	.size	ap_hack_ap_hook_create_connection, 8
ap_hack_ap_hook_create_connection:
	.quad	ap_hook_create_connection
	.globl	ap_hack_ap_hook_get_create_connection
	.align 8
	.type	ap_hack_ap_hook_get_create_connection, @object
	.size	ap_hack_ap_hook_get_create_connection, 8
ap_hack_ap_hook_get_create_connection:
	.quad	ap_hook_get_create_connection
	.globl	ap_hack_ap_run_create_connection
	.align 8
	.type	ap_hack_ap_run_create_connection, @object
	.size	ap_hack_ap_run_create_connection, 8
ap_hack_ap_run_create_connection:
	.quad	ap_run_create_connection
	.globl	ap_hack_ap_hook_pre_connection
	.align 8
	.type	ap_hack_ap_hook_pre_connection, @object
	.size	ap_hack_ap_hook_pre_connection, 8
ap_hack_ap_hook_pre_connection:
	.quad	ap_hook_pre_connection
	.globl	ap_hack_ap_hook_get_pre_connection
	.align 8
	.type	ap_hack_ap_hook_get_pre_connection, @object
	.size	ap_hack_ap_hook_get_pre_connection, 8
ap_hack_ap_hook_get_pre_connection:
	.quad	ap_hook_get_pre_connection
	.globl	ap_hack_ap_run_pre_connection
	.align 8
	.type	ap_hack_ap_run_pre_connection, @object
	.size	ap_hack_ap_run_pre_connection, 8
ap_hack_ap_run_pre_connection:
	.quad	ap_run_pre_connection
	.globl	ap_hack_ap_hook_process_connection
	.align 8
	.type	ap_hack_ap_hook_process_connection, @object
	.size	ap_hack_ap_hook_process_connection, 8
ap_hack_ap_hook_process_connection:
	.quad	ap_hook_process_connection
	.globl	ap_hack_ap_hook_get_process_connection
	.align 8
	.type	ap_hack_ap_hook_get_process_connection, @object
	.size	ap_hack_ap_hook_get_process_connection, 8
ap_hack_ap_hook_get_process_connection:
	.quad	ap_hook_get_process_connection
	.globl	ap_hack_ap_run_process_connection
	.align 8
	.type	ap_hack_ap_run_process_connection, @object
	.size	ap_hack_ap_run_process_connection, 8
ap_hack_ap_run_process_connection:
	.quad	ap_run_process_connection
	.globl	ap_hack_ap_bucket_eoc_make
	.align 8
	.type	ap_hack_ap_bucket_eoc_make, @object
	.size	ap_hack_ap_bucket_eoc_make, 8
ap_hack_ap_bucket_eoc_make:
	.quad	ap_bucket_eoc_make
	.globl	ap_hack_ap_bucket_eoc_create
	.align 8
	.type	ap_hack_ap_bucket_eoc_create, @object
	.size	ap_hack_ap_bucket_eoc_create, 8
ap_hack_ap_bucket_eoc_create:
	.quad	ap_bucket_eoc_create
	.globl	ap_hack_ap_allow_options
	.align 8
	.type	ap_hack_ap_allow_options, @object
	.size	ap_hack_ap_allow_options, 8
ap_hack_ap_allow_options:
	.quad	ap_allow_options
	.globl	ap_hack_ap_allow_overrides
	.align 8
	.type	ap_hack_ap_allow_overrides, @object
	.size	ap_hack_ap_allow_overrides, 8
ap_hack_ap_allow_overrides:
	.quad	ap_allow_overrides
	.globl	ap_hack_ap_default_type
	.align 8
	.type	ap_hack_ap_default_type, @object
	.size	ap_hack_ap_default_type, 8
ap_hack_ap_default_type:
	.quad	ap_default_type
	.globl	ap_hack_ap_document_root
	.align 8
	.type	ap_hack_ap_document_root, @object
	.size	ap_hack_ap_document_root, 8
ap_hack_ap_document_root:
	.quad	ap_document_root
	.globl	ap_hack_ap_get_remote_host
	.align 8
	.type	ap_hack_ap_get_remote_host, @object
	.size	ap_hack_ap_get_remote_host, 8
ap_hack_ap_get_remote_host:
	.quad	ap_get_remote_host
	.globl	ap_hack_ap_get_remote_logname
	.align 8
	.type	ap_hack_ap_get_remote_logname, @object
	.size	ap_hack_ap_get_remote_logname, 8
ap_hack_ap_get_remote_logname:
	.quad	ap_get_remote_logname
	.globl	ap_hack_ap_construct_url
	.align 8
	.type	ap_hack_ap_construct_url, @object
	.size	ap_hack_ap_construct_url, 8
ap_hack_ap_construct_url:
	.quad	ap_construct_url
	.globl	ap_hack_ap_get_server_name
	.align 8
	.type	ap_hack_ap_get_server_name, @object
	.size	ap_hack_ap_get_server_name, 8
ap_hack_ap_get_server_name:
	.quad	ap_get_server_name
	.globl	ap_hack_ap_get_server_port
	.align 8
	.type	ap_hack_ap_get_server_port, @object
	.size	ap_hack_ap_get_server_port, 8
ap_hack_ap_get_server_port:
	.quad	ap_get_server_port
	.globl	ap_hack_ap_get_limit_req_body
	.align 8
	.type	ap_hack_ap_get_limit_req_body, @object
	.size	ap_hack_ap_get_limit_req_body, 8
ap_hack_ap_get_limit_req_body:
	.quad	ap_get_limit_req_body
	.globl	ap_hack_ap_get_limit_xml_body
	.align 8
	.type	ap_hack_ap_get_limit_xml_body, @object
	.size	ap_hack_ap_get_limit_xml_body, 8
ap_hack_ap_get_limit_xml_body:
	.quad	ap_get_limit_xml_body
	.globl	ap_hack_ap_custom_response
	.align 8
	.type	ap_hack_ap_custom_response, @object
	.size	ap_hack_ap_custom_response, 8
ap_hack_ap_custom_response:
	.quad	ap_custom_response
	.globl	ap_hack_ap_is_recursion_limit_exceeded
	.align 8
	.type	ap_hack_ap_is_recursion_limit_exceeded, @object
	.size	ap_hack_ap_is_recursion_limit_exceeded, 8
ap_hack_ap_is_recursion_limit_exceeded:
	.quad	ap_is_recursion_limit_exceeded
	.globl	ap_hack_ap_exists_config_define
	.align 8
	.type	ap_hack_ap_exists_config_define, @object
	.size	ap_hack_ap_exists_config_define, 8
ap_hack_ap_exists_config_define:
	.quad	ap_exists_config_define
	.globl	ap_hack_ap_core_translate
	.align 8
	.type	ap_hack_ap_core_translate, @object
	.size	ap_hack_ap_core_translate, 8
ap_hack_ap_core_translate:
	.quad	ap_core_translate
	.globl	ap_hack_ap_auth_type
	.align 8
	.type	ap_hack_ap_auth_type, @object
	.size	ap_hack_ap_auth_type, 8
ap_hack_ap_auth_type:
	.quad	ap_auth_type
	.globl	ap_hack_ap_auth_name
	.align 8
	.type	ap_hack_ap_auth_name, @object
	.size	ap_hack_ap_auth_name, 8
ap_hack_ap_auth_name:
	.quad	ap_auth_name
	.globl	ap_hack_ap_satisfies
	.align 8
	.type	ap_hack_ap_satisfies, @object
	.size	ap_hack_ap_satisfies, 8
ap_hack_ap_satisfies:
	.quad	ap_satisfies
	.globl	ap_hack_ap_requires
	.align 8
	.type	ap_hack_ap_requires, @object
	.size	ap_hack_ap_requires, 8
ap_hack_ap_requires:
	.quad	ap_requires
	.globl	ap_hack_ap_register_request_note
	.align 8
	.type	ap_hack_ap_register_request_note, @object
	.size	ap_hack_ap_register_request_note, 8
ap_hack_ap_register_request_note:
	.quad	ap_register_request_note
	.globl	ap_hack_ap_get_request_note
	.align 8
	.type	ap_hack_ap_get_request_note, @object
	.size	ap_hack_ap_get_request_note, 8
ap_hack_ap_get_request_note:
	.quad	ap_get_request_note
	.globl	ap_hack_ap_add_per_dir_conf
	.align 8
	.type	ap_hack_ap_add_per_dir_conf, @object
	.size	ap_hack_ap_add_per_dir_conf, 8
ap_hack_ap_add_per_dir_conf:
	.quad	ap_add_per_dir_conf
	.globl	ap_hack_ap_add_per_url_conf
	.align 8
	.type	ap_hack_ap_add_per_url_conf, @object
	.size	ap_hack_ap_add_per_url_conf, 8
ap_hack_ap_add_per_url_conf:
	.quad	ap_add_per_url_conf
	.globl	ap_hack_ap_add_file_conf
	.align 8
	.type	ap_hack_ap_add_file_conf, @object
	.size	ap_hack_ap_add_file_conf, 8
ap_hack_ap_add_file_conf:
	.quad	ap_add_file_conf
	.globl	ap_hack_ap_limit_section
	.align 8
	.type	ap_hack_ap_limit_section, @object
	.size	ap_hack_ap_limit_section, 8
ap_hack_ap_limit_section:
	.quad	ap_limit_section
	.globl	ap_hack_ap_get_server_protocol
	.align 8
	.type	ap_hack_ap_get_server_protocol, @object
	.size	ap_hack_ap_get_server_protocol, 8
ap_hack_ap_get_server_protocol:
	.quad	ap_get_server_protocol
	.globl	ap_hack_ap_set_server_protocol
	.align 8
	.type	ap_hack_ap_set_server_protocol, @object
	.size	ap_hack_ap_set_server_protocol, 8
ap_hack_ap_set_server_protocol:
	.quad	ap_set_server_protocol
	.globl	ap_hack_ap_hook_get_mgmt_items
	.align 8
	.type	ap_hack_ap_hook_get_mgmt_items, @object
	.size	ap_hack_ap_hook_get_mgmt_items, 8
ap_hack_ap_hook_get_mgmt_items:
	.quad	ap_hook_get_mgmt_items
	.globl	ap_hack_ap_hook_get_get_mgmt_items
	.align 8
	.type	ap_hack_ap_hook_get_get_mgmt_items, @object
	.size	ap_hack_ap_hook_get_get_mgmt_items, 8
ap_hack_ap_hook_get_get_mgmt_items:
	.quad	ap_hook_get_get_mgmt_items
	.globl	ap_hack_ap_run_get_mgmt_items
	.align 8
	.type	ap_hack_ap_run_get_mgmt_items, @object
	.size	ap_hack_ap_run_get_mgmt_items, 8
ap_hack_ap_run_get_mgmt_items:
	.quad	ap_run_get_mgmt_items
	.globl	ap_hack_ap_get_server_revision
	.align 8
	.type	ap_hack_ap_get_server_revision, @object
	.size	ap_hack_ap_get_server_revision, 8
ap_hack_ap_get_server_revision:
	.quad	ap_get_server_revision
	.globl	ap_hack_ap_get_server_version
	.align 8
	.type	ap_hack_ap_get_server_version, @object
	.size	ap_hack_ap_get_server_version, 8
ap_hack_ap_get_server_version:
	.quad	ap_get_server_version
	.globl	ap_hack_ap_get_server_banner
	.align 8
	.type	ap_hack_ap_get_server_banner, @object
	.size	ap_hack_ap_get_server_banner, 8
ap_hack_ap_get_server_banner:
	.quad	ap_get_server_banner
	.globl	ap_hack_ap_get_server_description
	.align 8
	.type	ap_hack_ap_get_server_description, @object
	.size	ap_hack_ap_get_server_description, 8
ap_hack_ap_get_server_description:
	.quad	ap_get_server_description
	.globl	ap_hack_ap_add_version_component
	.align 8
	.type	ap_hack_ap_add_version_component, @object
	.size	ap_hack_ap_add_version_component, 8
ap_hack_ap_add_version_component:
	.quad	ap_add_version_component
	.globl	ap_hack_ap_get_server_built
	.align 8
	.type	ap_hack_ap_get_server_built, @object
	.size	ap_hack_ap_get_server_built, 8
ap_hack_ap_get_server_built:
	.quad	ap_get_server_built
	.globl	ap_hack_ap_field_noparam
	.align 8
	.type	ap_hack_ap_field_noparam, @object
	.size	ap_hack_ap_field_noparam, 8
ap_hack_ap_field_noparam:
	.quad	ap_field_noparam
	.globl	ap_hack_ap_ht_time
	.align 8
	.type	ap_hack_ap_ht_time, @object
	.size	ap_hack_ap_ht_time, 8
ap_hack_ap_ht_time:
	.quad	ap_ht_time
	.globl	ap_hack_ap_getword
	.align 8
	.type	ap_hack_ap_getword, @object
	.size	ap_hack_ap_getword, 8
ap_hack_ap_getword:
	.quad	ap_getword
	.globl	ap_hack_ap_getword_nc
	.align 8
	.type	ap_hack_ap_getword_nc, @object
	.size	ap_hack_ap_getword_nc, 8
ap_hack_ap_getword_nc:
	.quad	ap_getword_nc
	.globl	ap_hack_ap_getword_white
	.align 8
	.type	ap_hack_ap_getword_white, @object
	.size	ap_hack_ap_getword_white, 8
ap_hack_ap_getword_white:
	.quad	ap_getword_white
	.globl	ap_hack_ap_getword_white_nc
	.align 8
	.type	ap_hack_ap_getword_white_nc, @object
	.size	ap_hack_ap_getword_white_nc, 8
ap_hack_ap_getword_white_nc:
	.quad	ap_getword_white_nc
	.globl	ap_hack_ap_getword_nulls
	.align 8
	.type	ap_hack_ap_getword_nulls, @object
	.size	ap_hack_ap_getword_nulls, 8
ap_hack_ap_getword_nulls:
	.quad	ap_getword_nulls
	.globl	ap_hack_ap_getword_nulls_nc
	.align 8
	.type	ap_hack_ap_getword_nulls_nc, @object
	.size	ap_hack_ap_getword_nulls_nc, 8
ap_hack_ap_getword_nulls_nc:
	.quad	ap_getword_nulls_nc
	.globl	ap_hack_ap_getword_conf
	.align 8
	.type	ap_hack_ap_getword_conf, @object
	.size	ap_hack_ap_getword_conf, 8
ap_hack_ap_getword_conf:
	.quad	ap_getword_conf
	.globl	ap_hack_ap_getword_conf_nc
	.align 8
	.type	ap_hack_ap_getword_conf_nc, @object
	.size	ap_hack_ap_getword_conf_nc, 8
ap_hack_ap_getword_conf_nc:
	.quad	ap_getword_conf_nc
	.globl	ap_hack_ap_resolve_env
	.align 8
	.type	ap_hack_ap_resolve_env, @object
	.size	ap_hack_ap_resolve_env, 8
ap_hack_ap_resolve_env:
	.quad	ap_resolve_env
	.globl	ap_hack_ap_size_list_item
	.align 8
	.type	ap_hack_ap_size_list_item, @object
	.size	ap_hack_ap_size_list_item, 8
ap_hack_ap_size_list_item:
	.quad	ap_size_list_item
	.globl	ap_hack_ap_get_list_item
	.align 8
	.type	ap_hack_ap_get_list_item, @object
	.size	ap_hack_ap_get_list_item, 8
ap_hack_ap_get_list_item:
	.quad	ap_get_list_item
	.globl	ap_hack_ap_find_list_item
	.align 8
	.type	ap_hack_ap_find_list_item, @object
	.size	ap_hack_ap_find_list_item, 8
ap_hack_ap_find_list_item:
	.quad	ap_find_list_item
	.globl	ap_hack_ap_get_token
	.align 8
	.type	ap_hack_ap_get_token, @object
	.size	ap_hack_ap_get_token, 8
ap_hack_ap_get_token:
	.quad	ap_get_token
	.globl	ap_hack_ap_find_token
	.align 8
	.type	ap_hack_ap_find_token, @object
	.size	ap_hack_ap_find_token, 8
ap_hack_ap_find_token:
	.quad	ap_find_token
	.globl	ap_hack_ap_find_last_token
	.align 8
	.type	ap_hack_ap_find_last_token, @object
	.size	ap_hack_ap_find_last_token, 8
ap_hack_ap_find_last_token:
	.quad	ap_find_last_token
	.globl	ap_hack_ap_is_url
	.align 8
	.type	ap_hack_ap_is_url, @object
	.size	ap_hack_ap_is_url, 8
ap_hack_ap_is_url:
	.quad	ap_is_url
	.globl	ap_hack_ap_unescape_url
	.align 8
	.type	ap_hack_ap_unescape_url, @object
	.size	ap_hack_ap_unescape_url, 8
ap_hack_ap_unescape_url:
	.quad	ap_unescape_url
	.globl	ap_hack_ap_unescape_url_keep2f
	.align 8
	.type	ap_hack_ap_unescape_url_keep2f, @object
	.size	ap_hack_ap_unescape_url_keep2f, 8
ap_hack_ap_unescape_url_keep2f:
	.quad	ap_unescape_url_keep2f
	.globl	ap_hack_ap_no2slash
	.align 8
	.type	ap_hack_ap_no2slash, @object
	.size	ap_hack_ap_no2slash, 8
ap_hack_ap_no2slash:
	.quad	ap_no2slash
	.globl	ap_hack_ap_getparents
	.align 8
	.type	ap_hack_ap_getparents, @object
	.size	ap_hack_ap_getparents, 8
ap_hack_ap_getparents:
	.quad	ap_getparents
	.globl	ap_hack_ap_escape_path_segment
	.align 8
	.type	ap_hack_ap_escape_path_segment, @object
	.size	ap_hack_ap_escape_path_segment, 8
ap_hack_ap_escape_path_segment:
	.quad	ap_escape_path_segment
	.globl	ap_hack_ap_os_escape_path
	.align 8
	.type	ap_hack_ap_os_escape_path, @object
	.size	ap_hack_ap_os_escape_path, 8
ap_hack_ap_os_escape_path:
	.quad	ap_os_escape_path
	.globl	ap_hack_ap_escape_html
	.align 8
	.type	ap_hack_ap_escape_html, @object
	.size	ap_hack_ap_escape_html, 8
ap_hack_ap_escape_html:
	.quad	ap_escape_html
	.globl	ap_hack_ap_escape_logitem
	.align 8
	.type	ap_hack_ap_escape_logitem, @object
	.size	ap_hack_ap_escape_logitem, 8
ap_hack_ap_escape_logitem:
	.quad	ap_escape_logitem
	.globl	ap_hack_ap_escape_errorlog_item
	.align 8
	.type	ap_hack_ap_escape_errorlog_item, @object
	.size	ap_hack_ap_escape_errorlog_item, 8
ap_hack_ap_escape_errorlog_item:
	.quad	ap_escape_errorlog_item
	.globl	ap_hack_ap_construct_server
	.align 8
	.type	ap_hack_ap_construct_server, @object
	.size	ap_hack_ap_construct_server, 8
ap_hack_ap_construct_server:
	.quad	ap_construct_server
	.globl	ap_hack_ap_escape_shell_cmd
	.align 8
	.type	ap_hack_ap_escape_shell_cmd, @object
	.size	ap_hack_ap_escape_shell_cmd, 8
ap_hack_ap_escape_shell_cmd:
	.quad	ap_escape_shell_cmd
	.globl	ap_hack_ap_count_dirs
	.align 8
	.type	ap_hack_ap_count_dirs, @object
	.size	ap_hack_ap_count_dirs, 8
ap_hack_ap_count_dirs:
	.quad	ap_count_dirs
	.globl	ap_hack_ap_make_dirstr_prefix
	.align 8
	.type	ap_hack_ap_make_dirstr_prefix, @object
	.size	ap_hack_ap_make_dirstr_prefix, 8
ap_hack_ap_make_dirstr_prefix:
	.quad	ap_make_dirstr_prefix
	.globl	ap_hack_ap_make_dirstr_parent
	.align 8
	.type	ap_hack_ap_make_dirstr_parent, @object
	.size	ap_hack_ap_make_dirstr_parent, 8
ap_hack_ap_make_dirstr_parent:
	.quad	ap_make_dirstr_parent
	.globl	ap_hack_ap_make_full_path
	.align 8
	.type	ap_hack_ap_make_full_path, @object
	.size	ap_hack_ap_make_full_path, 8
ap_hack_ap_make_full_path:
	.quad	ap_make_full_path
	.globl	ap_hack_ap_os_is_path_absolute
	.align 8
	.type	ap_hack_ap_os_is_path_absolute, @object
	.size	ap_hack_ap_os_is_path_absolute, 8
ap_hack_ap_os_is_path_absolute:
	.quad	ap_os_is_path_absolute
	.globl	ap_hack_ap_is_matchexp
	.align 8
	.type	ap_hack_ap_is_matchexp, @object
	.size	ap_hack_ap_is_matchexp, 8
ap_hack_ap_is_matchexp:
	.quad	ap_is_matchexp
	.globl	ap_hack_ap_strcmp_match
	.align 8
	.type	ap_hack_ap_strcmp_match, @object
	.size	ap_hack_ap_strcmp_match, 8
ap_hack_ap_strcmp_match:
	.quad	ap_strcmp_match
	.globl	ap_hack_ap_strcasecmp_match
	.align 8
	.type	ap_hack_ap_strcasecmp_match, @object
	.size	ap_hack_ap_strcasecmp_match, 8
ap_hack_ap_strcasecmp_match:
	.quad	ap_strcasecmp_match
	.globl	ap_hack_ap_strcasestr
	.align 8
	.type	ap_hack_ap_strcasestr, @object
	.size	ap_hack_ap_strcasestr, 8
ap_hack_ap_strcasestr:
	.quad	ap_strcasestr
	.globl	ap_hack_ap_stripprefix
	.align 8
	.type	ap_hack_ap_stripprefix, @object
	.size	ap_hack_ap_stripprefix, 8
ap_hack_ap_stripprefix:
	.quad	ap_stripprefix
	.globl	ap_hack_ap_pbase64decode
	.align 8
	.type	ap_hack_ap_pbase64decode, @object
	.size	ap_hack_ap_pbase64decode, 8
ap_hack_ap_pbase64decode:
	.quad	ap_pbase64decode
	.globl	ap_hack_ap_pbase64encode
	.align 8
	.type	ap_hack_ap_pbase64encode, @object
	.size	ap_hack_ap_pbase64encode, 8
ap_hack_ap_pbase64encode:
	.quad	ap_pbase64encode
	.globl	ap_hack_ap_pregcomp
	.align 8
	.type	ap_hack_ap_pregcomp, @object
	.size	ap_hack_ap_pregcomp, 8
ap_hack_ap_pregcomp:
	.quad	ap_pregcomp
	.globl	ap_hack_ap_pregfree
	.align 8
	.type	ap_hack_ap_pregfree, @object
	.size	ap_hack_ap_pregfree, 8
ap_hack_ap_pregfree:
	.quad	ap_pregfree
	.globl	ap_hack_ap_pregsub
	.align 8
	.type	ap_hack_ap_pregsub, @object
	.size	ap_hack_ap_pregsub, 8
ap_hack_ap_pregsub:
	.quad	ap_pregsub
	.globl	ap_hack_ap_content_type_tolower
	.align 8
	.type	ap_hack_ap_content_type_tolower, @object
	.size	ap_hack_ap_content_type_tolower, 8
ap_hack_ap_content_type_tolower:
	.quad	ap_content_type_tolower
	.globl	ap_hack_ap_str_tolower
	.align 8
	.type	ap_hack_ap_str_tolower, @object
	.size	ap_hack_ap_str_tolower, 8
ap_hack_ap_str_tolower:
	.quad	ap_str_tolower
	.globl	ap_hack_ap_ind
	.align 8
	.type	ap_hack_ap_ind, @object
	.size	ap_hack_ap_ind, 8
ap_hack_ap_ind:
	.quad	ap_ind
	.globl	ap_hack_ap_rind
	.align 8
	.type	ap_hack_ap_rind, @object
	.size	ap_hack_ap_rind, 8
ap_hack_ap_rind:
	.quad	ap_rind
	.globl	ap_hack_ap_escape_quotes
	.align 8
	.type	ap_hack_ap_escape_quotes, @object
	.size	ap_hack_ap_escape_quotes, 8
ap_hack_ap_escape_quotes:
	.quad	ap_escape_quotes
	.globl	ap_hack_ap_append_pid
	.align 8
	.type	ap_hack_ap_append_pid, @object
	.size	ap_hack_ap_append_pid, 8
ap_hack_ap_append_pid:
	.quad	ap_append_pid
	.globl	ap_hack_ap_timeout_parameter_parse
	.align 8
	.type	ap_hack_ap_timeout_parameter_parse, @object
	.size	ap_hack_ap_timeout_parameter_parse, 8
ap_hack_ap_timeout_parameter_parse:
	.quad	ap_timeout_parameter_parse
	.globl	ap_hack_ap_is_rdirectory
	.align 8
	.type	ap_hack_ap_is_rdirectory, @object
	.size	ap_hack_ap_is_rdirectory, 8
ap_hack_ap_is_rdirectory:
	.quad	ap_is_rdirectory
	.globl	ap_hack_ap_is_directory
	.align 8
	.type	ap_hack_ap_is_directory, @object
	.size	ap_hack_ap_is_directory, 8
ap_hack_ap_is_directory:
	.quad	ap_is_directory
	.globl	ap_hack_ap_log_assert
	.align 8
	.type	ap_hack_ap_log_assert, @object
	.size	ap_hack_ap_log_assert, 8
ap_hack_ap_log_assert:
	.quad	ap_log_assert
	.globl	ap_hack_ap_psignature
	.align 8
	.type	ap_hack_ap_psignature, @object
	.size	ap_hack_ap_psignature, 8
ap_hack_ap_psignature:
	.quad	ap_psignature
	.globl	ap_hack_ap_strchr
	.align 8
	.type	ap_hack_ap_strchr, @object
	.size	ap_hack_ap_strchr, 8
ap_hack_ap_strchr:
	.quad	ap_strchr
	.globl	ap_hack_ap_strchr_c
	.align 8
	.type	ap_hack_ap_strchr_c, @object
	.size	ap_hack_ap_strchr_c, 8
ap_hack_ap_strchr_c:
	.quad	ap_strchr_c
	.globl	ap_hack_ap_strrchr
	.align 8
	.type	ap_hack_ap_strrchr, @object
	.size	ap_hack_ap_strrchr, 8
ap_hack_ap_strrchr:
	.quad	ap_strrchr
	.globl	ap_hack_ap_strrchr_c
	.align 8
	.type	ap_hack_ap_strrchr_c, @object
	.size	ap_hack_ap_strrchr_c, 8
ap_hack_ap_strrchr_c:
	.quad	ap_strrchr_c
	.globl	ap_hack_ap_strstr
	.align 8
	.type	ap_hack_ap_strstr, @object
	.size	ap_hack_ap_strstr, 8
ap_hack_ap_strstr:
	.quad	ap_strstr
	.globl	ap_hack_ap_strstr_c
	.align 8
	.type	ap_hack_ap_strstr_c, @object
	.size	ap_hack_ap_strstr_c, 8
ap_hack_ap_strstr_c:
	.quad	ap_strstr_c
	.globl	ap_hack_ap_open_stderr_log
	.align 8
	.type	ap_hack_ap_open_stderr_log, @object
	.size	ap_hack_ap_open_stderr_log, 8
ap_hack_ap_open_stderr_log:
	.quad	ap_open_stderr_log
	.globl	ap_hack_ap_replace_stderr_log
	.align 8
	.type	ap_hack_ap_replace_stderr_log, @object
	.size	ap_hack_ap_replace_stderr_log, 8
ap_hack_ap_replace_stderr_log:
	.quad	ap_replace_stderr_log
	.globl	ap_hack_ap_log_error
	.align 8
	.type	ap_hack_ap_log_error, @object
	.size	ap_hack_ap_log_error, 8
ap_hack_ap_log_error:
	.quad	ap_log_error
	.globl	ap_hack_ap_log_perror
	.align 8
	.type	ap_hack_ap_log_perror, @object
	.size	ap_hack_ap_log_perror, 8
ap_hack_ap_log_perror:
	.quad	ap_log_perror
	.globl	ap_hack_ap_log_rerror
	.align 8
	.type	ap_hack_ap_log_rerror, @object
	.size	ap_hack_ap_log_rerror, 8
ap_hack_ap_log_rerror:
	.quad	ap_log_rerror
	.globl	ap_hack_ap_log_cerror
	.align 8
	.type	ap_hack_ap_log_cerror, @object
	.size	ap_hack_ap_log_cerror, 8
ap_hack_ap_log_cerror:
	.quad	ap_log_cerror
	.globl	ap_hack_ap_error_log2stderr
	.align 8
	.type	ap_hack_ap_error_log2stderr, @object
	.size	ap_hack_ap_error_log2stderr, 8
ap_hack_ap_error_log2stderr:
	.quad	ap_error_log2stderr
	.globl	ap_hack_ap_log_pid
	.align 8
	.type	ap_hack_ap_log_pid, @object
	.size	ap_hack_ap_log_pid, 8
ap_hack_ap_log_pid:
	.quad	ap_log_pid
	.globl	ap_hack_ap_read_pid
	.align 8
	.type	ap_hack_ap_read_pid, @object
	.size	ap_hack_ap_read_pid, 8
ap_hack_ap_read_pid:
	.quad	ap_read_pid
	.globl	ap_hack_ap_open_piped_log
	.align 8
	.type	ap_hack_ap_open_piped_log, @object
	.size	ap_hack_ap_open_piped_log, 8
ap_hack_ap_open_piped_log:
	.quad	ap_open_piped_log
	.globl	ap_hack_ap_close_piped_log
	.align 8
	.type	ap_hack_ap_close_piped_log, @object
	.size	ap_hack_ap_close_piped_log, 8
ap_hack_ap_close_piped_log:
	.quad	ap_close_piped_log
	.globl	ap_hack_ap_hook_error_log
	.align 8
	.type	ap_hack_ap_hook_error_log, @object
	.size	ap_hack_ap_hook_error_log, 8
ap_hack_ap_hook_error_log:
	.quad	ap_hook_error_log
	.globl	ap_hack_ap_hook_get_error_log
	.align 8
	.type	ap_hack_ap_hook_get_error_log, @object
	.size	ap_hack_ap_hook_get_error_log, 8
ap_hack_ap_hook_get_error_log:
	.quad	ap_hook_get_error_log
	.globl	ap_hack_ap_run_error_log
	.align 8
	.type	ap_hack_ap_run_error_log, @object
	.size	ap_hack_ap_run_error_log, 8
ap_hack_ap_run_error_log:
	.quad	ap_run_error_log
	.globl	ap_hack_ap_hook_insert_error_filter
	.align 8
	.type	ap_hack_ap_hook_insert_error_filter, @object
	.size	ap_hack_ap_hook_insert_error_filter, 8
ap_hack_ap_hook_insert_error_filter:
	.quad	ap_hook_insert_error_filter
	.globl	ap_hack_ap_hook_get_insert_error_filter
	.align 8
	.type	ap_hack_ap_hook_get_insert_error_filter, @object
	.size	ap_hack_ap_hook_get_insert_error_filter, 8
ap_hack_ap_hook_get_insert_error_filter:
	.quad	ap_hook_get_insert_error_filter
	.globl	ap_hack_ap_run_insert_error_filter
	.align 8
	.type	ap_hack_ap_run_insert_error_filter, @object
	.size	ap_hack_ap_run_insert_error_filter, 8
ap_hack_ap_run_insert_error_filter:
	.quad	ap_run_insert_error_filter
	.globl	ap_hack_ap_get_mime_headers
	.align 8
	.type	ap_hack_ap_get_mime_headers, @object
	.size	ap_hack_ap_get_mime_headers, 8
ap_hack_ap_get_mime_headers:
	.quad	ap_get_mime_headers
	.globl	ap_hack_ap_get_mime_headers_core
	.align 8
	.type	ap_hack_ap_get_mime_headers_core, @object
	.size	ap_hack_ap_get_mime_headers_core, 8
ap_hack_ap_get_mime_headers_core:
	.quad	ap_get_mime_headers_core
	.globl	ap_hack_ap_finalize_request_protocol
	.align 8
	.type	ap_hack_ap_finalize_request_protocol, @object
	.size	ap_hack_ap_finalize_request_protocol, 8
ap_hack_ap_finalize_request_protocol:
	.quad	ap_finalize_request_protocol
	.globl	ap_hack_ap_send_error_response
	.align 8
	.type	ap_hack_ap_send_error_response, @object
	.size	ap_hack_ap_send_error_response, 8
ap_hack_ap_send_error_response:
	.quad	ap_send_error_response
	.globl	ap_hack_ap_set_content_length
	.align 8
	.type	ap_hack_ap_set_content_length, @object
	.size	ap_hack_ap_set_content_length, 8
ap_hack_ap_set_content_length:
	.quad	ap_set_content_length
	.globl	ap_hack_ap_set_keepalive
	.align 8
	.type	ap_hack_ap_set_keepalive, @object
	.size	ap_hack_ap_set_keepalive, 8
ap_hack_ap_set_keepalive:
	.quad	ap_set_keepalive
	.globl	ap_hack_ap_rationalize_mtime
	.align 8
	.type	ap_hack_ap_rationalize_mtime, @object
	.size	ap_hack_ap_rationalize_mtime, 8
ap_hack_ap_rationalize_mtime:
	.quad	ap_rationalize_mtime
	.globl	ap_hack_ap_make_content_type
	.align 8
	.type	ap_hack_ap_make_content_type, @object
	.size	ap_hack_ap_make_content_type, 8
ap_hack_ap_make_content_type:
	.quad	ap_make_content_type
	.globl	ap_hack_ap_setup_make_content_type
	.align 8
	.type	ap_hack_ap_setup_make_content_type, @object
	.size	ap_hack_ap_setup_make_content_type, 8
ap_hack_ap_setup_make_content_type:
	.quad	ap_setup_make_content_type
	.globl	ap_hack_ap_make_etag
	.align 8
	.type	ap_hack_ap_make_etag, @object
	.size	ap_hack_ap_make_etag, 8
ap_hack_ap_make_etag:
	.quad	ap_make_etag
	.globl	ap_hack_ap_set_etag
	.align 8
	.type	ap_hack_ap_set_etag, @object
	.size	ap_hack_ap_set_etag, 8
ap_hack_ap_set_etag:
	.quad	ap_set_etag
	.globl	ap_hack_ap_set_last_modified
	.align 8
	.type	ap_hack_ap_set_last_modified, @object
	.size	ap_hack_ap_set_last_modified, 8
ap_hack_ap_set_last_modified:
	.quad	ap_set_last_modified
	.globl	ap_hack_ap_meets_conditions
	.align 8
	.type	ap_hack_ap_meets_conditions, @object
	.size	ap_hack_ap_meets_conditions, 8
ap_hack_ap_meets_conditions:
	.quad	ap_meets_conditions
	.globl	ap_hack_ap_send_fd
	.align 8
	.type	ap_hack_ap_send_fd, @object
	.size	ap_hack_ap_send_fd, 8
ap_hack_ap_send_fd:
	.quad	ap_send_fd
	.globl	ap_hack_ap_send_mmap
	.align 8
	.type	ap_hack_ap_send_mmap, @object
	.size	ap_hack_ap_send_mmap, 8
ap_hack_ap_send_mmap:
	.quad	ap_send_mmap
	.globl	ap_hack_ap_method_register
	.align 8
	.type	ap_hack_ap_method_register, @object
	.size	ap_hack_ap_method_register, 8
ap_hack_ap_method_register:
	.quad	ap_method_register
	.globl	ap_hack_ap_method_registry_init
	.align 8
	.type	ap_hack_ap_method_registry_init, @object
	.size	ap_hack_ap_method_registry_init, 8
ap_hack_ap_method_registry_init:
	.quad	ap_method_registry_init
	.globl	ap_hack_ap_make_method_list
	.align 8
	.type	ap_hack_ap_make_method_list, @object
	.size	ap_hack_ap_make_method_list, 8
ap_hack_ap_make_method_list:
	.quad	ap_make_method_list
	.globl	ap_hack_ap_copy_method_list
	.align 8
	.type	ap_hack_ap_copy_method_list, @object
	.size	ap_hack_ap_copy_method_list, 8
ap_hack_ap_copy_method_list:
	.quad	ap_copy_method_list
	.globl	ap_hack_ap_method_in_list
	.align 8
	.type	ap_hack_ap_method_in_list, @object
	.size	ap_hack_ap_method_in_list, 8
ap_hack_ap_method_in_list:
	.quad	ap_method_in_list
	.globl	ap_hack_ap_method_list_add
	.align 8
	.type	ap_hack_ap_method_list_add, @object
	.size	ap_hack_ap_method_list_add, 8
ap_hack_ap_method_list_add:
	.quad	ap_method_list_add
	.globl	ap_hack_ap_method_list_remove
	.align 8
	.type	ap_hack_ap_method_list_remove, @object
	.size	ap_hack_ap_method_list_remove, 8
ap_hack_ap_method_list_remove:
	.quad	ap_method_list_remove
	.globl	ap_hack_ap_clear_method_list
	.align 8
	.type	ap_hack_ap_clear_method_list, @object
	.size	ap_hack_ap_clear_method_list, 8
ap_hack_ap_clear_method_list:
	.quad	ap_clear_method_list
	.globl	ap_hack_ap_set_content_type
	.align 8
	.type	ap_hack_ap_set_content_type, @object
	.size	ap_hack_ap_set_content_type, 8
ap_hack_ap_set_content_type:
	.quad	ap_set_content_type
	.globl	ap_hack_ap_rputc
	.align 8
	.type	ap_hack_ap_rputc, @object
	.size	ap_hack_ap_rputc, 8
ap_hack_ap_rputc:
	.quad	ap_rputc
	.globl	ap_hack_ap_rputs
	.align 8
	.type	ap_hack_ap_rputs, @object
	.size	ap_hack_ap_rputs, 8
ap_hack_ap_rputs:
	.quad	ap_rputs
	.globl	ap_hack_ap_rwrite
	.align 8
	.type	ap_hack_ap_rwrite, @object
	.size	ap_hack_ap_rwrite, 8
ap_hack_ap_rwrite:
	.quad	ap_rwrite
	.globl	ap_hack_ap_rvputs
	.align 8
	.type	ap_hack_ap_rvputs, @object
	.size	ap_hack_ap_rvputs, 8
ap_hack_ap_rvputs:
	.quad	ap_rvputs
	.globl	ap_hack_ap_vrprintf
	.align 8
	.type	ap_hack_ap_vrprintf, @object
	.size	ap_hack_ap_vrprintf, 8
ap_hack_ap_vrprintf:
	.quad	ap_vrprintf
	.globl	ap_hack_ap_rprintf
	.align 8
	.type	ap_hack_ap_rprintf, @object
	.size	ap_hack_ap_rprintf, 8
ap_hack_ap_rprintf:
	.quad	ap_rprintf
	.globl	ap_hack_ap_rflush
	.align 8
	.type	ap_hack_ap_rflush, @object
	.size	ap_hack_ap_rflush, 8
ap_hack_ap_rflush:
	.quad	ap_rflush
	.globl	ap_hack_ap_index_of_response
	.align 8
	.type	ap_hack_ap_index_of_response, @object
	.size	ap_hack_ap_index_of_response, 8
ap_hack_ap_index_of_response:
	.quad	ap_index_of_response
	.globl	ap_hack_ap_get_status_line
	.align 8
	.type	ap_hack_ap_get_status_line, @object
	.size	ap_hack_ap_get_status_line, 8
ap_hack_ap_get_status_line:
	.quad	ap_get_status_line
	.globl	ap_hack_ap_setup_client_block
	.align 8
	.type	ap_hack_ap_setup_client_block, @object
	.size	ap_hack_ap_setup_client_block, 8
ap_hack_ap_setup_client_block:
	.quad	ap_setup_client_block
	.globl	ap_hack_ap_should_client_block
	.align 8
	.type	ap_hack_ap_should_client_block, @object
	.size	ap_hack_ap_should_client_block, 8
ap_hack_ap_should_client_block:
	.quad	ap_should_client_block
	.globl	ap_hack_ap_get_client_block
	.align 8
	.type	ap_hack_ap_get_client_block, @object
	.size	ap_hack_ap_get_client_block, 8
ap_hack_ap_get_client_block:
	.quad	ap_get_client_block
	.globl	ap_hack_ap_discard_request_body
	.align 8
	.type	ap_hack_ap_discard_request_body, @object
	.size	ap_hack_ap_discard_request_body, 8
ap_hack_ap_discard_request_body:
	.quad	ap_discard_request_body
	.globl	ap_hack_ap_note_auth_failure
	.align 8
	.type	ap_hack_ap_note_auth_failure, @object
	.size	ap_hack_ap_note_auth_failure, 8
ap_hack_ap_note_auth_failure:
	.quad	ap_note_auth_failure
	.globl	ap_hack_ap_note_basic_auth_failure
	.align 8
	.type	ap_hack_ap_note_basic_auth_failure, @object
	.size	ap_hack_ap_note_basic_auth_failure, 8
ap_hack_ap_note_basic_auth_failure:
	.quad	ap_note_basic_auth_failure
	.globl	ap_hack_ap_note_digest_auth_failure
	.align 8
	.type	ap_hack_ap_note_digest_auth_failure, @object
	.size	ap_hack_ap_note_digest_auth_failure, 8
ap_hack_ap_note_digest_auth_failure:
	.quad	ap_note_digest_auth_failure
	.globl	ap_hack_ap_get_basic_auth_pw
	.align 8
	.type	ap_hack_ap_get_basic_auth_pw, @object
	.size	ap_hack_ap_get_basic_auth_pw, 8
ap_hack_ap_get_basic_auth_pw:
	.quad	ap_get_basic_auth_pw
	.globl	ap_hack_ap_parse_uri
	.align 8
	.type	ap_hack_ap_parse_uri, @object
	.size	ap_hack_ap_parse_uri, 8
ap_hack_ap_parse_uri:
	.quad	ap_parse_uri
	.globl	ap_hack_ap_getline
	.align 8
	.type	ap_hack_ap_getline, @object
	.size	ap_hack_ap_getline, 8
ap_hack_ap_getline:
	.quad	ap_getline
	.globl	ap_hack_ap_rgetline_core
	.align 8
	.type	ap_hack_ap_rgetline_core, @object
	.size	ap_hack_ap_rgetline_core, 8
ap_hack_ap_rgetline_core:
	.quad	ap_rgetline_core
	.globl	ap_hack_ap_method_number_of
	.align 8
	.type	ap_hack_ap_method_number_of, @object
	.size	ap_hack_ap_method_number_of, 8
ap_hack_ap_method_number_of:
	.quad	ap_method_number_of
	.globl	ap_hack_ap_method_name_of
	.align 8
	.type	ap_hack_ap_method_name_of, @object
	.size	ap_hack_ap_method_name_of, 8
ap_hack_ap_method_name_of:
	.quad	ap_method_name_of
	.globl	ap_hack_ap_hook_post_read_request
	.align 8
	.type	ap_hack_ap_hook_post_read_request, @object
	.size	ap_hack_ap_hook_post_read_request, 8
ap_hack_ap_hook_post_read_request:
	.quad	ap_hook_post_read_request
	.globl	ap_hack_ap_hook_get_post_read_request
	.align 8
	.type	ap_hack_ap_hook_get_post_read_request, @object
	.size	ap_hack_ap_hook_get_post_read_request, 8
ap_hack_ap_hook_get_post_read_request:
	.quad	ap_hook_get_post_read_request
	.globl	ap_hack_ap_run_post_read_request
	.align 8
	.type	ap_hack_ap_run_post_read_request, @object
	.size	ap_hack_ap_run_post_read_request, 8
ap_hack_ap_run_post_read_request:
	.quad	ap_run_post_read_request
	.globl	ap_hack_ap_hook_log_transaction
	.align 8
	.type	ap_hack_ap_hook_log_transaction, @object
	.size	ap_hack_ap_hook_log_transaction, 8
ap_hack_ap_hook_log_transaction:
	.quad	ap_hook_log_transaction
	.globl	ap_hack_ap_hook_get_log_transaction
	.align 8
	.type	ap_hack_ap_hook_get_log_transaction, @object
	.size	ap_hack_ap_hook_get_log_transaction, 8
ap_hack_ap_hook_get_log_transaction:
	.quad	ap_hook_get_log_transaction
	.globl	ap_hack_ap_run_log_transaction
	.align 8
	.type	ap_hack_ap_run_log_transaction, @object
	.size	ap_hack_ap_run_log_transaction, 8
ap_hack_ap_run_log_transaction:
	.quad	ap_run_log_transaction
	.globl	ap_hack_ap_hook_http_scheme
	.align 8
	.type	ap_hack_ap_hook_http_scheme, @object
	.size	ap_hack_ap_hook_http_scheme, 8
ap_hack_ap_hook_http_scheme:
	.quad	ap_hook_http_scheme
	.globl	ap_hack_ap_hook_get_http_scheme
	.align 8
	.type	ap_hack_ap_hook_get_http_scheme, @object
	.size	ap_hack_ap_hook_get_http_scheme, 8
ap_hack_ap_hook_get_http_scheme:
	.quad	ap_hook_get_http_scheme
	.globl	ap_hack_ap_run_http_scheme
	.align 8
	.type	ap_hack_ap_run_http_scheme, @object
	.size	ap_hack_ap_run_http_scheme, 8
ap_hack_ap_run_http_scheme:
	.quad	ap_run_http_scheme
	.globl	ap_hack_ap_hook_default_port
	.align 8
	.type	ap_hack_ap_hook_default_port, @object
	.size	ap_hack_ap_hook_default_port, 8
ap_hack_ap_hook_default_port:
	.quad	ap_hook_default_port
	.globl	ap_hack_ap_hook_get_default_port
	.align 8
	.type	ap_hack_ap_hook_get_default_port, @object
	.size	ap_hack_ap_hook_get_default_port, 8
ap_hack_ap_hook_get_default_port:
	.quad	ap_hook_get_default_port
	.globl	ap_hack_ap_run_default_port
	.align 8
	.type	ap_hack_ap_run_default_port, @object
	.size	ap_hack_ap_run_default_port, 8
ap_hack_ap_run_default_port:
	.quad	ap_run_default_port
	.globl	ap_hack_ap_bucket_error_make
	.align 8
	.type	ap_hack_ap_bucket_error_make, @object
	.size	ap_hack_ap_bucket_error_make, 8
ap_hack_ap_bucket_error_make:
	.quad	ap_bucket_error_make
	.globl	ap_hack_ap_bucket_error_create
	.align 8
	.type	ap_hack_ap_bucket_error_create, @object
	.size	ap_hack_ap_bucket_error_create, 8
ap_hack_ap_bucket_error_create:
	.quad	ap_bucket_error_create
	.globl	ap_hack_ap_byterange_filter
	.align 8
	.type	ap_hack_ap_byterange_filter, @object
	.size	ap_hack_ap_byterange_filter, 8
ap_hack_ap_byterange_filter:
	.quad	ap_byterange_filter
	.globl	ap_hack_ap_http_header_filter
	.align 8
	.type	ap_hack_ap_http_header_filter, @object
	.size	ap_hack_ap_http_header_filter, 8
ap_hack_ap_http_header_filter:
	.quad	ap_http_header_filter
	.globl	ap_hack_ap_content_length_filter
	.align 8
	.type	ap_hack_ap_content_length_filter, @object
	.size	ap_hack_ap_content_length_filter, 8
ap_hack_ap_content_length_filter:
	.quad	ap_content_length_filter
	.globl	ap_hack_ap_old_write_filter
	.align 8
	.type	ap_hack_ap_old_write_filter, @object
	.size	ap_hack_ap_old_write_filter, 8
ap_hack_ap_old_write_filter:
	.quad	ap_old_write_filter
	.globl	ap_hack_ap_set_sub_req_protocol
	.align 8
	.type	ap_hack_ap_set_sub_req_protocol, @object
	.size	ap_hack_ap_set_sub_req_protocol, 8
ap_hack_ap_set_sub_req_protocol:
	.quad	ap_set_sub_req_protocol
	.globl	ap_hack_ap_finalize_sub_req_protocol
	.align 8
	.type	ap_hack_ap_finalize_sub_req_protocol, @object
	.size	ap_hack_ap_finalize_sub_req_protocol, 8
ap_hack_ap_finalize_sub_req_protocol:
	.quad	ap_finalize_sub_req_protocol
	.globl	ap_hack_ap_send_interim_response
	.align 8
	.type	ap_hack_ap_send_interim_response, @object
	.size	ap_hack_ap_send_interim_response, 8
ap_hack_ap_send_interim_response:
	.quad	ap_send_interim_response
	.globl	ap_hack_ap_process_request_internal
	.align 8
	.type	ap_hack_ap_process_request_internal, @object
	.size	ap_hack_ap_process_request_internal, 8
ap_hack_ap_process_request_internal:
	.quad	ap_process_request_internal
	.globl	ap_hack_ap_sub_req_lookup_uri
	.align 8
	.type	ap_hack_ap_sub_req_lookup_uri, @object
	.size	ap_hack_ap_sub_req_lookup_uri, 8
ap_hack_ap_sub_req_lookup_uri:
	.quad	ap_sub_req_lookup_uri
	.globl	ap_hack_ap_sub_req_lookup_file
	.align 8
	.type	ap_hack_ap_sub_req_lookup_file, @object
	.size	ap_hack_ap_sub_req_lookup_file, 8
ap_hack_ap_sub_req_lookup_file:
	.quad	ap_sub_req_lookup_file
	.globl	ap_hack_ap_sub_req_lookup_dirent
	.align 8
	.type	ap_hack_ap_sub_req_lookup_dirent, @object
	.size	ap_hack_ap_sub_req_lookup_dirent, 8
ap_hack_ap_sub_req_lookup_dirent:
	.quad	ap_sub_req_lookup_dirent
	.globl	ap_hack_ap_sub_req_method_uri
	.align 8
	.type	ap_hack_ap_sub_req_method_uri, @object
	.size	ap_hack_ap_sub_req_method_uri, 8
ap_hack_ap_sub_req_method_uri:
	.quad	ap_sub_req_method_uri
	.globl	ap_hack_ap_sub_req_output_filter
	.align 8
	.type	ap_hack_ap_sub_req_output_filter, @object
	.size	ap_hack_ap_sub_req_output_filter, 8
ap_hack_ap_sub_req_output_filter:
	.quad	ap_sub_req_output_filter
	.globl	ap_hack_ap_run_sub_req
	.align 8
	.type	ap_hack_ap_run_sub_req, @object
	.size	ap_hack_ap_run_sub_req, 8
ap_hack_ap_run_sub_req:
	.quad	ap_run_sub_req
	.globl	ap_hack_ap_destroy_sub_req
	.align 8
	.type	ap_hack_ap_destroy_sub_req, @object
	.size	ap_hack_ap_destroy_sub_req, 8
ap_hack_ap_destroy_sub_req:
	.quad	ap_destroy_sub_req
	.globl	ap_hack_ap_internal_redirect
	.align 8
	.type	ap_hack_ap_internal_redirect, @object
	.size	ap_hack_ap_internal_redirect, 8
ap_hack_ap_internal_redirect:
	.quad	ap_internal_redirect
	.globl	ap_hack_ap_internal_redirect_handler
	.align 8
	.type	ap_hack_ap_internal_redirect_handler, @object
	.size	ap_hack_ap_internal_redirect_handler, 8
ap_hack_ap_internal_redirect_handler:
	.quad	ap_internal_redirect_handler
	.globl	ap_hack_ap_internal_fast_redirect
	.align 8
	.type	ap_hack_ap_internal_fast_redirect, @object
	.size	ap_hack_ap_internal_fast_redirect, 8
ap_hack_ap_internal_fast_redirect:
	.quad	ap_internal_fast_redirect
	.globl	ap_hack_ap_some_auth_required
	.align 8
	.type	ap_hack_ap_some_auth_required, @object
	.size	ap_hack_ap_some_auth_required, 8
ap_hack_ap_some_auth_required:
	.quad	ap_some_auth_required
	.globl	ap_hack_ap_is_initial_req
	.align 8
	.type	ap_hack_ap_is_initial_req, @object
	.size	ap_hack_ap_is_initial_req, 8
ap_hack_ap_is_initial_req:
	.quad	ap_is_initial_req
	.globl	ap_hack_ap_update_mtime
	.align 8
	.type	ap_hack_ap_update_mtime, @object
	.size	ap_hack_ap_update_mtime, 8
ap_hack_ap_update_mtime:
	.quad	ap_update_mtime
	.globl	ap_hack_ap_allow_methods
	.align 8
	.type	ap_hack_ap_allow_methods, @object
	.size	ap_hack_ap_allow_methods, 8
ap_hack_ap_allow_methods:
	.quad	ap_allow_methods
	.globl	ap_hack_ap_allow_standard_methods
	.align 8
	.type	ap_hack_ap_allow_standard_methods, @object
	.size	ap_hack_ap_allow_standard_methods, 8
ap_hack_ap_allow_standard_methods:
	.quad	ap_allow_standard_methods
	.globl	ap_hack_ap_die
	.align 8
	.type	ap_hack_ap_die, @object
	.size	ap_hack_ap_die, 8
ap_hack_ap_die:
	.quad	ap_die
	.globl	ap_hack_ap_hook_create_request
	.align 8
	.type	ap_hack_ap_hook_create_request, @object
	.size	ap_hack_ap_hook_create_request, 8
ap_hack_ap_hook_create_request:
	.quad	ap_hook_create_request
	.globl	ap_hack_ap_hook_get_create_request
	.align 8
	.type	ap_hack_ap_hook_get_create_request, @object
	.size	ap_hack_ap_hook_get_create_request, 8
ap_hack_ap_hook_get_create_request:
	.quad	ap_hook_get_create_request
	.globl	ap_hack_ap_run_create_request
	.align 8
	.type	ap_hack_ap_run_create_request, @object
	.size	ap_hack_ap_run_create_request, 8
ap_hack_ap_run_create_request:
	.quad	ap_run_create_request
	.globl	ap_hack_ap_hook_translate_name
	.align 8
	.type	ap_hack_ap_hook_translate_name, @object
	.size	ap_hack_ap_hook_translate_name, 8
ap_hack_ap_hook_translate_name:
	.quad	ap_hook_translate_name
	.globl	ap_hack_ap_hook_get_translate_name
	.align 8
	.type	ap_hack_ap_hook_get_translate_name, @object
	.size	ap_hack_ap_hook_get_translate_name, 8
ap_hack_ap_hook_get_translate_name:
	.quad	ap_hook_get_translate_name
	.globl	ap_hack_ap_run_translate_name
	.align 8
	.type	ap_hack_ap_run_translate_name, @object
	.size	ap_hack_ap_run_translate_name, 8
ap_hack_ap_run_translate_name:
	.quad	ap_run_translate_name
	.globl	ap_hack_ap_hook_map_to_storage
	.align 8
	.type	ap_hack_ap_hook_map_to_storage, @object
	.size	ap_hack_ap_hook_map_to_storage, 8
ap_hack_ap_hook_map_to_storage:
	.quad	ap_hook_map_to_storage
	.globl	ap_hack_ap_hook_get_map_to_storage
	.align 8
	.type	ap_hack_ap_hook_get_map_to_storage, @object
	.size	ap_hack_ap_hook_get_map_to_storage, 8
ap_hack_ap_hook_get_map_to_storage:
	.quad	ap_hook_get_map_to_storage
	.globl	ap_hack_ap_run_map_to_storage
	.align 8
	.type	ap_hack_ap_run_map_to_storage, @object
	.size	ap_hack_ap_run_map_to_storage, 8
ap_hack_ap_run_map_to_storage:
	.quad	ap_run_map_to_storage
	.globl	ap_hack_ap_hook_check_user_id
	.align 8
	.type	ap_hack_ap_hook_check_user_id, @object
	.size	ap_hack_ap_hook_check_user_id, 8
ap_hack_ap_hook_check_user_id:
	.quad	ap_hook_check_user_id
	.globl	ap_hack_ap_hook_get_check_user_id
	.align 8
	.type	ap_hack_ap_hook_get_check_user_id, @object
	.size	ap_hack_ap_hook_get_check_user_id, 8
ap_hack_ap_hook_get_check_user_id:
	.quad	ap_hook_get_check_user_id
	.globl	ap_hack_ap_run_check_user_id
	.align 8
	.type	ap_hack_ap_run_check_user_id, @object
	.size	ap_hack_ap_run_check_user_id, 8
ap_hack_ap_run_check_user_id:
	.quad	ap_run_check_user_id
	.globl	ap_hack_ap_hook_fixups
	.align 8
	.type	ap_hack_ap_hook_fixups, @object
	.size	ap_hack_ap_hook_fixups, 8
ap_hack_ap_hook_fixups:
	.quad	ap_hook_fixups
	.globl	ap_hack_ap_hook_get_fixups
	.align 8
	.type	ap_hack_ap_hook_get_fixups, @object
	.size	ap_hack_ap_hook_get_fixups, 8
ap_hack_ap_hook_get_fixups:
	.quad	ap_hook_get_fixups
	.globl	ap_hack_ap_run_fixups
	.align 8
	.type	ap_hack_ap_run_fixups, @object
	.size	ap_hack_ap_run_fixups, 8
ap_hack_ap_run_fixups:
	.quad	ap_run_fixups
	.globl	ap_hack_ap_hook_type_checker
	.align 8
	.type	ap_hack_ap_hook_type_checker, @object
	.size	ap_hack_ap_hook_type_checker, 8
ap_hack_ap_hook_type_checker:
	.quad	ap_hook_type_checker
	.globl	ap_hack_ap_hook_get_type_checker
	.align 8
	.type	ap_hack_ap_hook_get_type_checker, @object
	.size	ap_hack_ap_hook_get_type_checker, 8
ap_hack_ap_hook_get_type_checker:
	.quad	ap_hook_get_type_checker
	.globl	ap_hack_ap_run_type_checker
	.align 8
	.type	ap_hack_ap_run_type_checker, @object
	.size	ap_hack_ap_run_type_checker, 8
ap_hack_ap_run_type_checker:
	.quad	ap_run_type_checker
	.globl	ap_hack_ap_hook_access_checker
	.align 8
	.type	ap_hack_ap_hook_access_checker, @object
	.size	ap_hack_ap_hook_access_checker, 8
ap_hack_ap_hook_access_checker:
	.quad	ap_hook_access_checker
	.globl	ap_hack_ap_hook_get_access_checker
	.align 8
	.type	ap_hack_ap_hook_get_access_checker, @object
	.size	ap_hack_ap_hook_get_access_checker, 8
ap_hack_ap_hook_get_access_checker:
	.quad	ap_hook_get_access_checker
	.globl	ap_hack_ap_run_access_checker
	.align 8
	.type	ap_hack_ap_run_access_checker, @object
	.size	ap_hack_ap_run_access_checker, 8
ap_hack_ap_run_access_checker:
	.quad	ap_run_access_checker
	.globl	ap_hack_ap_hook_auth_checker
	.align 8
	.type	ap_hack_ap_hook_auth_checker, @object
	.size	ap_hack_ap_hook_auth_checker, 8
ap_hack_ap_hook_auth_checker:
	.quad	ap_hook_auth_checker
	.globl	ap_hack_ap_hook_get_auth_checker
	.align 8
	.type	ap_hack_ap_hook_get_auth_checker, @object
	.size	ap_hack_ap_hook_get_auth_checker, 8
ap_hack_ap_hook_get_auth_checker:
	.quad	ap_hook_get_auth_checker
	.globl	ap_hack_ap_run_auth_checker
	.align 8
	.type	ap_hack_ap_run_auth_checker, @object
	.size	ap_hack_ap_run_auth_checker, 8
ap_hack_ap_run_auth_checker:
	.quad	ap_run_auth_checker
	.globl	ap_hack_ap_hook_insert_filter
	.align 8
	.type	ap_hack_ap_hook_insert_filter, @object
	.size	ap_hack_ap_hook_insert_filter, 8
ap_hack_ap_hook_insert_filter:
	.quad	ap_hook_insert_filter
	.globl	ap_hack_ap_hook_get_insert_filter
	.align 8
	.type	ap_hack_ap_hook_get_insert_filter, @object
	.size	ap_hack_ap_hook_get_insert_filter, 8
ap_hack_ap_hook_get_insert_filter:
	.quad	ap_hook_get_insert_filter
	.globl	ap_hack_ap_run_insert_filter
	.align 8
	.type	ap_hack_ap_run_insert_filter, @object
	.size	ap_hack_ap_run_insert_filter, 8
ap_hack_ap_run_insert_filter:
	.quad	ap_run_insert_filter
	.globl	ap_hack_ap_location_walk
	.align 8
	.type	ap_hack_ap_location_walk, @object
	.size	ap_hack_ap_location_walk, 8
ap_hack_ap_location_walk:
	.quad	ap_location_walk
	.globl	ap_hack_ap_directory_walk
	.align 8
	.type	ap_hack_ap_directory_walk, @object
	.size	ap_hack_ap_directory_walk, 8
ap_hack_ap_directory_walk:
	.quad	ap_directory_walk
	.globl	ap_hack_ap_file_walk
	.align 8
	.type	ap_hack_ap_file_walk, @object
	.size	ap_hack_ap_file_walk, 8
ap_hack_ap_file_walk:
	.quad	ap_file_walk
	.globl	ap_hack_ap_init_vhost_config
	.align 8
	.type	ap_hack_ap_init_vhost_config, @object
	.size	ap_hack_ap_init_vhost_config, 8
ap_hack_ap_init_vhost_config:
	.quad	ap_init_vhost_config
	.globl	ap_hack_ap_fini_vhost_config
	.align 8
	.type	ap_hack_ap_fini_vhost_config, @object
	.size	ap_hack_ap_fini_vhost_config, 8
ap_hack_ap_fini_vhost_config:
	.quad	ap_fini_vhost_config
	.globl	ap_hack_ap_vhost_iterate_given_conn
	.align 8
	.type	ap_hack_ap_vhost_iterate_given_conn, @object
	.size	ap_hack_ap_vhost_iterate_given_conn, 8
ap_hack_ap_vhost_iterate_given_conn:
	.quad	ap_vhost_iterate_given_conn
	.globl	ap_hack_ap_update_vhost_given_ip
	.align 8
	.type	ap_hack_ap_update_vhost_given_ip, @object
	.size	ap_hack_ap_update_vhost_given_ip, 8
ap_hack_ap_update_vhost_given_ip:
	.quad	ap_update_vhost_given_ip
	.globl	ap_hack_ap_update_vhost_from_headers
	.align 8
	.type	ap_hack_ap_update_vhost_from_headers, @object
	.size	ap_hack_ap_update_vhost_from_headers, 8
ap_hack_ap_update_vhost_from_headers:
	.quad	ap_update_vhost_from_headers
	.globl	ap_hack_ap_matches_request_vhost
	.align 8
	.type	ap_hack_ap_matches_request_vhost, @object
	.size	ap_hack_ap_matches_request_vhost, 8
ap_hack_ap_matches_request_vhost:
	.quad	ap_matches_request_vhost
	.globl	ap_hack_ap_uname2id
	.align 8
	.type	ap_hack_ap_uname2id, @object
	.size	ap_hack_ap_uname2id, 8
ap_hack_ap_uname2id:
	.quad	ap_uname2id
	.globl	ap_hack_ap_gname2id
	.align 8
	.type	ap_hack_ap_gname2id, @object
	.size	ap_hack_ap_gname2id, 8
ap_hack_ap_gname2id:
	.quad	ap_gname2id
	.globl	ap_hack_ap_mpm_pod_open
	.align 8
	.type	ap_hack_ap_mpm_pod_open, @object
	.size	ap_hack_ap_mpm_pod_open, 8
ap_hack_ap_mpm_pod_open:
	.quad	ap_mpm_pod_open
	.globl	ap_hack_ap_mpm_pod_check
	.align 8
	.type	ap_hack_ap_mpm_pod_check, @object
	.size	ap_hack_ap_mpm_pod_check, 8
ap_hack_ap_mpm_pod_check:
	.quad	ap_mpm_pod_check
	.globl	ap_hack_ap_mpm_pod_close
	.align 8
	.type	ap_hack_ap_mpm_pod_close, @object
	.size	ap_hack_ap_mpm_pod_close, 8
ap_hack_ap_mpm_pod_close:
	.quad	ap_mpm_pod_close
	.globl	ap_hack_ap_mpm_pod_signal
	.align 8
	.type	ap_hack_ap_mpm_pod_signal, @object
	.size	ap_hack_ap_mpm_pod_signal, 8
ap_hack_ap_mpm_pod_signal:
	.quad	ap_mpm_pod_signal
	.globl	ap_hack_ap_mpm_pod_killpg
	.align 8
	.type	ap_hack_ap_mpm_pod_killpg, @object
	.size	ap_hack_ap_mpm_pod_killpg, 8
ap_hack_ap_mpm_pod_killpg:
	.quad	ap_mpm_pod_killpg
	.globl	ap_hack_ap_hook_monitor
	.align 8
	.type	ap_hack_ap_hook_monitor, @object
	.size	ap_hack_ap_hook_monitor, 8
ap_hack_ap_hook_monitor:
	.quad	ap_hook_monitor
	.globl	ap_hack_ap_hook_get_monitor
	.align 8
	.type	ap_hack_ap_hook_get_monitor, @object
	.size	ap_hack_ap_hook_get_monitor, 8
ap_hack_ap_hook_get_monitor:
	.quad	ap_hook_get_monitor
	.globl	ap_hack_ap_run_monitor
	.align 8
	.type	ap_hack_ap_run_monitor, @object
	.size	ap_hack_ap_run_monitor, 8
ap_hack_ap_run_monitor:
	.quad	ap_run_monitor
	.globl	ap_hack_ap_exists_scoreboard_image
	.align 8
	.type	ap_hack_ap_exists_scoreboard_image, @object
	.size	ap_hack_ap_exists_scoreboard_image, 8
ap_hack_ap_exists_scoreboard_image:
	.quad	ap_exists_scoreboard_image
	.globl	ap_hack_ap_increment_counts
	.align 8
	.type	ap_hack_ap_increment_counts, @object
	.size	ap_hack_ap_increment_counts, 8
ap_hack_ap_increment_counts:
	.quad	ap_increment_counts
	.globl	ap_hack_ap_calc_scoreboard_size
	.align 8
	.type	ap_hack_ap_calc_scoreboard_size, @object
	.size	ap_hack_ap_calc_scoreboard_size, 8
ap_hack_ap_calc_scoreboard_size:
	.quad	ap_calc_scoreboard_size
	.globl	ap_hack_ap_create_sb_handle
	.align 8
	.type	ap_hack_ap_create_sb_handle, @object
	.size	ap_hack_ap_create_sb_handle, 8
ap_hack_ap_create_sb_handle:
	.quad	ap_create_sb_handle
	.globl	ap_hack_ap_update_child_status
	.align 8
	.type	ap_hack_ap_update_child_status, @object
	.size	ap_hack_ap_update_child_status, 8
ap_hack_ap_update_child_status:
	.quad	ap_update_child_status
	.globl	ap_hack_ap_update_child_status_from_indexes
	.align 8
	.type	ap_hack_ap_update_child_status_from_indexes, @object
	.size	ap_hack_ap_update_child_status_from_indexes, 8
ap_hack_ap_update_child_status_from_indexes:
	.quad	ap_update_child_status_from_indexes
	.globl	ap_hack_ap_get_scoreboard_worker
	.align 8
	.type	ap_hack_ap_get_scoreboard_worker, @object
	.size	ap_hack_ap_get_scoreboard_worker, 8
ap_hack_ap_get_scoreboard_worker:
	.quad	ap_get_scoreboard_worker
	.globl	ap_hack_ap_get_scoreboard_process
	.align 8
	.type	ap_hack_ap_get_scoreboard_process, @object
	.size	ap_hack_ap_get_scoreboard_process, 8
ap_hack_ap_get_scoreboard_process:
	.quad	ap_get_scoreboard_process
	.globl	ap_hack_ap_get_scoreboard_global
	.align 8
	.type	ap_hack_ap_get_scoreboard_global, @object
	.size	ap_hack_ap_get_scoreboard_global, 8
ap_hack_ap_get_scoreboard_global:
	.quad	ap_get_scoreboard_global
	.globl	ap_hack_ap_get_scoreboard_lb
	.align 8
	.type	ap_hack_ap_get_scoreboard_lb, @object
	.size	ap_hack_ap_get_scoreboard_lb, 8
ap_hack_ap_get_scoreboard_lb:
	.quad	ap_get_scoreboard_lb
	.globl	ap_hack_ap_hook_pre_mpm
	.align 8
	.type	ap_hack_ap_hook_pre_mpm, @object
	.size	ap_hack_ap_hook_pre_mpm, 8
ap_hack_ap_hook_pre_mpm:
	.quad	ap_hook_pre_mpm
	.globl	ap_hack_ap_hook_get_pre_mpm
	.align 8
	.type	ap_hack_ap_hook_get_pre_mpm, @object
	.size	ap_hack_ap_hook_get_pre_mpm, 8
ap_hack_ap_hook_get_pre_mpm:
	.quad	ap_hook_get_pre_mpm
	.globl	ap_hack_ap_run_pre_mpm
	.align 8
	.type	ap_hack_ap_run_pre_mpm, @object
	.size	ap_hack_ap_run_pre_mpm, 8
ap_hack_ap_run_pre_mpm:
	.quad	ap_run_pre_mpm
	.globl	ap_hack_ap_get_brigade
	.align 8
	.type	ap_hack_ap_get_brigade, @object
	.size	ap_hack_ap_get_brigade, 8
ap_hack_ap_get_brigade:
	.quad	ap_get_brigade
	.globl	ap_hack_ap_pass_brigade
	.align 8
	.type	ap_hack_ap_pass_brigade, @object
	.size	ap_hack_ap_pass_brigade, 8
ap_hack_ap_pass_brigade:
	.quad	ap_pass_brigade
	.globl	ap_hack_ap_register_input_filter
	.align 8
	.type	ap_hack_ap_register_input_filter, @object
	.size	ap_hack_ap_register_input_filter, 8
ap_hack_ap_register_input_filter:
	.quad	ap_register_input_filter
	.globl	ap_hack_ap_register_output_filter
	.align 8
	.type	ap_hack_ap_register_output_filter, @object
	.size	ap_hack_ap_register_output_filter, 8
ap_hack_ap_register_output_filter:
	.quad	ap_register_output_filter
	.globl	ap_hack_ap_register_output_filter_protocol
	.align 8
	.type	ap_hack_ap_register_output_filter_protocol, @object
	.size	ap_hack_ap_register_output_filter_protocol, 8
ap_hack_ap_register_output_filter_protocol:
	.quad	ap_register_output_filter_protocol
	.globl	ap_hack_ap_add_input_filter
	.align 8
	.type	ap_hack_ap_add_input_filter, @object
	.size	ap_hack_ap_add_input_filter, 8
ap_hack_ap_add_input_filter:
	.quad	ap_add_input_filter
	.globl	ap_hack_ap_add_input_filter_handle
	.align 8
	.type	ap_hack_ap_add_input_filter_handle, @object
	.size	ap_hack_ap_add_input_filter_handle, 8
ap_hack_ap_add_input_filter_handle:
	.quad	ap_add_input_filter_handle
	.globl	ap_hack_ap_get_input_filter_handle
	.align 8
	.type	ap_hack_ap_get_input_filter_handle, @object
	.size	ap_hack_ap_get_input_filter_handle, 8
ap_hack_ap_get_input_filter_handle:
	.quad	ap_get_input_filter_handle
	.globl	ap_hack_ap_add_output_filter
	.align 8
	.type	ap_hack_ap_add_output_filter, @object
	.size	ap_hack_ap_add_output_filter, 8
ap_hack_ap_add_output_filter:
	.quad	ap_add_output_filter
	.globl	ap_hack_ap_add_output_filter_handle
	.align 8
	.type	ap_hack_ap_add_output_filter_handle, @object
	.size	ap_hack_ap_add_output_filter_handle, 8
ap_hack_ap_add_output_filter_handle:
	.quad	ap_add_output_filter_handle
	.globl	ap_hack_ap_get_output_filter_handle
	.align 8
	.type	ap_hack_ap_get_output_filter_handle, @object
	.size	ap_hack_ap_get_output_filter_handle, 8
ap_hack_ap_get_output_filter_handle:
	.quad	ap_get_output_filter_handle
	.globl	ap_hack_ap_remove_input_filter
	.align 8
	.type	ap_hack_ap_remove_input_filter, @object
	.size	ap_hack_ap_remove_input_filter, 8
ap_hack_ap_remove_input_filter:
	.quad	ap_remove_input_filter
	.globl	ap_hack_ap_remove_output_filter
	.align 8
	.type	ap_hack_ap_remove_output_filter, @object
	.size	ap_hack_ap_remove_output_filter, 8
ap_hack_ap_remove_output_filter:
	.quad	ap_remove_output_filter
	.globl	ap_hack_ap_save_brigade
	.align 8
	.type	ap_hack_ap_save_brigade, @object
	.size	ap_hack_ap_save_brigade, 8
ap_hack_ap_save_brigade:
	.quad	ap_save_brigade
	.globl	ap_hack_ap_filter_flush
	.align 8
	.type	ap_hack_ap_filter_flush, @object
	.size	ap_hack_ap_filter_flush, 8
ap_hack_ap_filter_flush:
	.quad	ap_filter_flush
	.globl	ap_hack_ap_fflush
	.align 8
	.type	ap_hack_ap_fflush, @object
	.size	ap_hack_ap_fflush, 8
ap_hack_ap_fflush:
	.quad	ap_fflush
	.globl	ap_hack_ap_fputstrs
	.align 8
	.type	ap_hack_ap_fputstrs, @object
	.size	ap_hack_ap_fputstrs, 8
ap_hack_ap_fputstrs:
	.quad	ap_fputstrs
	.globl	ap_hack_ap_fprintf
	.align 8
	.type	ap_hack_ap_fprintf, @object
	.size	ap_hack_ap_fprintf, 8
ap_hack_ap_fprintf:
	.quad	ap_fprintf
	.globl	ap_hack_ap_filter_protocol
	.align 8
	.type	ap_hack_ap_filter_protocol, @object
	.size	ap_hack_ap_filter_protocol, 8
ap_hack_ap_filter_protocol:
	.quad	ap_filter_protocol
	.globl	ap_hack_ap_md5
	.align 8
	.type	ap_hack_ap_md5, @object
	.size	ap_hack_ap_md5, 8
ap_hack_ap_md5:
	.quad	ap_md5
	.globl	ap_hack_ap_md5_binary
	.align 8
	.type	ap_hack_ap_md5_binary, @object
	.size	ap_hack_ap_md5_binary, 8
ap_hack_ap_md5_binary:
	.quad	ap_md5_binary
	.globl	ap_hack_ap_md5contextTo64
	.align 8
	.type	ap_hack_ap_md5contextTo64, @object
	.size	ap_hack_ap_md5contextTo64, 8
ap_hack_ap_md5contextTo64:
	.quad	ap_md5contextTo64
	.globl	ap_hack_ap_md5digest
	.align 8
	.type	ap_hack_ap_md5digest, @object
	.size	ap_hack_ap_md5digest, 8
ap_hack_ap_md5digest:
	.quad	ap_md5digest
	.globl	ap_hack_ap_create_environment
	.align 8
	.type	ap_hack_ap_create_environment, @object
	.size	ap_hack_ap_create_environment, 8
ap_hack_ap_create_environment:
	.quad	ap_create_environment
	.globl	ap_hack_ap_find_path_info
	.align 8
	.type	ap_hack_ap_find_path_info, @object
	.size	ap_hack_ap_find_path_info, 8
ap_hack_ap_find_path_info:
	.quad	ap_find_path_info
	.globl	ap_hack_ap_add_cgi_vars
	.align 8
	.type	ap_hack_ap_add_cgi_vars, @object
	.size	ap_hack_ap_add_cgi_vars, 8
ap_hack_ap_add_cgi_vars:
	.quad	ap_add_cgi_vars
	.globl	ap_hack_ap_add_common_vars
	.align 8
	.type	ap_hack_ap_add_common_vars, @object
	.size	ap_hack_ap_add_common_vars, 8
ap_hack_ap_add_common_vars:
	.quad	ap_add_common_vars
	.globl	ap_hack_ap_scan_script_header_err
	.align 8
	.type	ap_hack_ap_scan_script_header_err, @object
	.size	ap_hack_ap_scan_script_header_err, 8
ap_hack_ap_scan_script_header_err:
	.quad	ap_scan_script_header_err
	.globl	ap_hack_ap_scan_script_header_err_brigade
	.align 8
	.type	ap_hack_ap_scan_script_header_err_brigade, @object
	.size	ap_hack_ap_scan_script_header_err_brigade, 8
ap_hack_ap_scan_script_header_err_brigade:
	.quad	ap_scan_script_header_err_brigade
	.globl	ap_hack_ap_scan_script_header_err_strs
	.align 8
	.type	ap_hack_ap_scan_script_header_err_strs, @object
	.size	ap_hack_ap_scan_script_header_err_strs, 8
ap_hack_ap_scan_script_header_err_strs:
	.quad	ap_scan_script_header_err_strs
	.globl	ap_hack_ap_scan_script_header_err_core
	.align 8
	.type	ap_hack_ap_scan_script_header_err_core, @object
	.size	ap_hack_ap_scan_script_header_err_core, 8
ap_hack_ap_scan_script_header_err_core:
	.quad	ap_scan_script_header_err_core
	.globl	ap_hack_ap_explode_recent_localtime
	.align 8
	.type	ap_hack_ap_explode_recent_localtime, @object
	.size	ap_hack_ap_explode_recent_localtime, 8
ap_hack_ap_explode_recent_localtime:
	.quad	ap_explode_recent_localtime
	.globl	ap_hack_ap_explode_recent_gmt
	.align 8
	.type	ap_hack_ap_explode_recent_gmt, @object
	.size	ap_hack_ap_explode_recent_gmt, 8
ap_hack_ap_explode_recent_gmt:
	.quad	ap_explode_recent_gmt
	.globl	ap_hack_ap_recent_ctime
	.align 8
	.type	ap_hack_ap_recent_ctime, @object
	.size	ap_hack_ap_recent_ctime, 8
ap_hack_ap_recent_ctime:
	.quad	ap_recent_ctime
	.globl	ap_hack_ap_recent_rfc822_date
	.align 8
	.type	ap_hack_ap_recent_rfc822_date, @object
	.size	ap_hack_ap_recent_rfc822_date, 8
ap_hack_ap_recent_rfc822_date:
	.quad	ap_recent_rfc822_date
	.globl	ap_hack_ap_xml_parse_input
	.align 8
	.type	ap_hack_ap_xml_parse_input, @object
	.size	ap_hack_ap_xml_parse_input, 8
ap_hack_ap_xml_parse_input:
	.quad	ap_xml_parse_input
	.globl	ap_hack_ap_basic_http_header
	.align 8
	.type	ap_hack_ap_basic_http_header, @object
	.size	ap_hack_ap_basic_http_header, 8
ap_hack_ap_basic_http_header:
	.quad	ap_basic_http_header
	.globl	ap_hack_ap_send_http_trace
	.align 8
	.type	ap_hack_ap_send_http_trace, @object
	.size	ap_hack_ap_send_http_trace, 8
ap_hack_ap_send_http_trace:
	.quad	ap_send_http_trace
	.globl	ap_hack_ap_send_http_options
	.align 8
	.type	ap_hack_ap_send_http_options, @object
	.size	ap_hack_ap_send_http_options, 8
ap_hack_ap_send_http_options:
	.quad	ap_send_http_options
	.globl	ap_hack_ap_hook_get_suexec_identity
	.align 8
	.type	ap_hack_ap_hook_get_suexec_identity, @object
	.size	ap_hack_ap_hook_get_suexec_identity, 8
ap_hack_ap_hook_get_suexec_identity:
	.quad	ap_hook_get_suexec_identity
	.globl	ap_hack_ap_hook_get_get_suexec_identity
	.align 8
	.type	ap_hack_ap_hook_get_get_suexec_identity, @object
	.size	ap_hack_ap_hook_get_get_suexec_identity, 8
ap_hack_ap_hook_get_get_suexec_identity:
	.quad	ap_hook_get_get_suexec_identity
	.globl	ap_hack_ap_run_get_suexec_identity
	.align 8
	.type	ap_hack_ap_run_get_suexec_identity, @object
	.size	ap_hack_ap_run_get_suexec_identity, 8
ap_hack_ap_run_get_suexec_identity:
	.quad	ap_run_get_suexec_identity
	.globl	ap_hack_unixd_setup_child
	.align 8
	.type	ap_hack_unixd_setup_child, @object
	.size	ap_hack_unixd_setup_child, 8
ap_hack_unixd_setup_child:
	.quad	unixd_setup_child
	.globl	ap_hack_unixd_pre_config
	.align 8
	.type	ap_hack_unixd_pre_config, @object
	.size	ap_hack_unixd_pre_config, 8
ap_hack_unixd_pre_config:
	.quad	unixd_pre_config
	.globl	ap_hack_unixd_set_user
	.align 8
	.type	ap_hack_unixd_set_user, @object
	.size	ap_hack_unixd_set_user, 8
ap_hack_unixd_set_user:
	.quad	unixd_set_user
	.globl	ap_hack_unixd_set_group
	.align 8
	.type	ap_hack_unixd_set_group, @object
	.size	ap_hack_unixd_set_group, 8
ap_hack_unixd_set_group:
	.quad	unixd_set_group
	.globl	ap_hack_unixd_set_chroot_dir
	.align 8
	.type	ap_hack_unixd_set_chroot_dir, @object
	.size	ap_hack_unixd_set_chroot_dir, 8
ap_hack_unixd_set_chroot_dir:
	.quad	unixd_set_chroot_dir
	.globl	ap_hack_unixd_set_rlimit
	.align 8
	.type	ap_hack_unixd_set_rlimit, @object
	.size	ap_hack_unixd_set_rlimit, 8
ap_hack_unixd_set_rlimit:
	.quad	unixd_set_rlimit
	.globl	ap_hack_unixd_set_proc_mutex_perms
	.align 8
	.type	ap_hack_unixd_set_proc_mutex_perms, @object
	.size	ap_hack_unixd_set_proc_mutex_perms, 8
ap_hack_unixd_set_proc_mutex_perms:
	.quad	unixd_set_proc_mutex_perms
	.globl	ap_hack_unixd_set_global_mutex_perms
	.align 8
	.type	ap_hack_unixd_set_global_mutex_perms, @object
	.size	ap_hack_unixd_set_global_mutex_perms, 8
ap_hack_unixd_set_global_mutex_perms:
	.quad	unixd_set_global_mutex_perms
	.globl	ap_hack_unixd_accept
	.align 8
	.type	ap_hack_unixd_accept, @object
	.size	ap_hack_unixd_accept, 8
ap_hack_unixd_accept:
	.quad	unixd_accept
	.globl	ap_hack_apr_allocator_create
	.align 8
	.type	ap_hack_apr_allocator_create, @object
	.size	ap_hack_apr_allocator_create, 8
ap_hack_apr_allocator_create:
	.quad	apr_allocator_create
	.globl	ap_hack_apr_allocator_destroy
	.align 8
	.type	ap_hack_apr_allocator_destroy, @object
	.size	ap_hack_apr_allocator_destroy, 8
ap_hack_apr_allocator_destroy:
	.quad	apr_allocator_destroy
	.globl	ap_hack_apr_allocator_alloc
	.align 8
	.type	ap_hack_apr_allocator_alloc, @object
	.size	ap_hack_apr_allocator_alloc, 8
ap_hack_apr_allocator_alloc:
	.quad	apr_allocator_alloc
	.globl	ap_hack_apr_allocator_free
	.align 8
	.type	ap_hack_apr_allocator_free, @object
	.size	ap_hack_apr_allocator_free, 8
ap_hack_apr_allocator_free:
	.quad	apr_allocator_free
	.globl	ap_hack_apr_allocator_owner_set
	.align 8
	.type	ap_hack_apr_allocator_owner_set, @object
	.size	ap_hack_apr_allocator_owner_set, 8
ap_hack_apr_allocator_owner_set:
	.quad	apr_allocator_owner_set
	.globl	ap_hack_apr_allocator_owner_get
	.align 8
	.type	ap_hack_apr_allocator_owner_get, @object
	.size	ap_hack_apr_allocator_owner_get, 8
ap_hack_apr_allocator_owner_get:
	.quad	apr_allocator_owner_get
	.globl	ap_hack_apr_allocator_max_free_set
	.align 8
	.type	ap_hack_apr_allocator_max_free_set, @object
	.size	ap_hack_apr_allocator_max_free_set, 8
ap_hack_apr_allocator_max_free_set:
	.quad	apr_allocator_max_free_set
	.globl	ap_hack_apr_allocator_mutex_set
	.align 8
	.type	ap_hack_apr_allocator_mutex_set, @object
	.size	ap_hack_apr_allocator_mutex_set, 8
ap_hack_apr_allocator_mutex_set:
	.quad	apr_allocator_mutex_set
	.globl	ap_hack_apr_allocator_mutex_get
	.align 8
	.type	ap_hack_apr_allocator_mutex_get, @object
	.size	ap_hack_apr_allocator_mutex_get, 8
ap_hack_apr_allocator_mutex_get:
	.quad	apr_allocator_mutex_get
	.globl	ap_hack_apr_atomic_init
	.align 8
	.type	ap_hack_apr_atomic_init, @object
	.size	ap_hack_apr_atomic_init, 8
ap_hack_apr_atomic_init:
	.quad	apr_atomic_init
	.globl	ap_hack_apr_atomic_read32
	.align 8
	.type	ap_hack_apr_atomic_read32, @object
	.size	ap_hack_apr_atomic_read32, 8
ap_hack_apr_atomic_read32:
	.quad	apr_atomic_read32
	.globl	ap_hack_apr_atomic_set32
	.align 8
	.type	ap_hack_apr_atomic_set32, @object
	.size	ap_hack_apr_atomic_set32, 8
ap_hack_apr_atomic_set32:
	.quad	apr_atomic_set32
	.globl	ap_hack_apr_atomic_add32
	.align 8
	.type	ap_hack_apr_atomic_add32, @object
	.size	ap_hack_apr_atomic_add32, 8
ap_hack_apr_atomic_add32:
	.quad	apr_atomic_add32
	.globl	ap_hack_apr_atomic_sub32
	.align 8
	.type	ap_hack_apr_atomic_sub32, @object
	.size	ap_hack_apr_atomic_sub32, 8
ap_hack_apr_atomic_sub32:
	.quad	apr_atomic_sub32
	.globl	ap_hack_apr_atomic_inc32
	.align 8
	.type	ap_hack_apr_atomic_inc32, @object
	.size	ap_hack_apr_atomic_inc32, 8
ap_hack_apr_atomic_inc32:
	.quad	apr_atomic_inc32
	.globl	ap_hack_apr_atomic_dec32
	.align 8
	.type	ap_hack_apr_atomic_dec32, @object
	.size	ap_hack_apr_atomic_dec32, 8
ap_hack_apr_atomic_dec32:
	.quad	apr_atomic_dec32
	.globl	ap_hack_apr_atomic_cas32
	.align 8
	.type	ap_hack_apr_atomic_cas32, @object
	.size	ap_hack_apr_atomic_cas32, 8
ap_hack_apr_atomic_cas32:
	.quad	apr_atomic_cas32
	.globl	ap_hack_apr_atomic_xchg32
	.align 8
	.type	ap_hack_apr_atomic_xchg32, @object
	.size	ap_hack_apr_atomic_xchg32, 8
ap_hack_apr_atomic_xchg32:
	.quad	apr_atomic_xchg32
	.globl	ap_hack_apr_atomic_casptr
	.align 8
	.type	ap_hack_apr_atomic_casptr, @object
	.size	ap_hack_apr_atomic_casptr, 8
ap_hack_apr_atomic_casptr:
	.quad	apr_atomic_casptr
	.globl	ap_hack_apr_atomic_xchgptr
	.align 8
	.type	ap_hack_apr_atomic_xchgptr, @object
	.size	ap_hack_apr_atomic_xchgptr, 8
ap_hack_apr_atomic_xchgptr:
	.quad	apr_atomic_xchgptr
	.globl	ap_hack_apr_base64_encode_len
	.align 8
	.type	ap_hack_apr_base64_encode_len, @object
	.size	ap_hack_apr_base64_encode_len, 8
ap_hack_apr_base64_encode_len:
	.quad	apr_base64_encode_len
	.globl	ap_hack_apr_base64_encode
	.align 8
	.type	ap_hack_apr_base64_encode, @object
	.size	ap_hack_apr_base64_encode, 8
ap_hack_apr_base64_encode:
	.quad	apr_base64_encode
	.globl	ap_hack_apr_base64_encode_binary
	.align 8
	.type	ap_hack_apr_base64_encode_binary, @object
	.size	ap_hack_apr_base64_encode_binary, 8
ap_hack_apr_base64_encode_binary:
	.quad	apr_base64_encode_binary
	.globl	ap_hack_apr_base64_decode_len
	.align 8
	.type	ap_hack_apr_base64_decode_len, @object
	.size	ap_hack_apr_base64_decode_len, 8
ap_hack_apr_base64_decode_len:
	.quad	apr_base64_decode_len
	.globl	ap_hack_apr_base64_decode
	.align 8
	.type	ap_hack_apr_base64_decode, @object
	.size	ap_hack_apr_base64_decode, 8
ap_hack_apr_base64_decode:
	.quad	apr_base64_decode
	.globl	ap_hack_apr_base64_decode_binary
	.align 8
	.type	ap_hack_apr_base64_decode_binary, @object
	.size	ap_hack_apr_base64_decode_binary, 8
ap_hack_apr_base64_decode_binary:
	.quad	apr_base64_decode_binary
	.globl	ap_hack_apr_brigade_create
	.align 8
	.type	ap_hack_apr_brigade_create, @object
	.size	ap_hack_apr_brigade_create, 8
ap_hack_apr_brigade_create:
	.quad	apr_brigade_create
	.globl	ap_hack_apr_brigade_destroy
	.align 8
	.type	ap_hack_apr_brigade_destroy, @object
	.size	ap_hack_apr_brigade_destroy, 8
ap_hack_apr_brigade_destroy:
	.quad	apr_brigade_destroy
	.globl	ap_hack_apr_brigade_cleanup
	.align 8
	.type	ap_hack_apr_brigade_cleanup, @object
	.size	ap_hack_apr_brigade_cleanup, 8
ap_hack_apr_brigade_cleanup:
	.quad	apr_brigade_cleanup
	.globl	ap_hack_apr_brigade_split_ex
	.align 8
	.type	ap_hack_apr_brigade_split_ex, @object
	.size	ap_hack_apr_brigade_split_ex, 8
ap_hack_apr_brigade_split_ex:
	.quad	apr_brigade_split_ex
	.globl	ap_hack_apr_brigade_split
	.align 8
	.type	ap_hack_apr_brigade_split, @object
	.size	ap_hack_apr_brigade_split, 8
ap_hack_apr_brigade_split:
	.quad	apr_brigade_split
	.globl	ap_hack_apr_brigade_partition
	.align 8
	.type	ap_hack_apr_brigade_partition, @object
	.size	ap_hack_apr_brigade_partition, 8
ap_hack_apr_brigade_partition:
	.quad	apr_brigade_partition
	.globl	ap_hack_apr_brigade_length
	.align 8
	.type	ap_hack_apr_brigade_length, @object
	.size	ap_hack_apr_brigade_length, 8
ap_hack_apr_brigade_length:
	.quad	apr_brigade_length
	.globl	ap_hack_apr_brigade_flatten
	.align 8
	.type	ap_hack_apr_brigade_flatten, @object
	.size	ap_hack_apr_brigade_flatten, 8
ap_hack_apr_brigade_flatten:
	.quad	apr_brigade_flatten
	.globl	ap_hack_apr_brigade_pflatten
	.align 8
	.type	ap_hack_apr_brigade_pflatten, @object
	.size	ap_hack_apr_brigade_pflatten, 8
ap_hack_apr_brigade_pflatten:
	.quad	apr_brigade_pflatten
	.globl	ap_hack_apr_brigade_split_line
	.align 8
	.type	ap_hack_apr_brigade_split_line, @object
	.size	ap_hack_apr_brigade_split_line, 8
ap_hack_apr_brigade_split_line:
	.quad	apr_brigade_split_line
	.globl	ap_hack_apr_brigade_to_iovec
	.align 8
	.type	ap_hack_apr_brigade_to_iovec, @object
	.size	ap_hack_apr_brigade_to_iovec, 8
ap_hack_apr_brigade_to_iovec:
	.quad	apr_brigade_to_iovec
	.globl	ap_hack_apr_brigade_vputstrs
	.align 8
	.type	ap_hack_apr_brigade_vputstrs, @object
	.size	ap_hack_apr_brigade_vputstrs, 8
ap_hack_apr_brigade_vputstrs:
	.quad	apr_brigade_vputstrs
	.globl	ap_hack_apr_brigade_write
	.align 8
	.type	ap_hack_apr_brigade_write, @object
	.size	ap_hack_apr_brigade_write, 8
ap_hack_apr_brigade_write:
	.quad	apr_brigade_write
	.globl	ap_hack_apr_brigade_writev
	.align 8
	.type	ap_hack_apr_brigade_writev, @object
	.size	ap_hack_apr_brigade_writev, 8
ap_hack_apr_brigade_writev:
	.quad	apr_brigade_writev
	.globl	ap_hack_apr_brigade_puts
	.align 8
	.type	ap_hack_apr_brigade_puts, @object
	.size	ap_hack_apr_brigade_puts, 8
ap_hack_apr_brigade_puts:
	.quad	apr_brigade_puts
	.globl	ap_hack_apr_brigade_putc
	.align 8
	.type	ap_hack_apr_brigade_putc, @object
	.size	ap_hack_apr_brigade_putc, 8
ap_hack_apr_brigade_putc:
	.quad	apr_brigade_putc
	.globl	ap_hack_apr_brigade_putstrs
	.align 8
	.type	ap_hack_apr_brigade_putstrs, @object
	.size	ap_hack_apr_brigade_putstrs, 8
ap_hack_apr_brigade_putstrs:
	.quad	apr_brigade_putstrs
	.globl	ap_hack_apr_brigade_printf
	.align 8
	.type	ap_hack_apr_brigade_printf, @object
	.size	ap_hack_apr_brigade_printf, 8
ap_hack_apr_brigade_printf:
	.quad	apr_brigade_printf
	.globl	ap_hack_apr_brigade_vprintf
	.align 8
	.type	ap_hack_apr_brigade_vprintf, @object
	.size	ap_hack_apr_brigade_vprintf, 8
ap_hack_apr_brigade_vprintf:
	.quad	apr_brigade_vprintf
	.globl	ap_hack_apr_brigade_insert_file
	.align 8
	.type	ap_hack_apr_brigade_insert_file, @object
	.size	ap_hack_apr_brigade_insert_file, 8
ap_hack_apr_brigade_insert_file:
	.quad	apr_brigade_insert_file
	.globl	ap_hack_apr_bucket_alloc_create
	.align 8
	.type	ap_hack_apr_bucket_alloc_create, @object
	.size	ap_hack_apr_bucket_alloc_create, 8
ap_hack_apr_bucket_alloc_create:
	.quad	apr_bucket_alloc_create
	.globl	ap_hack_apr_bucket_alloc_create_ex
	.align 8
	.type	ap_hack_apr_bucket_alloc_create_ex, @object
	.size	ap_hack_apr_bucket_alloc_create_ex, 8
ap_hack_apr_bucket_alloc_create_ex:
	.quad	apr_bucket_alloc_create_ex
	.globl	ap_hack_apr_bucket_alloc_destroy
	.align 8
	.type	ap_hack_apr_bucket_alloc_destroy, @object
	.size	ap_hack_apr_bucket_alloc_destroy, 8
ap_hack_apr_bucket_alloc_destroy:
	.quad	apr_bucket_alloc_destroy
	.globl	ap_hack_apr_bucket_alloc
	.align 8
	.type	ap_hack_apr_bucket_alloc, @object
	.size	ap_hack_apr_bucket_alloc, 8
ap_hack_apr_bucket_alloc:
	.quad	apr_bucket_alloc
	.globl	ap_hack_apr_bucket_free
	.align 8
	.type	ap_hack_apr_bucket_free, @object
	.size	ap_hack_apr_bucket_free, 8
ap_hack_apr_bucket_free:
	.quad	apr_bucket_free
	.globl	ap_hack_apr_bucket_setaside_noop
	.align 8
	.type	ap_hack_apr_bucket_setaside_noop, @object
	.size	ap_hack_apr_bucket_setaside_noop, 8
ap_hack_apr_bucket_setaside_noop:
	.quad	apr_bucket_setaside_noop
	.globl	ap_hack_apr_bucket_setaside_notimpl
	.align 8
	.type	ap_hack_apr_bucket_setaside_notimpl, @object
	.size	ap_hack_apr_bucket_setaside_notimpl, 8
ap_hack_apr_bucket_setaside_notimpl:
	.quad	apr_bucket_setaside_notimpl
	.globl	ap_hack_apr_bucket_split_notimpl
	.align 8
	.type	ap_hack_apr_bucket_split_notimpl, @object
	.size	ap_hack_apr_bucket_split_notimpl, 8
ap_hack_apr_bucket_split_notimpl:
	.quad	apr_bucket_split_notimpl
	.globl	ap_hack_apr_bucket_copy_notimpl
	.align 8
	.type	ap_hack_apr_bucket_copy_notimpl, @object
	.size	ap_hack_apr_bucket_copy_notimpl, 8
ap_hack_apr_bucket_copy_notimpl:
	.quad	apr_bucket_copy_notimpl
	.globl	ap_hack_apr_bucket_destroy_noop
	.align 8
	.type	ap_hack_apr_bucket_destroy_noop, @object
	.size	ap_hack_apr_bucket_destroy_noop, 8
ap_hack_apr_bucket_destroy_noop:
	.quad	apr_bucket_destroy_noop
	.globl	ap_hack_apr_bucket_simple_split
	.align 8
	.type	ap_hack_apr_bucket_simple_split, @object
	.size	ap_hack_apr_bucket_simple_split, 8
ap_hack_apr_bucket_simple_split:
	.quad	apr_bucket_simple_split
	.globl	ap_hack_apr_bucket_simple_copy
	.align 8
	.type	ap_hack_apr_bucket_simple_copy, @object
	.size	ap_hack_apr_bucket_simple_copy, 8
ap_hack_apr_bucket_simple_copy:
	.quad	apr_bucket_simple_copy
	.globl	ap_hack_apr_bucket_shared_make
	.align 8
	.type	ap_hack_apr_bucket_shared_make, @object
	.size	ap_hack_apr_bucket_shared_make, 8
ap_hack_apr_bucket_shared_make:
	.quad	apr_bucket_shared_make
	.globl	ap_hack_apr_bucket_shared_destroy
	.align 8
	.type	ap_hack_apr_bucket_shared_destroy, @object
	.size	ap_hack_apr_bucket_shared_destroy, 8
ap_hack_apr_bucket_shared_destroy:
	.quad	apr_bucket_shared_destroy
	.globl	ap_hack_apr_bucket_shared_split
	.align 8
	.type	ap_hack_apr_bucket_shared_split, @object
	.size	ap_hack_apr_bucket_shared_split, 8
ap_hack_apr_bucket_shared_split:
	.quad	apr_bucket_shared_split
	.globl	ap_hack_apr_bucket_shared_copy
	.align 8
	.type	ap_hack_apr_bucket_shared_copy, @object
	.size	ap_hack_apr_bucket_shared_copy, 8
ap_hack_apr_bucket_shared_copy:
	.quad	apr_bucket_shared_copy
	.globl	ap_hack_apr_bucket_eos_create
	.align 8
	.type	ap_hack_apr_bucket_eos_create, @object
	.size	ap_hack_apr_bucket_eos_create, 8
ap_hack_apr_bucket_eos_create:
	.quad	apr_bucket_eos_create
	.globl	ap_hack_apr_bucket_eos_make
	.align 8
	.type	ap_hack_apr_bucket_eos_make, @object
	.size	ap_hack_apr_bucket_eos_make, 8
ap_hack_apr_bucket_eos_make:
	.quad	apr_bucket_eos_make
	.globl	ap_hack_apr_bucket_flush_create
	.align 8
	.type	ap_hack_apr_bucket_flush_create, @object
	.size	ap_hack_apr_bucket_flush_create, 8
ap_hack_apr_bucket_flush_create:
	.quad	apr_bucket_flush_create
	.globl	ap_hack_apr_bucket_flush_make
	.align 8
	.type	ap_hack_apr_bucket_flush_make, @object
	.size	ap_hack_apr_bucket_flush_make, 8
ap_hack_apr_bucket_flush_make:
	.quad	apr_bucket_flush_make
	.globl	ap_hack_apr_bucket_immortal_create
	.align 8
	.type	ap_hack_apr_bucket_immortal_create, @object
	.size	ap_hack_apr_bucket_immortal_create, 8
ap_hack_apr_bucket_immortal_create:
	.quad	apr_bucket_immortal_create
	.globl	ap_hack_apr_bucket_immortal_make
	.align 8
	.type	ap_hack_apr_bucket_immortal_make, @object
	.size	ap_hack_apr_bucket_immortal_make, 8
ap_hack_apr_bucket_immortal_make:
	.quad	apr_bucket_immortal_make
	.globl	ap_hack_apr_bucket_transient_create
	.align 8
	.type	ap_hack_apr_bucket_transient_create, @object
	.size	ap_hack_apr_bucket_transient_create, 8
ap_hack_apr_bucket_transient_create:
	.quad	apr_bucket_transient_create
	.globl	ap_hack_apr_bucket_transient_make
	.align 8
	.type	ap_hack_apr_bucket_transient_make, @object
	.size	ap_hack_apr_bucket_transient_make, 8
ap_hack_apr_bucket_transient_make:
	.quad	apr_bucket_transient_make
	.globl	ap_hack_apr_bucket_heap_create
	.align 8
	.type	ap_hack_apr_bucket_heap_create, @object
	.size	ap_hack_apr_bucket_heap_create, 8
ap_hack_apr_bucket_heap_create:
	.quad	apr_bucket_heap_create
	.globl	ap_hack_apr_bucket_heap_make
	.align 8
	.type	ap_hack_apr_bucket_heap_make, @object
	.size	ap_hack_apr_bucket_heap_make, 8
ap_hack_apr_bucket_heap_make:
	.quad	apr_bucket_heap_make
	.globl	ap_hack_apr_bucket_pool_create
	.align 8
	.type	ap_hack_apr_bucket_pool_create, @object
	.size	ap_hack_apr_bucket_pool_create, 8
ap_hack_apr_bucket_pool_create:
	.quad	apr_bucket_pool_create
	.globl	ap_hack_apr_bucket_pool_make
	.align 8
	.type	ap_hack_apr_bucket_pool_make, @object
	.size	ap_hack_apr_bucket_pool_make, 8
ap_hack_apr_bucket_pool_make:
	.quad	apr_bucket_pool_make
	.globl	ap_hack_apr_bucket_mmap_create
	.align 8
	.type	ap_hack_apr_bucket_mmap_create, @object
	.size	ap_hack_apr_bucket_mmap_create, 8
ap_hack_apr_bucket_mmap_create:
	.quad	apr_bucket_mmap_create
	.globl	ap_hack_apr_bucket_mmap_make
	.align 8
	.type	ap_hack_apr_bucket_mmap_make, @object
	.size	ap_hack_apr_bucket_mmap_make, 8
ap_hack_apr_bucket_mmap_make:
	.quad	apr_bucket_mmap_make
	.globl	ap_hack_apr_bucket_socket_create
	.align 8
	.type	ap_hack_apr_bucket_socket_create, @object
	.size	ap_hack_apr_bucket_socket_create, 8
ap_hack_apr_bucket_socket_create:
	.quad	apr_bucket_socket_create
	.globl	ap_hack_apr_bucket_socket_make
	.align 8
	.type	ap_hack_apr_bucket_socket_make, @object
	.size	ap_hack_apr_bucket_socket_make, 8
ap_hack_apr_bucket_socket_make:
	.quad	apr_bucket_socket_make
	.globl	ap_hack_apr_bucket_pipe_create
	.align 8
	.type	ap_hack_apr_bucket_pipe_create, @object
	.size	ap_hack_apr_bucket_pipe_create, 8
ap_hack_apr_bucket_pipe_create:
	.quad	apr_bucket_pipe_create
	.globl	ap_hack_apr_bucket_pipe_make
	.align 8
	.type	ap_hack_apr_bucket_pipe_make, @object
	.size	ap_hack_apr_bucket_pipe_make, 8
ap_hack_apr_bucket_pipe_make:
	.quad	apr_bucket_pipe_make
	.globl	ap_hack_apr_bucket_file_create
	.align 8
	.type	ap_hack_apr_bucket_file_create, @object
	.size	ap_hack_apr_bucket_file_create, 8
ap_hack_apr_bucket_file_create:
	.quad	apr_bucket_file_create
	.globl	ap_hack_apr_bucket_file_make
	.align 8
	.type	ap_hack_apr_bucket_file_make, @object
	.size	ap_hack_apr_bucket_file_make, 8
ap_hack_apr_bucket_file_make:
	.quad	apr_bucket_file_make
	.globl	ap_hack_apr_bucket_file_enable_mmap
	.align 8
	.type	ap_hack_apr_bucket_file_enable_mmap, @object
	.size	ap_hack_apr_bucket_file_enable_mmap, 8
ap_hack_apr_bucket_file_enable_mmap:
	.quad	apr_bucket_file_enable_mmap
	.globl	ap_hack_apr_crypto_init
	.align 8
	.type	ap_hack_apr_crypto_init, @object
	.size	ap_hack_apr_crypto_init, 8
ap_hack_apr_crypto_init:
	.quad	apr_crypto_init
	.globl	ap_hack_apr_crypto_clear
	.align 8
	.type	ap_hack_apr_crypto_clear, @object
	.size	ap_hack_apr_crypto_clear, 8
ap_hack_apr_crypto_clear:
	.quad	apr_crypto_clear
	.globl	ap_hack_apr_crypto_get_driver
	.align 8
	.type	ap_hack_apr_crypto_get_driver, @object
	.size	ap_hack_apr_crypto_get_driver, 8
ap_hack_apr_crypto_get_driver:
	.quad	apr_crypto_get_driver
	.globl	ap_hack_apr_crypto_driver_name
	.align 8
	.type	ap_hack_apr_crypto_driver_name, @object
	.size	ap_hack_apr_crypto_driver_name, 8
ap_hack_apr_crypto_driver_name:
	.quad	apr_crypto_driver_name
	.globl	ap_hack_apr_crypto_error
	.align 8
	.type	ap_hack_apr_crypto_error, @object
	.size	ap_hack_apr_crypto_error, 8
ap_hack_apr_crypto_error:
	.quad	apr_crypto_error
	.globl	ap_hack_apr_crypto_make
	.align 8
	.type	ap_hack_apr_crypto_make, @object
	.size	ap_hack_apr_crypto_make, 8
ap_hack_apr_crypto_make:
	.quad	apr_crypto_make
	.globl	ap_hack_apr_crypto_get_block_key_types
	.align 8
	.type	ap_hack_apr_crypto_get_block_key_types, @object
	.size	ap_hack_apr_crypto_get_block_key_types, 8
ap_hack_apr_crypto_get_block_key_types:
	.quad	apr_crypto_get_block_key_types
	.globl	ap_hack_apr_crypto_get_block_key_modes
	.align 8
	.type	ap_hack_apr_crypto_get_block_key_modes, @object
	.size	ap_hack_apr_crypto_get_block_key_modes, 8
ap_hack_apr_crypto_get_block_key_modes:
	.quad	apr_crypto_get_block_key_modes
	.globl	ap_hack_apr_crypto_passphrase
	.align 8
	.type	ap_hack_apr_crypto_passphrase, @object
	.size	ap_hack_apr_crypto_passphrase, 8
ap_hack_apr_crypto_passphrase:
	.quad	apr_crypto_passphrase
	.globl	ap_hack_apr_crypto_block_encrypt_init
	.align 8
	.type	ap_hack_apr_crypto_block_encrypt_init, @object
	.size	ap_hack_apr_crypto_block_encrypt_init, 8
ap_hack_apr_crypto_block_encrypt_init:
	.quad	apr_crypto_block_encrypt_init
	.globl	ap_hack_apr_crypto_block_encrypt
	.align 8
	.type	ap_hack_apr_crypto_block_encrypt, @object
	.size	ap_hack_apr_crypto_block_encrypt, 8
ap_hack_apr_crypto_block_encrypt:
	.quad	apr_crypto_block_encrypt
	.globl	ap_hack_apr_crypto_block_encrypt_finish
	.align 8
	.type	ap_hack_apr_crypto_block_encrypt_finish, @object
	.size	ap_hack_apr_crypto_block_encrypt_finish, 8
ap_hack_apr_crypto_block_encrypt_finish:
	.quad	apr_crypto_block_encrypt_finish
	.globl	ap_hack_apr_crypto_block_decrypt_init
	.align 8
	.type	ap_hack_apr_crypto_block_decrypt_init, @object
	.size	ap_hack_apr_crypto_block_decrypt_init, 8
ap_hack_apr_crypto_block_decrypt_init:
	.quad	apr_crypto_block_decrypt_init
	.globl	ap_hack_apr_crypto_block_decrypt
	.align 8
	.type	ap_hack_apr_crypto_block_decrypt, @object
	.size	ap_hack_apr_crypto_block_decrypt, 8
ap_hack_apr_crypto_block_decrypt:
	.quad	apr_crypto_block_decrypt
	.globl	ap_hack_apr_crypto_block_decrypt_finish
	.align 8
	.type	ap_hack_apr_crypto_block_decrypt_finish, @object
	.size	ap_hack_apr_crypto_block_decrypt_finish, 8
ap_hack_apr_crypto_block_decrypt_finish:
	.quad	apr_crypto_block_decrypt_finish
	.globl	ap_hack_apr_crypto_block_cleanup
	.align 8
	.type	ap_hack_apr_crypto_block_cleanup, @object
	.size	ap_hack_apr_crypto_block_cleanup, 8
ap_hack_apr_crypto_block_cleanup:
	.quad	apr_crypto_block_cleanup
	.globl	ap_hack_apr_crypto_cleanup
	.align 8
	.type	ap_hack_apr_crypto_cleanup, @object
	.size	ap_hack_apr_crypto_cleanup, 8
ap_hack_apr_crypto_cleanup:
	.quad	apr_crypto_cleanup
	.globl	ap_hack_apr_crypto_shutdown
	.align 8
	.type	ap_hack_apr_crypto_shutdown, @object
	.size	ap_hack_apr_crypto_shutdown, 8
ap_hack_apr_crypto_shutdown:
	.quad	apr_crypto_shutdown
	.globl	ap_hack_apr_date_checkmask
	.align 8
	.type	ap_hack_apr_date_checkmask, @object
	.size	ap_hack_apr_date_checkmask, 8
ap_hack_apr_date_checkmask:
	.quad	apr_date_checkmask
	.globl	ap_hack_apr_date_parse_http
	.align 8
	.type	ap_hack_apr_date_parse_http, @object
	.size	ap_hack_apr_date_parse_http, 8
ap_hack_apr_date_parse_http:
	.quad	apr_date_parse_http
	.globl	ap_hack_apr_date_parse_rfc
	.align 8
	.type	ap_hack_apr_date_parse_rfc, @object
	.size	ap_hack_apr_date_parse_rfc, 8
ap_hack_apr_date_parse_rfc:
	.quad	apr_date_parse_rfc
	.globl	ap_hack_apr_dbd_init
	.align 8
	.type	ap_hack_apr_dbd_init, @object
	.size	ap_hack_apr_dbd_init, 8
ap_hack_apr_dbd_init:
	.quad	apr_dbd_init
	.globl	ap_hack_apr_dbd_get_driver
	.align 8
	.type	ap_hack_apr_dbd_get_driver, @object
	.size	ap_hack_apr_dbd_get_driver, 8
ap_hack_apr_dbd_get_driver:
	.quad	apr_dbd_get_driver
	.globl	ap_hack_apr_dbd_open_ex
	.align 8
	.type	ap_hack_apr_dbd_open_ex, @object
	.size	ap_hack_apr_dbd_open_ex, 8
ap_hack_apr_dbd_open_ex:
	.quad	apr_dbd_open_ex
	.globl	ap_hack_apr_dbd_open
	.align 8
	.type	ap_hack_apr_dbd_open, @object
	.size	ap_hack_apr_dbd_open, 8
ap_hack_apr_dbd_open:
	.quad	apr_dbd_open
	.globl	ap_hack_apr_dbd_close
	.align 8
	.type	ap_hack_apr_dbd_close, @object
	.size	ap_hack_apr_dbd_close, 8
ap_hack_apr_dbd_close:
	.quad	apr_dbd_close
	.globl	ap_hack_apr_dbd_name
	.align 8
	.type	ap_hack_apr_dbd_name, @object
	.size	ap_hack_apr_dbd_name, 8
ap_hack_apr_dbd_name:
	.quad	apr_dbd_name
	.globl	ap_hack_apr_dbd_native_handle
	.align 8
	.type	ap_hack_apr_dbd_native_handle, @object
	.size	ap_hack_apr_dbd_native_handle, 8
ap_hack_apr_dbd_native_handle:
	.quad	apr_dbd_native_handle
	.globl	ap_hack_apr_dbd_check_conn
	.align 8
	.type	ap_hack_apr_dbd_check_conn, @object
	.size	ap_hack_apr_dbd_check_conn, 8
ap_hack_apr_dbd_check_conn:
	.quad	apr_dbd_check_conn
	.globl	ap_hack_apr_dbd_set_dbname
	.align 8
	.type	ap_hack_apr_dbd_set_dbname, @object
	.size	ap_hack_apr_dbd_set_dbname, 8
ap_hack_apr_dbd_set_dbname:
	.quad	apr_dbd_set_dbname
	.globl	ap_hack_apr_dbd_transaction_start
	.align 8
	.type	ap_hack_apr_dbd_transaction_start, @object
	.size	ap_hack_apr_dbd_transaction_start, 8
ap_hack_apr_dbd_transaction_start:
	.quad	apr_dbd_transaction_start
	.globl	ap_hack_apr_dbd_transaction_end
	.align 8
	.type	ap_hack_apr_dbd_transaction_end, @object
	.size	ap_hack_apr_dbd_transaction_end, 8
ap_hack_apr_dbd_transaction_end:
	.quad	apr_dbd_transaction_end
	.globl	ap_hack_apr_dbd_transaction_mode_get
	.align 8
	.type	ap_hack_apr_dbd_transaction_mode_get, @object
	.size	ap_hack_apr_dbd_transaction_mode_get, 8
ap_hack_apr_dbd_transaction_mode_get:
	.quad	apr_dbd_transaction_mode_get
	.globl	ap_hack_apr_dbd_transaction_mode_set
	.align 8
	.type	ap_hack_apr_dbd_transaction_mode_set, @object
	.size	ap_hack_apr_dbd_transaction_mode_set, 8
ap_hack_apr_dbd_transaction_mode_set:
	.quad	apr_dbd_transaction_mode_set
	.globl	ap_hack_apr_dbd_query
	.align 8
	.type	ap_hack_apr_dbd_query, @object
	.size	ap_hack_apr_dbd_query, 8
ap_hack_apr_dbd_query:
	.quad	apr_dbd_query
	.globl	ap_hack_apr_dbd_select
	.align 8
	.type	ap_hack_apr_dbd_select, @object
	.size	ap_hack_apr_dbd_select, 8
ap_hack_apr_dbd_select:
	.quad	apr_dbd_select
	.globl	ap_hack_apr_dbd_num_cols
	.align 8
	.type	ap_hack_apr_dbd_num_cols, @object
	.size	ap_hack_apr_dbd_num_cols, 8
ap_hack_apr_dbd_num_cols:
	.quad	apr_dbd_num_cols
	.globl	ap_hack_apr_dbd_num_tuples
	.align 8
	.type	ap_hack_apr_dbd_num_tuples, @object
	.size	ap_hack_apr_dbd_num_tuples, 8
ap_hack_apr_dbd_num_tuples:
	.quad	apr_dbd_num_tuples
	.globl	ap_hack_apr_dbd_get_row
	.align 8
	.type	ap_hack_apr_dbd_get_row, @object
	.size	ap_hack_apr_dbd_get_row, 8
ap_hack_apr_dbd_get_row:
	.quad	apr_dbd_get_row
	.globl	ap_hack_apr_dbd_get_entry
	.align 8
	.type	ap_hack_apr_dbd_get_entry, @object
	.size	ap_hack_apr_dbd_get_entry, 8
ap_hack_apr_dbd_get_entry:
	.quad	apr_dbd_get_entry
	.globl	ap_hack_apr_dbd_get_name
	.align 8
	.type	ap_hack_apr_dbd_get_name, @object
	.size	ap_hack_apr_dbd_get_name, 8
ap_hack_apr_dbd_get_name:
	.quad	apr_dbd_get_name
	.globl	ap_hack_apr_dbd_error
	.align 8
	.type	ap_hack_apr_dbd_error, @object
	.size	ap_hack_apr_dbd_error, 8
ap_hack_apr_dbd_error:
	.quad	apr_dbd_error
	.globl	ap_hack_apr_dbd_escape
	.align 8
	.type	ap_hack_apr_dbd_escape, @object
	.size	ap_hack_apr_dbd_escape, 8
ap_hack_apr_dbd_escape:
	.quad	apr_dbd_escape
	.globl	ap_hack_apr_dbd_prepare
	.align 8
	.type	ap_hack_apr_dbd_prepare, @object
	.size	ap_hack_apr_dbd_prepare, 8
ap_hack_apr_dbd_prepare:
	.quad	apr_dbd_prepare
	.globl	ap_hack_apr_dbd_pquery
	.align 8
	.type	ap_hack_apr_dbd_pquery, @object
	.size	ap_hack_apr_dbd_pquery, 8
ap_hack_apr_dbd_pquery:
	.quad	apr_dbd_pquery
	.globl	ap_hack_apr_dbd_pselect
	.align 8
	.type	ap_hack_apr_dbd_pselect, @object
	.size	ap_hack_apr_dbd_pselect, 8
ap_hack_apr_dbd_pselect:
	.quad	apr_dbd_pselect
	.globl	ap_hack_apr_dbd_pvquery
	.align 8
	.type	ap_hack_apr_dbd_pvquery, @object
	.size	ap_hack_apr_dbd_pvquery, 8
ap_hack_apr_dbd_pvquery:
	.quad	apr_dbd_pvquery
	.globl	ap_hack_apr_dbd_pvselect
	.align 8
	.type	ap_hack_apr_dbd_pvselect, @object
	.size	ap_hack_apr_dbd_pvselect, 8
ap_hack_apr_dbd_pvselect:
	.quad	apr_dbd_pvselect
	.globl	ap_hack_apr_dbd_pbquery
	.align 8
	.type	ap_hack_apr_dbd_pbquery, @object
	.size	ap_hack_apr_dbd_pbquery, 8
ap_hack_apr_dbd_pbquery:
	.quad	apr_dbd_pbquery
	.globl	ap_hack_apr_dbd_pbselect
	.align 8
	.type	ap_hack_apr_dbd_pbselect, @object
	.size	ap_hack_apr_dbd_pbselect, 8
ap_hack_apr_dbd_pbselect:
	.quad	apr_dbd_pbselect
	.globl	ap_hack_apr_dbd_pvbquery
	.align 8
	.type	ap_hack_apr_dbd_pvbquery, @object
	.size	ap_hack_apr_dbd_pvbquery, 8
ap_hack_apr_dbd_pvbquery:
	.quad	apr_dbd_pvbquery
	.globl	ap_hack_apr_dbd_pvbselect
	.align 8
	.type	ap_hack_apr_dbd_pvbselect, @object
	.size	ap_hack_apr_dbd_pvbselect, 8
ap_hack_apr_dbd_pvbselect:
	.quad	apr_dbd_pvbselect
	.globl	ap_hack_apr_dbd_datum_get
	.align 8
	.type	ap_hack_apr_dbd_datum_get, @object
	.size	ap_hack_apr_dbd_datum_get, 8
ap_hack_apr_dbd_datum_get:
	.quad	apr_dbd_datum_get
	.globl	ap_hack_apr_dbm_open_ex
	.align 8
	.type	ap_hack_apr_dbm_open_ex, @object
	.size	ap_hack_apr_dbm_open_ex, 8
ap_hack_apr_dbm_open_ex:
	.quad	apr_dbm_open_ex
	.globl	ap_hack_apr_dbm_open
	.align 8
	.type	ap_hack_apr_dbm_open, @object
	.size	ap_hack_apr_dbm_open, 8
ap_hack_apr_dbm_open:
	.quad	apr_dbm_open
	.globl	ap_hack_apr_dbm_close
	.align 8
	.type	ap_hack_apr_dbm_close, @object
	.size	ap_hack_apr_dbm_close, 8
ap_hack_apr_dbm_close:
	.quad	apr_dbm_close
	.globl	ap_hack_apr_dbm_fetch
	.align 8
	.type	ap_hack_apr_dbm_fetch, @object
	.size	ap_hack_apr_dbm_fetch, 8
ap_hack_apr_dbm_fetch:
	.quad	apr_dbm_fetch
	.globl	ap_hack_apr_dbm_store
	.align 8
	.type	ap_hack_apr_dbm_store, @object
	.size	ap_hack_apr_dbm_store, 8
ap_hack_apr_dbm_store:
	.quad	apr_dbm_store
	.globl	ap_hack_apr_dbm_delete
	.align 8
	.type	ap_hack_apr_dbm_delete, @object
	.size	ap_hack_apr_dbm_delete, 8
ap_hack_apr_dbm_delete:
	.quad	apr_dbm_delete
	.globl	ap_hack_apr_dbm_exists
	.align 8
	.type	ap_hack_apr_dbm_exists, @object
	.size	ap_hack_apr_dbm_exists, 8
ap_hack_apr_dbm_exists:
	.quad	apr_dbm_exists
	.globl	ap_hack_apr_dbm_firstkey
	.align 8
	.type	ap_hack_apr_dbm_firstkey, @object
	.size	ap_hack_apr_dbm_firstkey, 8
ap_hack_apr_dbm_firstkey:
	.quad	apr_dbm_firstkey
	.globl	ap_hack_apr_dbm_nextkey
	.align 8
	.type	ap_hack_apr_dbm_nextkey, @object
	.size	ap_hack_apr_dbm_nextkey, 8
ap_hack_apr_dbm_nextkey:
	.quad	apr_dbm_nextkey
	.globl	ap_hack_apr_dbm_freedatum
	.align 8
	.type	ap_hack_apr_dbm_freedatum, @object
	.size	ap_hack_apr_dbm_freedatum, 8
ap_hack_apr_dbm_freedatum:
	.quad	apr_dbm_freedatum
	.globl	ap_hack_apr_dbm_geterror
	.align 8
	.type	ap_hack_apr_dbm_geterror, @object
	.size	ap_hack_apr_dbm_geterror, 8
ap_hack_apr_dbm_geterror:
	.quad	apr_dbm_geterror
	.globl	ap_hack_apr_dbm_get_usednames_ex
	.align 8
	.type	ap_hack_apr_dbm_get_usednames_ex, @object
	.size	ap_hack_apr_dbm_get_usednames_ex, 8
ap_hack_apr_dbm_get_usednames_ex:
	.quad	apr_dbm_get_usednames_ex
	.globl	ap_hack_apr_dbm_get_usednames
	.align 8
	.type	ap_hack_apr_dbm_get_usednames, @object
	.size	ap_hack_apr_dbm_get_usednames, 8
ap_hack_apr_dbm_get_usednames:
	.quad	apr_dbm_get_usednames
	.globl	ap_hack_apr_dso_load
	.align 8
	.type	ap_hack_apr_dso_load, @object
	.size	ap_hack_apr_dso_load, 8
ap_hack_apr_dso_load:
	.quad	apr_dso_load
	.globl	ap_hack_apr_dso_unload
	.align 8
	.type	ap_hack_apr_dso_unload, @object
	.size	ap_hack_apr_dso_unload, 8
ap_hack_apr_dso_unload:
	.quad	apr_dso_unload
	.globl	ap_hack_apr_dso_sym
	.align 8
	.type	ap_hack_apr_dso_sym, @object
	.size	ap_hack_apr_dso_sym, 8
ap_hack_apr_dso_sym:
	.quad	apr_dso_sym
	.globl	ap_hack_apr_dso_error
	.align 8
	.type	ap_hack_apr_dso_error, @object
	.size	ap_hack_apr_dso_error, 8
ap_hack_apr_dso_error:
	.quad	apr_dso_error
	.globl	ap_hack_apr_env_get
	.align 8
	.type	ap_hack_apr_env_get, @object
	.size	ap_hack_apr_env_get, 8
ap_hack_apr_env_get:
	.quad	apr_env_get
	.globl	ap_hack_apr_env_set
	.align 8
	.type	ap_hack_apr_env_set, @object
	.size	ap_hack_apr_env_set, 8
ap_hack_apr_env_set:
	.quad	apr_env_set
	.globl	ap_hack_apr_env_delete
	.align 8
	.type	ap_hack_apr_env_delete, @object
	.size	ap_hack_apr_env_delete, 8
ap_hack_apr_env_delete:
	.quad	apr_env_delete
	.globl	ap_hack_apr_strerror
	.align 8
	.type	ap_hack_apr_strerror, @object
	.size	ap_hack_apr_strerror, 8
ap_hack_apr_strerror:
	.quad	apr_strerror
	.globl	ap_hack_apr_escape_shell
	.align 8
	.type	ap_hack_apr_escape_shell, @object
	.size	ap_hack_apr_escape_shell, 8
ap_hack_apr_escape_shell:
	.quad	apr_escape_shell
	.globl	ap_hack_apr_pescape_shell
	.align 8
	.type	ap_hack_apr_pescape_shell, @object
	.size	ap_hack_apr_pescape_shell, 8
ap_hack_apr_pescape_shell:
	.quad	apr_pescape_shell
	.globl	ap_hack_apr_unescape_url
	.align 8
	.type	ap_hack_apr_unescape_url, @object
	.size	ap_hack_apr_unescape_url, 8
ap_hack_apr_unescape_url:
	.quad	apr_unescape_url
	.globl	ap_hack_apr_punescape_url
	.align 8
	.type	ap_hack_apr_punescape_url, @object
	.size	ap_hack_apr_punescape_url, 8
ap_hack_apr_punescape_url:
	.quad	apr_punescape_url
	.globl	ap_hack_apr_escape_path_segment
	.align 8
	.type	ap_hack_apr_escape_path_segment, @object
	.size	ap_hack_apr_escape_path_segment, 8
ap_hack_apr_escape_path_segment:
	.quad	apr_escape_path_segment
	.globl	ap_hack_apr_pescape_path_segment
	.align 8
	.type	ap_hack_apr_pescape_path_segment, @object
	.size	ap_hack_apr_pescape_path_segment, 8
ap_hack_apr_pescape_path_segment:
	.quad	apr_pescape_path_segment
	.globl	ap_hack_apr_escape_path
	.align 8
	.type	ap_hack_apr_escape_path, @object
	.size	ap_hack_apr_escape_path, 8
ap_hack_apr_escape_path:
	.quad	apr_escape_path
	.globl	ap_hack_apr_pescape_path
	.align 8
	.type	ap_hack_apr_pescape_path, @object
	.size	ap_hack_apr_pescape_path, 8
ap_hack_apr_pescape_path:
	.quad	apr_pescape_path
	.globl	ap_hack_apr_escape_urlencoded
	.align 8
	.type	ap_hack_apr_escape_urlencoded, @object
	.size	ap_hack_apr_escape_urlencoded, 8
ap_hack_apr_escape_urlencoded:
	.quad	apr_escape_urlencoded
	.globl	ap_hack_apr_pescape_urlencoded
	.align 8
	.type	ap_hack_apr_pescape_urlencoded, @object
	.size	ap_hack_apr_pescape_urlencoded, 8
ap_hack_apr_pescape_urlencoded:
	.quad	apr_pescape_urlencoded
	.globl	ap_hack_apr_escape_entity
	.align 8
	.type	ap_hack_apr_escape_entity, @object
	.size	ap_hack_apr_escape_entity, 8
ap_hack_apr_escape_entity:
	.quad	apr_escape_entity
	.globl	ap_hack_apr_pescape_entity
	.align 8
	.type	ap_hack_apr_pescape_entity, @object
	.size	ap_hack_apr_pescape_entity, 8
ap_hack_apr_pescape_entity:
	.quad	apr_pescape_entity
	.globl	ap_hack_apr_unescape_entity
	.align 8
	.type	ap_hack_apr_unescape_entity, @object
	.size	ap_hack_apr_unescape_entity, 8
ap_hack_apr_unescape_entity:
	.quad	apr_unescape_entity
	.globl	ap_hack_apr_punescape_entity
	.align 8
	.type	ap_hack_apr_punescape_entity, @object
	.size	ap_hack_apr_punescape_entity, 8
ap_hack_apr_punescape_entity:
	.quad	apr_punescape_entity
	.globl	ap_hack_apr_escape_echo
	.align 8
	.type	ap_hack_apr_escape_echo, @object
	.size	ap_hack_apr_escape_echo, 8
ap_hack_apr_escape_echo:
	.quad	apr_escape_echo
	.globl	ap_hack_apr_pescape_echo
	.align 8
	.type	ap_hack_apr_pescape_echo, @object
	.size	ap_hack_apr_pescape_echo, 8
ap_hack_apr_pescape_echo:
	.quad	apr_pescape_echo
	.globl	ap_hack_apr_escape_hex
	.align 8
	.type	ap_hack_apr_escape_hex, @object
	.size	ap_hack_apr_escape_hex, 8
ap_hack_apr_escape_hex:
	.quad	apr_escape_hex
	.globl	ap_hack_apr_pescape_hex
	.align 8
	.type	ap_hack_apr_pescape_hex, @object
	.size	ap_hack_apr_pescape_hex, 8
ap_hack_apr_pescape_hex:
	.quad	apr_pescape_hex
	.globl	ap_hack_apr_unescape_hex
	.align 8
	.type	ap_hack_apr_unescape_hex, @object
	.size	ap_hack_apr_unescape_hex, 8
ap_hack_apr_unescape_hex:
	.quad	apr_unescape_hex
	.globl	ap_hack_apr_punescape_hex
	.align 8
	.type	ap_hack_apr_punescape_hex, @object
	.size	ap_hack_apr_punescape_hex, 8
ap_hack_apr_punescape_hex:
	.quad	apr_punescape_hex
	.globl	ap_hack_apr_stat
	.align 8
	.type	ap_hack_apr_stat, @object
	.size	ap_hack_apr_stat, 8
ap_hack_apr_stat:
	.quad	apr_stat
	.globl	ap_hack_apr_dir_open
	.align 8
	.type	ap_hack_apr_dir_open, @object
	.size	ap_hack_apr_dir_open, 8
ap_hack_apr_dir_open:
	.quad	apr_dir_open
	.globl	ap_hack_apr_dir_close
	.align 8
	.type	ap_hack_apr_dir_close, @object
	.size	ap_hack_apr_dir_close, 8
ap_hack_apr_dir_close:
	.quad	apr_dir_close
	.globl	ap_hack_apr_dir_read
	.align 8
	.type	ap_hack_apr_dir_read, @object
	.size	ap_hack_apr_dir_read, 8
ap_hack_apr_dir_read:
	.quad	apr_dir_read
	.globl	ap_hack_apr_dir_rewind
	.align 8
	.type	ap_hack_apr_dir_rewind, @object
	.size	ap_hack_apr_dir_rewind, 8
ap_hack_apr_dir_rewind:
	.quad	apr_dir_rewind
	.globl	ap_hack_apr_filepath_root
	.align 8
	.type	ap_hack_apr_filepath_root, @object
	.size	ap_hack_apr_filepath_root, 8
ap_hack_apr_filepath_root:
	.quad	apr_filepath_root
	.globl	ap_hack_apr_filepath_merge
	.align 8
	.type	ap_hack_apr_filepath_merge, @object
	.size	ap_hack_apr_filepath_merge, 8
ap_hack_apr_filepath_merge:
	.quad	apr_filepath_merge
	.globl	ap_hack_apr_filepath_list_split
	.align 8
	.type	ap_hack_apr_filepath_list_split, @object
	.size	ap_hack_apr_filepath_list_split, 8
ap_hack_apr_filepath_list_split:
	.quad	apr_filepath_list_split
	.globl	ap_hack_apr_filepath_list_merge
	.align 8
	.type	ap_hack_apr_filepath_list_merge, @object
	.size	ap_hack_apr_filepath_list_merge, 8
ap_hack_apr_filepath_list_merge:
	.quad	apr_filepath_list_merge
	.globl	ap_hack_apr_filepath_get
	.align 8
	.type	ap_hack_apr_filepath_get, @object
	.size	ap_hack_apr_filepath_get, 8
ap_hack_apr_filepath_get:
	.quad	apr_filepath_get
	.globl	ap_hack_apr_filepath_set
	.align 8
	.type	ap_hack_apr_filepath_set, @object
	.size	ap_hack_apr_filepath_set, 8
ap_hack_apr_filepath_set:
	.quad	apr_filepath_set
	.globl	ap_hack_apr_filepath_encoding
	.align 8
	.type	ap_hack_apr_filepath_encoding, @object
	.size	ap_hack_apr_filepath_encoding, 8
ap_hack_apr_filepath_encoding:
	.quad	apr_filepath_encoding
	.globl	ap_hack_apr_file_open
	.align 8
	.type	ap_hack_apr_file_open, @object
	.size	ap_hack_apr_file_open, 8
ap_hack_apr_file_open:
	.quad	apr_file_open
	.globl	ap_hack_apr_file_close
	.align 8
	.type	ap_hack_apr_file_close, @object
	.size	ap_hack_apr_file_close, 8
ap_hack_apr_file_close:
	.quad	apr_file_close
	.globl	ap_hack_apr_file_remove
	.align 8
	.type	ap_hack_apr_file_remove, @object
	.size	ap_hack_apr_file_remove, 8
ap_hack_apr_file_remove:
	.quad	apr_file_remove
	.globl	ap_hack_apr_file_rename
	.align 8
	.type	ap_hack_apr_file_rename, @object
	.size	ap_hack_apr_file_rename, 8
ap_hack_apr_file_rename:
	.quad	apr_file_rename
	.globl	ap_hack_apr_file_link
	.align 8
	.type	ap_hack_apr_file_link, @object
	.size	ap_hack_apr_file_link, 8
ap_hack_apr_file_link:
	.quad	apr_file_link
	.globl	ap_hack_apr_file_copy
	.align 8
	.type	ap_hack_apr_file_copy, @object
	.size	ap_hack_apr_file_copy, 8
ap_hack_apr_file_copy:
	.quad	apr_file_copy
	.globl	ap_hack_apr_file_append
	.align 8
	.type	ap_hack_apr_file_append, @object
	.size	ap_hack_apr_file_append, 8
ap_hack_apr_file_append:
	.quad	apr_file_append
	.globl	ap_hack_apr_file_eof
	.align 8
	.type	ap_hack_apr_file_eof, @object
	.size	ap_hack_apr_file_eof, 8
ap_hack_apr_file_eof:
	.quad	apr_file_eof
	.globl	ap_hack_apr_file_open_stderr
	.align 8
	.type	ap_hack_apr_file_open_stderr, @object
	.size	ap_hack_apr_file_open_stderr, 8
ap_hack_apr_file_open_stderr:
	.quad	apr_file_open_stderr
	.globl	ap_hack_apr_file_open_stdout
	.align 8
	.type	ap_hack_apr_file_open_stdout, @object
	.size	ap_hack_apr_file_open_stdout, 8
ap_hack_apr_file_open_stdout:
	.quad	apr_file_open_stdout
	.globl	ap_hack_apr_file_open_stdin
	.align 8
	.type	ap_hack_apr_file_open_stdin, @object
	.size	ap_hack_apr_file_open_stdin, 8
ap_hack_apr_file_open_stdin:
	.quad	apr_file_open_stdin
	.globl	ap_hack_apr_file_open_flags_stderr
	.align 8
	.type	ap_hack_apr_file_open_flags_stderr, @object
	.size	ap_hack_apr_file_open_flags_stderr, 8
ap_hack_apr_file_open_flags_stderr:
	.quad	apr_file_open_flags_stderr
	.globl	ap_hack_apr_file_open_flags_stdout
	.align 8
	.type	ap_hack_apr_file_open_flags_stdout, @object
	.size	ap_hack_apr_file_open_flags_stdout, 8
ap_hack_apr_file_open_flags_stdout:
	.quad	apr_file_open_flags_stdout
	.globl	ap_hack_apr_file_open_flags_stdin
	.align 8
	.type	ap_hack_apr_file_open_flags_stdin, @object
	.size	ap_hack_apr_file_open_flags_stdin, 8
ap_hack_apr_file_open_flags_stdin:
	.quad	apr_file_open_flags_stdin
	.globl	ap_hack_apr_file_read
	.align 8
	.type	ap_hack_apr_file_read, @object
	.size	ap_hack_apr_file_read, 8
ap_hack_apr_file_read:
	.quad	apr_file_read
	.globl	ap_hack_apr_file_write
	.align 8
	.type	ap_hack_apr_file_write, @object
	.size	ap_hack_apr_file_write, 8
ap_hack_apr_file_write:
	.quad	apr_file_write
	.globl	ap_hack_apr_file_writev
	.align 8
	.type	ap_hack_apr_file_writev, @object
	.size	ap_hack_apr_file_writev, 8
ap_hack_apr_file_writev:
	.quad	apr_file_writev
	.globl	ap_hack_apr_file_read_full
	.align 8
	.type	ap_hack_apr_file_read_full, @object
	.size	ap_hack_apr_file_read_full, 8
ap_hack_apr_file_read_full:
	.quad	apr_file_read_full
	.globl	ap_hack_apr_file_write_full
	.align 8
	.type	ap_hack_apr_file_write_full, @object
	.size	ap_hack_apr_file_write_full, 8
ap_hack_apr_file_write_full:
	.quad	apr_file_write_full
	.globl	ap_hack_apr_file_writev_full
	.align 8
	.type	ap_hack_apr_file_writev_full, @object
	.size	ap_hack_apr_file_writev_full, 8
ap_hack_apr_file_writev_full:
	.quad	apr_file_writev_full
	.globl	ap_hack_apr_file_putc
	.align 8
	.type	ap_hack_apr_file_putc, @object
	.size	ap_hack_apr_file_putc, 8
ap_hack_apr_file_putc:
	.quad	apr_file_putc
	.globl	ap_hack_apr_file_getc
	.align 8
	.type	ap_hack_apr_file_getc, @object
	.size	ap_hack_apr_file_getc, 8
ap_hack_apr_file_getc:
	.quad	apr_file_getc
	.globl	ap_hack_apr_file_ungetc
	.align 8
	.type	ap_hack_apr_file_ungetc, @object
	.size	ap_hack_apr_file_ungetc, 8
ap_hack_apr_file_ungetc:
	.quad	apr_file_ungetc
	.globl	ap_hack_apr_file_gets
	.align 8
	.type	ap_hack_apr_file_gets, @object
	.size	ap_hack_apr_file_gets, 8
ap_hack_apr_file_gets:
	.quad	apr_file_gets
	.globl	ap_hack_apr_file_puts
	.align 8
	.type	ap_hack_apr_file_puts, @object
	.size	ap_hack_apr_file_puts, 8
ap_hack_apr_file_puts:
	.quad	apr_file_puts
	.globl	ap_hack_apr_file_flush
	.align 8
	.type	ap_hack_apr_file_flush, @object
	.size	ap_hack_apr_file_flush, 8
ap_hack_apr_file_flush:
	.quad	apr_file_flush
	.globl	ap_hack_apr_file_sync
	.align 8
	.type	ap_hack_apr_file_sync, @object
	.size	ap_hack_apr_file_sync, 8
ap_hack_apr_file_sync:
	.quad	apr_file_sync
	.globl	ap_hack_apr_file_datasync
	.align 8
	.type	ap_hack_apr_file_datasync, @object
	.size	ap_hack_apr_file_datasync, 8
ap_hack_apr_file_datasync:
	.quad	apr_file_datasync
	.globl	ap_hack_apr_file_dup
	.align 8
	.type	ap_hack_apr_file_dup, @object
	.size	ap_hack_apr_file_dup, 8
ap_hack_apr_file_dup:
	.quad	apr_file_dup
	.globl	ap_hack_apr_file_dup2
	.align 8
	.type	ap_hack_apr_file_dup2, @object
	.size	ap_hack_apr_file_dup2, 8
ap_hack_apr_file_dup2:
	.quad	apr_file_dup2
	.globl	ap_hack_apr_file_setaside
	.align 8
	.type	ap_hack_apr_file_setaside, @object
	.size	ap_hack_apr_file_setaside, 8
ap_hack_apr_file_setaside:
	.quad	apr_file_setaside
	.globl	ap_hack_apr_file_buffer_set
	.align 8
	.type	ap_hack_apr_file_buffer_set, @object
	.size	ap_hack_apr_file_buffer_set, 8
ap_hack_apr_file_buffer_set:
	.quad	apr_file_buffer_set
	.globl	ap_hack_apr_file_buffer_size_get
	.align 8
	.type	ap_hack_apr_file_buffer_size_get, @object
	.size	ap_hack_apr_file_buffer_size_get, 8
ap_hack_apr_file_buffer_size_get:
	.quad	apr_file_buffer_size_get
	.globl	ap_hack_apr_file_seek
	.align 8
	.type	ap_hack_apr_file_seek, @object
	.size	ap_hack_apr_file_seek, 8
ap_hack_apr_file_seek:
	.quad	apr_file_seek
	.globl	ap_hack_apr_file_pipe_create
	.align 8
	.type	ap_hack_apr_file_pipe_create, @object
	.size	ap_hack_apr_file_pipe_create, 8
ap_hack_apr_file_pipe_create:
	.quad	apr_file_pipe_create
	.globl	ap_hack_apr_file_pipe_create_ex
	.align 8
	.type	ap_hack_apr_file_pipe_create_ex, @object
	.size	ap_hack_apr_file_pipe_create_ex, 8
ap_hack_apr_file_pipe_create_ex:
	.quad	apr_file_pipe_create_ex
	.globl	ap_hack_apr_file_namedpipe_create
	.align 8
	.type	ap_hack_apr_file_namedpipe_create, @object
	.size	ap_hack_apr_file_namedpipe_create, 8
ap_hack_apr_file_namedpipe_create:
	.quad	apr_file_namedpipe_create
	.globl	ap_hack_apr_file_pipe_timeout_get
	.align 8
	.type	ap_hack_apr_file_pipe_timeout_get, @object
	.size	ap_hack_apr_file_pipe_timeout_get, 8
ap_hack_apr_file_pipe_timeout_get:
	.quad	apr_file_pipe_timeout_get
	.globl	ap_hack_apr_file_pipe_timeout_set
	.align 8
	.type	ap_hack_apr_file_pipe_timeout_set, @object
	.size	ap_hack_apr_file_pipe_timeout_set, 8
ap_hack_apr_file_pipe_timeout_set:
	.quad	apr_file_pipe_timeout_set
	.globl	ap_hack_apr_file_lock
	.align 8
	.type	ap_hack_apr_file_lock, @object
	.size	ap_hack_apr_file_lock, 8
ap_hack_apr_file_lock:
	.quad	apr_file_lock
	.globl	ap_hack_apr_file_unlock
	.align 8
	.type	ap_hack_apr_file_unlock, @object
	.size	ap_hack_apr_file_unlock, 8
ap_hack_apr_file_unlock:
	.quad	apr_file_unlock
	.globl	ap_hack_apr_file_name_get
	.align 8
	.type	ap_hack_apr_file_name_get, @object
	.size	ap_hack_apr_file_name_get, 8
ap_hack_apr_file_name_get:
	.quad	apr_file_name_get
	.globl	ap_hack_apr_file_data_get
	.align 8
	.type	ap_hack_apr_file_data_get, @object
	.size	ap_hack_apr_file_data_get, 8
ap_hack_apr_file_data_get:
	.quad	apr_file_data_get
	.globl	ap_hack_apr_file_data_set
	.align 8
	.type	ap_hack_apr_file_data_set, @object
	.size	ap_hack_apr_file_data_set, 8
ap_hack_apr_file_data_set:
	.quad	apr_file_data_set
	.globl	ap_hack_apr_file_printf
	.align 8
	.type	ap_hack_apr_file_printf, @object
	.size	ap_hack_apr_file_printf, 8
ap_hack_apr_file_printf:
	.quad	apr_file_printf
	.globl	ap_hack_apr_file_perms_set
	.align 8
	.type	ap_hack_apr_file_perms_set, @object
	.size	ap_hack_apr_file_perms_set, 8
ap_hack_apr_file_perms_set:
	.quad	apr_file_perms_set
	.globl	ap_hack_apr_file_attrs_set
	.align 8
	.type	ap_hack_apr_file_attrs_set, @object
	.size	ap_hack_apr_file_attrs_set, 8
ap_hack_apr_file_attrs_set:
	.quad	apr_file_attrs_set
	.globl	ap_hack_apr_file_mtime_set
	.align 8
	.type	ap_hack_apr_file_mtime_set, @object
	.size	ap_hack_apr_file_mtime_set, 8
ap_hack_apr_file_mtime_set:
	.quad	apr_file_mtime_set
	.globl	ap_hack_apr_dir_make
	.align 8
	.type	ap_hack_apr_dir_make, @object
	.size	ap_hack_apr_dir_make, 8
ap_hack_apr_dir_make:
	.quad	apr_dir_make
	.globl	ap_hack_apr_dir_make_recursive
	.align 8
	.type	ap_hack_apr_dir_make_recursive, @object
	.size	ap_hack_apr_dir_make_recursive, 8
ap_hack_apr_dir_make_recursive:
	.quad	apr_dir_make_recursive
	.globl	ap_hack_apr_dir_remove
	.align 8
	.type	ap_hack_apr_dir_remove, @object
	.size	ap_hack_apr_dir_remove, 8
ap_hack_apr_dir_remove:
	.quad	apr_dir_remove
	.globl	ap_hack_apr_file_info_get
	.align 8
	.type	ap_hack_apr_file_info_get, @object
	.size	ap_hack_apr_file_info_get, 8
ap_hack_apr_file_info_get:
	.quad	apr_file_info_get
	.globl	ap_hack_apr_file_trunc
	.align 8
	.type	ap_hack_apr_file_trunc, @object
	.size	ap_hack_apr_file_trunc, 8
ap_hack_apr_file_trunc:
	.quad	apr_file_trunc
	.globl	ap_hack_apr_file_flags_get
	.align 8
	.type	ap_hack_apr_file_flags_get, @object
	.size	ap_hack_apr_file_flags_get, 8
ap_hack_apr_file_flags_get:
	.quad	apr_file_flags_get
	.globl	ap_hack_apr_file_pool_get
	.align 8
	.type	ap_hack_apr_file_pool_get, @object
	.size	ap_hack_apr_file_pool_get, 8
ap_hack_apr_file_pool_get:
	.quad	apr_file_pool_get
	.globl	ap_hack_apr_file_inherit_set
	.align 8
	.type	ap_hack_apr_file_inherit_set, @object
	.size	ap_hack_apr_file_inherit_set, 8
ap_hack_apr_file_inherit_set:
	.quad	apr_file_inherit_set
	.globl	ap_hack_apr_file_inherit_unset
	.align 8
	.type	ap_hack_apr_file_inherit_unset, @object
	.size	ap_hack_apr_file_inherit_unset, 8
ap_hack_apr_file_inherit_unset:
	.quad	apr_file_inherit_unset
	.globl	ap_hack_apr_file_mktemp
	.align 8
	.type	ap_hack_apr_file_mktemp, @object
	.size	ap_hack_apr_file_mktemp, 8
ap_hack_apr_file_mktemp:
	.quad	apr_file_mktemp
	.globl	ap_hack_apr_temp_dir_get
	.align 8
	.type	ap_hack_apr_temp_dir_get, @object
	.size	ap_hack_apr_temp_dir_get, 8
ap_hack_apr_temp_dir_get:
	.quad	apr_temp_dir_get
	.globl	ap_hack_apr_fnmatch
	.align 8
	.type	ap_hack_apr_fnmatch, @object
	.size	ap_hack_apr_fnmatch, 8
ap_hack_apr_fnmatch:
	.quad	apr_fnmatch
	.globl	ap_hack_apr_fnmatch_test
	.align 8
	.type	ap_hack_apr_fnmatch_test, @object
	.size	ap_hack_apr_fnmatch_test, 8
ap_hack_apr_fnmatch_test:
	.quad	apr_fnmatch_test
	.globl	ap_hack_apr_match_glob
	.align 8
	.type	ap_hack_apr_match_glob, @object
	.size	ap_hack_apr_match_glob, 8
ap_hack_apr_match_glob:
	.quad	apr_match_glob
	.globl	ap_hack_apr_initialize
	.align 8
	.type	ap_hack_apr_initialize, @object
	.size	ap_hack_apr_initialize, 8
ap_hack_apr_initialize:
	.quad	apr_initialize
	.globl	ap_hack_apr_app_initialize
	.align 8
	.type	ap_hack_apr_app_initialize, @object
	.size	ap_hack_apr_app_initialize, 8
ap_hack_apr_app_initialize:
	.quad	apr_app_initialize
	.globl	ap_hack_apr_terminate
	.align 8
	.type	ap_hack_apr_terminate, @object
	.size	ap_hack_apr_terminate, 8
ap_hack_apr_terminate:
	.quad	apr_terminate
	.globl	ap_hack_apr_terminate2
	.align 8
	.type	ap_hack_apr_terminate2, @object
	.size	ap_hack_apr_terminate2, 8
ap_hack_apr_terminate2:
	.quad	apr_terminate2
	.globl	ap_hack_apr_generate_random_bytes
	.align 8
	.type	ap_hack_apr_generate_random_bytes, @object
	.size	ap_hack_apr_generate_random_bytes, 8
ap_hack_apr_generate_random_bytes:
	.quad	apr_generate_random_bytes
	.globl	ap_hack_apr_getopt_init
	.align 8
	.type	ap_hack_apr_getopt_init, @object
	.size	ap_hack_apr_getopt_init, 8
ap_hack_apr_getopt_init:
	.quad	apr_getopt_init
	.globl	ap_hack_apr_getopt
	.align 8
	.type	ap_hack_apr_getopt, @object
	.size	ap_hack_apr_getopt, 8
ap_hack_apr_getopt:
	.quad	apr_getopt
	.globl	ap_hack_apr_getopt_long
	.align 8
	.type	ap_hack_apr_getopt_long, @object
	.size	ap_hack_apr_getopt_long, 8
ap_hack_apr_getopt_long:
	.quad	apr_getopt_long
	.globl	ap_hack_apr_global_mutex_create
	.align 8
	.type	ap_hack_apr_global_mutex_create, @object
	.size	ap_hack_apr_global_mutex_create, 8
ap_hack_apr_global_mutex_create:
	.quad	apr_global_mutex_create
	.globl	ap_hack_apr_global_mutex_child_init
	.align 8
	.type	ap_hack_apr_global_mutex_child_init, @object
	.size	ap_hack_apr_global_mutex_child_init, 8
ap_hack_apr_global_mutex_child_init:
	.quad	apr_global_mutex_child_init
	.globl	ap_hack_apr_global_mutex_lock
	.align 8
	.type	ap_hack_apr_global_mutex_lock, @object
	.size	ap_hack_apr_global_mutex_lock, 8
ap_hack_apr_global_mutex_lock:
	.quad	apr_global_mutex_lock
	.globl	ap_hack_apr_global_mutex_trylock
	.align 8
	.type	ap_hack_apr_global_mutex_trylock, @object
	.size	ap_hack_apr_global_mutex_trylock, 8
ap_hack_apr_global_mutex_trylock:
	.quad	apr_global_mutex_trylock
	.globl	ap_hack_apr_global_mutex_unlock
	.align 8
	.type	ap_hack_apr_global_mutex_unlock, @object
	.size	ap_hack_apr_global_mutex_unlock, 8
ap_hack_apr_global_mutex_unlock:
	.quad	apr_global_mutex_unlock
	.globl	ap_hack_apr_global_mutex_destroy
	.align 8
	.type	ap_hack_apr_global_mutex_destroy, @object
	.size	ap_hack_apr_global_mutex_destroy, 8
ap_hack_apr_global_mutex_destroy:
	.quad	apr_global_mutex_destroy
	.globl	ap_hack_apr_global_mutex_lockfile
	.align 8
	.type	ap_hack_apr_global_mutex_lockfile, @object
	.size	ap_hack_apr_global_mutex_lockfile, 8
ap_hack_apr_global_mutex_lockfile:
	.quad	apr_global_mutex_lockfile
	.globl	ap_hack_apr_global_mutex_name
	.align 8
	.type	ap_hack_apr_global_mutex_name, @object
	.size	ap_hack_apr_global_mutex_name, 8
ap_hack_apr_global_mutex_name:
	.quad	apr_global_mutex_name
	.globl	ap_hack_apr_global_mutex_pool_get
	.align 8
	.type	ap_hack_apr_global_mutex_pool_get, @object
	.size	ap_hack_apr_global_mutex_pool_get, 8
ap_hack_apr_global_mutex_pool_get:
	.quad	apr_global_mutex_pool_get
	.globl	ap_hack_apr_hashfunc_default
	.align 8
	.type	ap_hack_apr_hashfunc_default, @object
	.size	ap_hack_apr_hashfunc_default, 8
ap_hack_apr_hashfunc_default:
	.quad	apr_hashfunc_default
	.globl	ap_hack_apr_hash_make
	.align 8
	.type	ap_hack_apr_hash_make, @object
	.size	ap_hack_apr_hash_make, 8
ap_hack_apr_hash_make:
	.quad	apr_hash_make
	.globl	ap_hack_apr_hash_make_custom
	.align 8
	.type	ap_hack_apr_hash_make_custom, @object
	.size	ap_hack_apr_hash_make_custom, 8
ap_hack_apr_hash_make_custom:
	.quad	apr_hash_make_custom
	.globl	ap_hack_apr_hash_copy
	.align 8
	.type	ap_hack_apr_hash_copy, @object
	.size	ap_hack_apr_hash_copy, 8
ap_hack_apr_hash_copy:
	.quad	apr_hash_copy
	.globl	ap_hack_apr_hash_set
	.align 8
	.type	ap_hack_apr_hash_set, @object
	.size	ap_hack_apr_hash_set, 8
ap_hack_apr_hash_set:
	.quad	apr_hash_set
	.globl	ap_hack_apr_hash_get
	.align 8
	.type	ap_hack_apr_hash_get, @object
	.size	ap_hack_apr_hash_get, 8
ap_hack_apr_hash_get:
	.quad	apr_hash_get
	.globl	ap_hack_apr_hash_first
	.align 8
	.type	ap_hack_apr_hash_first, @object
	.size	ap_hack_apr_hash_first, 8
ap_hack_apr_hash_first:
	.quad	apr_hash_first
	.globl	ap_hack_apr_hash_next
	.align 8
	.type	ap_hack_apr_hash_next, @object
	.size	ap_hack_apr_hash_next, 8
ap_hack_apr_hash_next:
	.quad	apr_hash_next
	.globl	ap_hack_apr_hash_this
	.align 8
	.type	ap_hack_apr_hash_this, @object
	.size	ap_hack_apr_hash_this, 8
ap_hack_apr_hash_this:
	.quad	apr_hash_this
	.globl	ap_hack_apr_hash_this_key
	.align 8
	.type	ap_hack_apr_hash_this_key, @object
	.size	ap_hack_apr_hash_this_key, 8
ap_hack_apr_hash_this_key:
	.quad	apr_hash_this_key
	.globl	ap_hack_apr_hash_this_key_len
	.align 8
	.type	ap_hack_apr_hash_this_key_len, @object
	.size	ap_hack_apr_hash_this_key_len, 8
ap_hack_apr_hash_this_key_len:
	.quad	apr_hash_this_key_len
	.globl	ap_hack_apr_hash_this_val
	.align 8
	.type	ap_hack_apr_hash_this_val, @object
	.size	ap_hack_apr_hash_this_val, 8
ap_hack_apr_hash_this_val:
	.quad	apr_hash_this_val
	.globl	ap_hack_apr_hash_count
	.align 8
	.type	ap_hack_apr_hash_count, @object
	.size	ap_hack_apr_hash_count, 8
ap_hack_apr_hash_count:
	.quad	apr_hash_count
	.globl	ap_hack_apr_hash_clear
	.align 8
	.type	ap_hack_apr_hash_clear, @object
	.size	ap_hack_apr_hash_clear, 8
ap_hack_apr_hash_clear:
	.quad	apr_hash_clear
	.globl	ap_hack_apr_hash_overlay
	.align 8
	.type	ap_hack_apr_hash_overlay, @object
	.size	ap_hack_apr_hash_overlay, 8
ap_hack_apr_hash_overlay:
	.quad	apr_hash_overlay
	.globl	ap_hack_apr_hash_merge
	.align 8
	.type	ap_hack_apr_hash_merge, @object
	.size	ap_hack_apr_hash_merge, 8
ap_hack_apr_hash_merge:
	.quad	apr_hash_merge
	.globl	ap_hack_apr_hash_do
	.align 8
	.type	ap_hack_apr_hash_do, @object
	.size	ap_hack_apr_hash_do, 8
ap_hack_apr_hash_do:
	.quad	apr_hash_do
	.globl	ap_hack_apr_hash_pool_get
	.align 8
	.type	ap_hack_apr_hash_pool_get, @object
	.size	ap_hack_apr_hash_pool_get, 8
ap_hack_apr_hash_pool_get:
	.quad	apr_hash_pool_get
	.globl	ap_hack_apr_hook_sort_register
	.align 8
	.type	ap_hack_apr_hook_sort_register, @object
	.size	ap_hack_apr_hook_sort_register, 8
ap_hack_apr_hook_sort_register:
	.quad	apr_hook_sort_register
	.globl	ap_hack_apr_hook_sort_all
	.align 8
	.type	ap_hack_apr_hook_sort_all, @object
	.size	ap_hack_apr_hook_sort_all, 8
ap_hack_apr_hook_sort_all:
	.quad	apr_hook_sort_all
	.globl	ap_hack_apr_hook_debug_show
	.align 8
	.type	ap_hack_apr_hook_debug_show, @object
	.size	ap_hack_apr_hook_debug_show, 8
ap_hack_apr_hook_debug_show:
	.quad	apr_hook_debug_show
	.globl	ap_hack_apr_hook_deregister_all
	.align 8
	.type	ap_hack_apr_hook_deregister_all, @object
	.size	ap_hack_apr_hook_deregister_all, 8
ap_hack_apr_hook_deregister_all:
	.quad	apr_hook_deregister_all
	.globl	ap_hack_apr_ldap_ssl_init
	.align 8
	.type	ap_hack_apr_ldap_ssl_init, @object
	.size	ap_hack_apr_ldap_ssl_init, 8
ap_hack_apr_ldap_ssl_init:
	.quad	apr_ldap_ssl_init
	.globl	ap_hack_apr_ldap_ssl_deinit
	.align 8
	.type	ap_hack_apr_ldap_ssl_deinit, @object
	.size	ap_hack_apr_ldap_ssl_deinit, 8
ap_hack_apr_ldap_ssl_deinit:
	.quad	apr_ldap_ssl_deinit
	.globl	ap_hack_apr_ldap_init
	.align 8
	.type	ap_hack_apr_ldap_init, @object
	.size	ap_hack_apr_ldap_init, 8
ap_hack_apr_ldap_init:
	.quad	apr_ldap_init
	.globl	ap_hack_apr_ldap_info
	.align 8
	.type	ap_hack_apr_ldap_info, @object
	.size	ap_hack_apr_ldap_info, 8
ap_hack_apr_ldap_info:
	.quad	apr_ldap_info
	.globl	ap_hack_apr_ldap_get_option
	.align 8
	.type	ap_hack_apr_ldap_get_option, @object
	.size	ap_hack_apr_ldap_get_option, 8
ap_hack_apr_ldap_get_option:
	.quad	apr_ldap_get_option
	.globl	ap_hack_apr_ldap_set_option
	.align 8
	.type	ap_hack_apr_ldap_set_option, @object
	.size	ap_hack_apr_ldap_set_option, 8
ap_hack_apr_ldap_set_option:
	.quad	apr_ldap_set_option
	.globl	ap_hack_apr_ldap_rebind_init
	.align 8
	.type	ap_hack_apr_ldap_rebind_init, @object
	.size	ap_hack_apr_ldap_rebind_init, 8
ap_hack_apr_ldap_rebind_init:
	.quad	apr_ldap_rebind_init
	.globl	ap_hack_apr_ldap_rebind_add
	.align 8
	.type	ap_hack_apr_ldap_rebind_add, @object
	.size	ap_hack_apr_ldap_rebind_add, 8
ap_hack_apr_ldap_rebind_add:
	.quad	apr_ldap_rebind_add
	.globl	ap_hack_apr_ldap_rebind_remove
	.align 8
	.type	ap_hack_apr_ldap_rebind_remove, @object
	.size	ap_hack_apr_ldap_rebind_remove, 8
ap_hack_apr_ldap_rebind_remove:
	.quad	apr_ldap_rebind_remove
	.globl	ap_hack_apr_ldap_is_ldap_url
	.align 8
	.type	ap_hack_apr_ldap_is_ldap_url, @object
	.size	ap_hack_apr_ldap_is_ldap_url, 8
ap_hack_apr_ldap_is_ldap_url:
	.quad	apr_ldap_is_ldap_url
	.globl	ap_hack_apr_ldap_is_ldaps_url
	.align 8
	.type	ap_hack_apr_ldap_is_ldaps_url, @object
	.size	ap_hack_apr_ldap_is_ldaps_url, 8
ap_hack_apr_ldap_is_ldaps_url:
	.quad	apr_ldap_is_ldaps_url
	.globl	ap_hack_apr_ldap_is_ldapi_url
	.align 8
	.type	ap_hack_apr_ldap_is_ldapi_url, @object
	.size	ap_hack_apr_ldap_is_ldapi_url, 8
ap_hack_apr_ldap_is_ldapi_url:
	.quad	apr_ldap_is_ldapi_url
	.globl	ap_hack_apr_ldap_url_parse_ext
	.align 8
	.type	ap_hack_apr_ldap_url_parse_ext, @object
	.size	ap_hack_apr_ldap_url_parse_ext, 8
ap_hack_apr_ldap_url_parse_ext:
	.quad	apr_ldap_url_parse_ext
	.globl	ap_hack_apr_ldap_url_parse
	.align 8
	.type	ap_hack_apr_ldap_url_parse, @object
	.size	ap_hack_apr_ldap_url_parse, 8
ap_hack_apr_ldap_url_parse:
	.quad	apr_ldap_url_parse
	.globl	ap_hack_apr_filepath_name_get
	.align 8
	.type	ap_hack_apr_filepath_name_get, @object
	.size	ap_hack_apr_filepath_name_get, 8
ap_hack_apr_filepath_name_get:
	.quad	apr_filepath_name_get
	.globl	ap_hack_apr_vformatter
	.align 8
	.type	ap_hack_apr_vformatter, @object
	.size	ap_hack_apr_vformatter, 8
ap_hack_apr_vformatter:
	.quad	apr_vformatter
	.globl	ap_hack_apr_password_get
	.align 8
	.type	ap_hack_apr_password_get, @object
	.size	ap_hack_apr_password_get, 8
ap_hack_apr_password_get:
	.quad	apr_password_get
	.globl	ap_hack_apr_md4_init
	.align 8
	.type	ap_hack_apr_md4_init, @object
	.size	ap_hack_apr_md4_init, 8
ap_hack_apr_md4_init:
	.quad	apr_md4_init
	.globl	ap_hack_apr_md4_set_xlate
	.align 8
	.type	ap_hack_apr_md4_set_xlate, @object
	.size	ap_hack_apr_md4_set_xlate, 8
ap_hack_apr_md4_set_xlate:
	.quad	apr_md4_set_xlate
	.globl	ap_hack_apr_md4_update
	.align 8
	.type	ap_hack_apr_md4_update, @object
	.size	ap_hack_apr_md4_update, 8
ap_hack_apr_md4_update:
	.quad	apr_md4_update
	.globl	ap_hack_apr_md4_final
	.align 8
	.type	ap_hack_apr_md4_final, @object
	.size	ap_hack_apr_md4_final, 8
ap_hack_apr_md4_final:
	.quad	apr_md4_final
	.globl	ap_hack_apr_md4
	.align 8
	.type	ap_hack_apr_md4, @object
	.size	ap_hack_apr_md4, 8
ap_hack_apr_md4:
	.quad	apr_md4
	.globl	ap_hack_apr_md5_init
	.align 8
	.type	ap_hack_apr_md5_init, @object
	.size	ap_hack_apr_md5_init, 8
ap_hack_apr_md5_init:
	.quad	apr_md5_init
	.globl	ap_hack_apr_md5_set_xlate
	.align 8
	.type	ap_hack_apr_md5_set_xlate, @object
	.size	ap_hack_apr_md5_set_xlate, 8
ap_hack_apr_md5_set_xlate:
	.quad	apr_md5_set_xlate
	.globl	ap_hack_apr_md5_update
	.align 8
	.type	ap_hack_apr_md5_update, @object
	.size	ap_hack_apr_md5_update, 8
ap_hack_apr_md5_update:
	.quad	apr_md5_update
	.globl	ap_hack_apr_md5_final
	.align 8
	.type	ap_hack_apr_md5_final, @object
	.size	ap_hack_apr_md5_final, 8
ap_hack_apr_md5_final:
	.quad	apr_md5_final
	.globl	ap_hack_apr_md5
	.align 8
	.type	ap_hack_apr_md5, @object
	.size	ap_hack_apr_md5, 8
ap_hack_apr_md5:
	.quad	apr_md5
	.globl	ap_hack_apr_md5_encode
	.align 8
	.type	ap_hack_apr_md5_encode, @object
	.size	ap_hack_apr_md5_encode, 8
ap_hack_apr_md5_encode:
	.quad	apr_md5_encode
	.globl	ap_hack_apr_bcrypt_encode
	.align 8
	.type	ap_hack_apr_bcrypt_encode, @object
	.size	ap_hack_apr_bcrypt_encode, 8
ap_hack_apr_bcrypt_encode:
	.quad	apr_bcrypt_encode
	.globl	ap_hack_apr_password_validate
	.align 8
	.type	ap_hack_apr_password_validate, @object
	.size	ap_hack_apr_password_validate, 8
ap_hack_apr_password_validate:
	.quad	apr_password_validate
	.globl	ap_hack_apr_memcache_hash
	.align 8
	.type	ap_hack_apr_memcache_hash, @object
	.size	ap_hack_apr_memcache_hash, 8
ap_hack_apr_memcache_hash:
	.quad	apr_memcache_hash
	.globl	ap_hack_apr_memcache_hash_crc32
	.align 8
	.type	ap_hack_apr_memcache_hash_crc32, @object
	.size	ap_hack_apr_memcache_hash_crc32, 8
ap_hack_apr_memcache_hash_crc32:
	.quad	apr_memcache_hash_crc32
	.globl	ap_hack_apr_memcache_hash_default
	.align 8
	.type	ap_hack_apr_memcache_hash_default, @object
	.size	ap_hack_apr_memcache_hash_default, 8
ap_hack_apr_memcache_hash_default:
	.quad	apr_memcache_hash_default
	.globl	ap_hack_apr_memcache_find_server_hash
	.align 8
	.type	ap_hack_apr_memcache_find_server_hash, @object
	.size	ap_hack_apr_memcache_find_server_hash, 8
ap_hack_apr_memcache_find_server_hash:
	.quad	apr_memcache_find_server_hash
	.globl	ap_hack_apr_memcache_find_server_hash_default
	.align 8
	.type	ap_hack_apr_memcache_find_server_hash_default, @object
	.size	ap_hack_apr_memcache_find_server_hash_default, 8
ap_hack_apr_memcache_find_server_hash_default:
	.quad	apr_memcache_find_server_hash_default
	.globl	ap_hack_apr_memcache_add_server
	.align 8
	.type	ap_hack_apr_memcache_add_server, @object
	.size	ap_hack_apr_memcache_add_server, 8
ap_hack_apr_memcache_add_server:
	.quad	apr_memcache_add_server
	.globl	ap_hack_apr_memcache_find_server
	.align 8
	.type	ap_hack_apr_memcache_find_server, @object
	.size	ap_hack_apr_memcache_find_server, 8
ap_hack_apr_memcache_find_server:
	.quad	apr_memcache_find_server
	.globl	ap_hack_apr_memcache_enable_server
	.align 8
	.type	ap_hack_apr_memcache_enable_server, @object
	.size	ap_hack_apr_memcache_enable_server, 8
ap_hack_apr_memcache_enable_server:
	.quad	apr_memcache_enable_server
	.globl	ap_hack_apr_memcache_disable_server
	.align 8
	.type	ap_hack_apr_memcache_disable_server, @object
	.size	ap_hack_apr_memcache_disable_server, 8
ap_hack_apr_memcache_disable_server:
	.quad	apr_memcache_disable_server
	.globl	ap_hack_apr_memcache_server_create
	.align 8
	.type	ap_hack_apr_memcache_server_create, @object
	.size	ap_hack_apr_memcache_server_create, 8
ap_hack_apr_memcache_server_create:
	.quad	apr_memcache_server_create
	.globl	ap_hack_apr_memcache_create
	.align 8
	.type	ap_hack_apr_memcache_create, @object
	.size	ap_hack_apr_memcache_create, 8
ap_hack_apr_memcache_create:
	.quad	apr_memcache_create
	.globl	ap_hack_apr_memcache_getp
	.align 8
	.type	ap_hack_apr_memcache_getp, @object
	.size	ap_hack_apr_memcache_getp, 8
ap_hack_apr_memcache_getp:
	.quad	apr_memcache_getp
	.globl	ap_hack_apr_memcache_add_multget_key
	.align 8
	.type	ap_hack_apr_memcache_add_multget_key, @object
	.size	ap_hack_apr_memcache_add_multget_key, 8
ap_hack_apr_memcache_add_multget_key:
	.quad	apr_memcache_add_multget_key
	.globl	ap_hack_apr_memcache_multgetp
	.align 8
	.type	ap_hack_apr_memcache_multgetp, @object
	.size	ap_hack_apr_memcache_multgetp, 8
ap_hack_apr_memcache_multgetp:
	.quad	apr_memcache_multgetp
	.globl	ap_hack_apr_memcache_set
	.align 8
	.type	ap_hack_apr_memcache_set, @object
	.size	ap_hack_apr_memcache_set, 8
ap_hack_apr_memcache_set:
	.quad	apr_memcache_set
	.globl	ap_hack_apr_memcache_add
	.align 8
	.type	ap_hack_apr_memcache_add, @object
	.size	ap_hack_apr_memcache_add, 8
ap_hack_apr_memcache_add:
	.quad	apr_memcache_add
	.globl	ap_hack_apr_memcache_replace
	.align 8
	.type	ap_hack_apr_memcache_replace, @object
	.size	ap_hack_apr_memcache_replace, 8
ap_hack_apr_memcache_replace:
	.quad	apr_memcache_replace
	.globl	ap_hack_apr_memcache_delete
	.align 8
	.type	ap_hack_apr_memcache_delete, @object
	.size	ap_hack_apr_memcache_delete, 8
ap_hack_apr_memcache_delete:
	.quad	apr_memcache_delete
	.globl	ap_hack_apr_memcache_incr
	.align 8
	.type	ap_hack_apr_memcache_incr, @object
	.size	ap_hack_apr_memcache_incr, 8
ap_hack_apr_memcache_incr:
	.quad	apr_memcache_incr
	.globl	ap_hack_apr_memcache_decr
	.align 8
	.type	ap_hack_apr_memcache_decr, @object
	.size	ap_hack_apr_memcache_decr, 8
ap_hack_apr_memcache_decr:
	.quad	apr_memcache_decr
	.globl	ap_hack_apr_memcache_version
	.align 8
	.type	ap_hack_apr_memcache_version, @object
	.size	ap_hack_apr_memcache_version, 8
ap_hack_apr_memcache_version:
	.quad	apr_memcache_version
	.globl	ap_hack_apr_memcache_stats
	.align 8
	.type	ap_hack_apr_memcache_stats, @object
	.size	ap_hack_apr_memcache_stats, 8
ap_hack_apr_memcache_stats:
	.quad	apr_memcache_stats
	.globl	ap_hack_apr_mmap_create
	.align 8
	.type	ap_hack_apr_mmap_create, @object
	.size	ap_hack_apr_mmap_create, 8
ap_hack_apr_mmap_create:
	.quad	apr_mmap_create
	.globl	ap_hack_apr_mmap_dup
	.align 8
	.type	ap_hack_apr_mmap_dup, @object
	.size	ap_hack_apr_mmap_dup, 8
ap_hack_apr_mmap_dup:
	.quad	apr_mmap_dup
	.globl	ap_hack_apr_mmap_delete
	.align 8
	.type	ap_hack_apr_mmap_delete, @object
	.size	ap_hack_apr_mmap_delete, 8
ap_hack_apr_mmap_delete:
	.quad	apr_mmap_delete
	.globl	ap_hack_apr_mmap_offset
	.align 8
	.type	ap_hack_apr_mmap_offset, @object
	.size	ap_hack_apr_mmap_offset, 8
ap_hack_apr_mmap_offset:
	.quad	apr_mmap_offset
	.globl	ap_hack_apr_socket_create
	.align 8
	.type	ap_hack_apr_socket_create, @object
	.size	ap_hack_apr_socket_create, 8
ap_hack_apr_socket_create:
	.quad	apr_socket_create
	.globl	ap_hack_apr_socket_shutdown
	.align 8
	.type	ap_hack_apr_socket_shutdown, @object
	.size	ap_hack_apr_socket_shutdown, 8
ap_hack_apr_socket_shutdown:
	.quad	apr_socket_shutdown
	.globl	ap_hack_apr_socket_close
	.align 8
	.type	ap_hack_apr_socket_close, @object
	.size	ap_hack_apr_socket_close, 8
ap_hack_apr_socket_close:
	.quad	apr_socket_close
	.globl	ap_hack_apr_socket_bind
	.align 8
	.type	ap_hack_apr_socket_bind, @object
	.size	ap_hack_apr_socket_bind, 8
ap_hack_apr_socket_bind:
	.quad	apr_socket_bind
	.globl	ap_hack_apr_socket_listen
	.align 8
	.type	ap_hack_apr_socket_listen, @object
	.size	ap_hack_apr_socket_listen, 8
ap_hack_apr_socket_listen:
	.quad	apr_socket_listen
	.globl	ap_hack_apr_socket_accept
	.align 8
	.type	ap_hack_apr_socket_accept, @object
	.size	ap_hack_apr_socket_accept, 8
ap_hack_apr_socket_accept:
	.quad	apr_socket_accept
	.globl	ap_hack_apr_socket_connect
	.align 8
	.type	ap_hack_apr_socket_connect, @object
	.size	ap_hack_apr_socket_connect, 8
ap_hack_apr_socket_connect:
	.quad	apr_socket_connect
	.globl	ap_hack_apr_socket_atreadeof
	.align 8
	.type	ap_hack_apr_socket_atreadeof, @object
	.size	ap_hack_apr_socket_atreadeof, 8
ap_hack_apr_socket_atreadeof:
	.quad	apr_socket_atreadeof
	.globl	ap_hack_apr_sockaddr_info_get
	.align 8
	.type	ap_hack_apr_sockaddr_info_get, @object
	.size	ap_hack_apr_sockaddr_info_get, 8
ap_hack_apr_sockaddr_info_get:
	.quad	apr_sockaddr_info_get
	.globl	ap_hack_apr_getnameinfo
	.align 8
	.type	ap_hack_apr_getnameinfo, @object
	.size	ap_hack_apr_getnameinfo, 8
ap_hack_apr_getnameinfo:
	.quad	apr_getnameinfo
	.globl	ap_hack_apr_parse_addr_port
	.align 8
	.type	ap_hack_apr_parse_addr_port, @object
	.size	ap_hack_apr_parse_addr_port, 8
ap_hack_apr_parse_addr_port:
	.quad	apr_parse_addr_port
	.globl	ap_hack_apr_gethostname
	.align 8
	.type	ap_hack_apr_gethostname, @object
	.size	ap_hack_apr_gethostname, 8
ap_hack_apr_gethostname:
	.quad	apr_gethostname
	.globl	ap_hack_apr_socket_data_get
	.align 8
	.type	ap_hack_apr_socket_data_get, @object
	.size	ap_hack_apr_socket_data_get, 8
ap_hack_apr_socket_data_get:
	.quad	apr_socket_data_get
	.globl	ap_hack_apr_socket_data_set
	.align 8
	.type	ap_hack_apr_socket_data_set, @object
	.size	ap_hack_apr_socket_data_set, 8
ap_hack_apr_socket_data_set:
	.quad	apr_socket_data_set
	.globl	ap_hack_apr_socket_send
	.align 8
	.type	ap_hack_apr_socket_send, @object
	.size	ap_hack_apr_socket_send, 8
ap_hack_apr_socket_send:
	.quad	apr_socket_send
	.globl	ap_hack_apr_socket_sendv
	.align 8
	.type	ap_hack_apr_socket_sendv, @object
	.size	ap_hack_apr_socket_sendv, 8
ap_hack_apr_socket_sendv:
	.quad	apr_socket_sendv
	.globl	ap_hack_apr_socket_sendto
	.align 8
	.type	ap_hack_apr_socket_sendto, @object
	.size	ap_hack_apr_socket_sendto, 8
ap_hack_apr_socket_sendto:
	.quad	apr_socket_sendto
	.globl	ap_hack_apr_socket_recvfrom
	.align 8
	.type	ap_hack_apr_socket_recvfrom, @object
	.size	ap_hack_apr_socket_recvfrom, 8
ap_hack_apr_socket_recvfrom:
	.quad	apr_socket_recvfrom
	.globl	ap_hack_apr_socket_sendfile
	.align 8
	.type	ap_hack_apr_socket_sendfile, @object
	.size	ap_hack_apr_socket_sendfile, 8
ap_hack_apr_socket_sendfile:
	.quad	apr_socket_sendfile
	.globl	ap_hack_apr_socket_recv
	.align 8
	.type	ap_hack_apr_socket_recv, @object
	.size	ap_hack_apr_socket_recv, 8
ap_hack_apr_socket_recv:
	.quad	apr_socket_recv
	.globl	ap_hack_apr_socket_opt_set
	.align 8
	.type	ap_hack_apr_socket_opt_set, @object
	.size	ap_hack_apr_socket_opt_set, 8
ap_hack_apr_socket_opt_set:
	.quad	apr_socket_opt_set
	.globl	ap_hack_apr_socket_timeout_set
	.align 8
	.type	ap_hack_apr_socket_timeout_set, @object
	.size	ap_hack_apr_socket_timeout_set, 8
ap_hack_apr_socket_timeout_set:
	.quad	apr_socket_timeout_set
	.globl	ap_hack_apr_socket_opt_get
	.align 8
	.type	ap_hack_apr_socket_opt_get, @object
	.size	ap_hack_apr_socket_opt_get, 8
ap_hack_apr_socket_opt_get:
	.quad	apr_socket_opt_get
	.globl	ap_hack_apr_socket_timeout_get
	.align 8
	.type	ap_hack_apr_socket_timeout_get, @object
	.size	ap_hack_apr_socket_timeout_get, 8
ap_hack_apr_socket_timeout_get:
	.quad	apr_socket_timeout_get
	.globl	ap_hack_apr_socket_atmark
	.align 8
	.type	ap_hack_apr_socket_atmark, @object
	.size	ap_hack_apr_socket_atmark, 8
ap_hack_apr_socket_atmark:
	.quad	apr_socket_atmark
	.globl	ap_hack_apr_socket_addr_get
	.align 8
	.type	ap_hack_apr_socket_addr_get, @object
	.size	ap_hack_apr_socket_addr_get, 8
ap_hack_apr_socket_addr_get:
	.quad	apr_socket_addr_get
	.globl	ap_hack_apr_sockaddr_ip_get
	.align 8
	.type	ap_hack_apr_sockaddr_ip_get, @object
	.size	ap_hack_apr_sockaddr_ip_get, 8
ap_hack_apr_sockaddr_ip_get:
	.quad	apr_sockaddr_ip_get
	.globl	ap_hack_apr_sockaddr_ip_getbuf
	.align 8
	.type	ap_hack_apr_sockaddr_ip_getbuf, @object
	.size	ap_hack_apr_sockaddr_ip_getbuf, 8
ap_hack_apr_sockaddr_ip_getbuf:
	.quad	apr_sockaddr_ip_getbuf
	.globl	ap_hack_apr_sockaddr_equal
	.align 8
	.type	ap_hack_apr_sockaddr_equal, @object
	.size	ap_hack_apr_sockaddr_equal, 8
ap_hack_apr_sockaddr_equal:
	.quad	apr_sockaddr_equal
	.globl	ap_hack_apr_sockaddr_is_wildcard
	.align 8
	.type	ap_hack_apr_sockaddr_is_wildcard, @object
	.size	ap_hack_apr_sockaddr_is_wildcard, 8
ap_hack_apr_sockaddr_is_wildcard:
	.quad	apr_sockaddr_is_wildcard
	.globl	ap_hack_apr_socket_type_get
	.align 8
	.type	ap_hack_apr_socket_type_get, @object
	.size	ap_hack_apr_socket_type_get, 8
ap_hack_apr_socket_type_get:
	.quad	apr_socket_type_get
	.globl	ap_hack_apr_getservbyname
	.align 8
	.type	ap_hack_apr_getservbyname, @object
	.size	ap_hack_apr_getservbyname, 8
ap_hack_apr_getservbyname:
	.quad	apr_getservbyname
	.globl	ap_hack_apr_ipsubnet_create
	.align 8
	.type	ap_hack_apr_ipsubnet_create, @object
	.size	ap_hack_apr_ipsubnet_create, 8
ap_hack_apr_ipsubnet_create:
	.quad	apr_ipsubnet_create
	.globl	ap_hack_apr_ipsubnet_test
	.align 8
	.type	ap_hack_apr_ipsubnet_test, @object
	.size	ap_hack_apr_ipsubnet_test, 8
ap_hack_apr_ipsubnet_test:
	.quad	apr_ipsubnet_test
	.globl	ap_hack_apr_socket_protocol_get
	.align 8
	.type	ap_hack_apr_socket_protocol_get, @object
	.size	ap_hack_apr_socket_protocol_get, 8
ap_hack_apr_socket_protocol_get:
	.quad	apr_socket_protocol_get
	.globl	ap_hack_apr_socket_pool_get
	.align 8
	.type	ap_hack_apr_socket_pool_get, @object
	.size	ap_hack_apr_socket_pool_get, 8
ap_hack_apr_socket_pool_get:
	.quad	apr_socket_pool_get
	.globl	ap_hack_apr_socket_inherit_set
	.align 8
	.type	ap_hack_apr_socket_inherit_set, @object
	.size	ap_hack_apr_socket_inherit_set, 8
ap_hack_apr_socket_inherit_set:
	.quad	apr_socket_inherit_set
	.globl	ap_hack_apr_socket_inherit_unset
	.align 8
	.type	ap_hack_apr_socket_inherit_unset, @object
	.size	ap_hack_apr_socket_inherit_unset, 8
ap_hack_apr_socket_inherit_unset:
	.quad	apr_socket_inherit_unset
	.globl	ap_hack_apr_mcast_join
	.align 8
	.type	ap_hack_apr_mcast_join, @object
	.size	ap_hack_apr_mcast_join, 8
ap_hack_apr_mcast_join:
	.quad	apr_mcast_join
	.globl	ap_hack_apr_mcast_leave
	.align 8
	.type	ap_hack_apr_mcast_leave, @object
	.size	ap_hack_apr_mcast_leave, 8
ap_hack_apr_mcast_leave:
	.quad	apr_mcast_leave
	.globl	ap_hack_apr_mcast_hops
	.align 8
	.type	ap_hack_apr_mcast_hops, @object
	.size	ap_hack_apr_mcast_hops, 8
ap_hack_apr_mcast_hops:
	.quad	apr_mcast_hops
	.globl	ap_hack_apr_mcast_loopback
	.align 8
	.type	ap_hack_apr_mcast_loopback, @object
	.size	ap_hack_apr_mcast_loopback, 8
ap_hack_apr_mcast_loopback:
	.quad	apr_mcast_loopback
	.globl	ap_hack_apr_mcast_interface
	.align 8
	.type	ap_hack_apr_mcast_interface, @object
	.size	ap_hack_apr_mcast_interface, 8
ap_hack_apr_mcast_interface:
	.quad	apr_mcast_interface
	.globl	ap_hack_apr_dynamic_fn_register
	.align 8
	.type	ap_hack_apr_dynamic_fn_register, @object
	.size	ap_hack_apr_dynamic_fn_register, 8
ap_hack_apr_dynamic_fn_register:
	.quad	apr_dynamic_fn_register
	.globl	ap_hack_apr_dynamic_fn_retrieve
	.align 8
	.type	ap_hack_apr_dynamic_fn_retrieve, @object
	.size	ap_hack_apr_dynamic_fn_retrieve, 8
ap_hack_apr_dynamic_fn_retrieve:
	.quad	apr_dynamic_fn_retrieve
	.globl	ap_hack_apr_optional_hook_add
	.align 8
	.type	ap_hack_apr_optional_hook_add, @object
	.size	ap_hack_apr_optional_hook_add, 8
ap_hack_apr_optional_hook_add:
	.quad	apr_optional_hook_add
	.globl	ap_hack_apr_optional_hook_get
	.align 8
	.type	ap_hack_apr_optional_hook_get, @object
	.size	ap_hack_apr_optional_hook_get, 8
ap_hack_apr_optional_hook_get:
	.quad	apr_optional_hook_get
	.globl	ap_hack_apr_pollset_create
	.align 8
	.type	ap_hack_apr_pollset_create, @object
	.size	ap_hack_apr_pollset_create, 8
ap_hack_apr_pollset_create:
	.quad	apr_pollset_create
	.globl	ap_hack_apr_pollset_create_ex
	.align 8
	.type	ap_hack_apr_pollset_create_ex, @object
	.size	ap_hack_apr_pollset_create_ex, 8
ap_hack_apr_pollset_create_ex:
	.quad	apr_pollset_create_ex
	.globl	ap_hack_apr_pollset_destroy
	.align 8
	.type	ap_hack_apr_pollset_destroy, @object
	.size	ap_hack_apr_pollset_destroy, 8
ap_hack_apr_pollset_destroy:
	.quad	apr_pollset_destroy
	.globl	ap_hack_apr_pollset_add
	.align 8
	.type	ap_hack_apr_pollset_add, @object
	.size	ap_hack_apr_pollset_add, 8
ap_hack_apr_pollset_add:
	.quad	apr_pollset_add
	.globl	ap_hack_apr_pollset_remove
	.align 8
	.type	ap_hack_apr_pollset_remove, @object
	.size	ap_hack_apr_pollset_remove, 8
ap_hack_apr_pollset_remove:
	.quad	apr_pollset_remove
	.globl	ap_hack_apr_pollset_poll
	.align 8
	.type	ap_hack_apr_pollset_poll, @object
	.size	ap_hack_apr_pollset_poll, 8
ap_hack_apr_pollset_poll:
	.quad	apr_pollset_poll
	.globl	ap_hack_apr_pollset_wakeup
	.align 8
	.type	ap_hack_apr_pollset_wakeup, @object
	.size	ap_hack_apr_pollset_wakeup, 8
ap_hack_apr_pollset_wakeup:
	.quad	apr_pollset_wakeup
	.globl	ap_hack_apr_poll
	.align 8
	.type	ap_hack_apr_poll, @object
	.size	ap_hack_apr_poll, 8
ap_hack_apr_poll:
	.quad	apr_poll
	.globl	ap_hack_apr_pollset_method_name
	.align 8
	.type	ap_hack_apr_pollset_method_name, @object
	.size	ap_hack_apr_pollset_method_name, 8
ap_hack_apr_pollset_method_name:
	.quad	apr_pollset_method_name
	.globl	ap_hack_apr_poll_method_defname
	.align 8
	.type	ap_hack_apr_poll_method_defname, @object
	.size	ap_hack_apr_poll_method_defname, 8
ap_hack_apr_poll_method_defname:
	.quad	apr_poll_method_defname
	.globl	ap_hack_apr_pollcb_create
	.align 8
	.type	ap_hack_apr_pollcb_create, @object
	.size	ap_hack_apr_pollcb_create, 8
ap_hack_apr_pollcb_create:
	.quad	apr_pollcb_create
	.globl	ap_hack_apr_pollcb_create_ex
	.align 8
	.type	ap_hack_apr_pollcb_create_ex, @object
	.size	ap_hack_apr_pollcb_create_ex, 8
ap_hack_apr_pollcb_create_ex:
	.quad	apr_pollcb_create_ex
	.globl	ap_hack_apr_pollcb_add
	.align 8
	.type	ap_hack_apr_pollcb_add, @object
	.size	ap_hack_apr_pollcb_add, 8
ap_hack_apr_pollcb_add:
	.quad	apr_pollcb_add
	.globl	ap_hack_apr_pollcb_remove
	.align 8
	.type	ap_hack_apr_pollcb_remove, @object
	.size	ap_hack_apr_pollcb_remove, 8
ap_hack_apr_pollcb_remove:
	.quad	apr_pollcb_remove
	.globl	ap_hack_apr_pollcb_poll
	.align 8
	.type	ap_hack_apr_pollcb_poll, @object
	.size	ap_hack_apr_pollcb_poll, 8
ap_hack_apr_pollcb_poll:
	.quad	apr_pollcb_poll
	.globl	ap_hack_apr_pool_initialize
	.align 8
	.type	ap_hack_apr_pool_initialize, @object
	.size	ap_hack_apr_pool_initialize, 8
ap_hack_apr_pool_initialize:
	.quad	apr_pool_initialize
	.globl	ap_hack_apr_pool_terminate
	.align 8
	.type	ap_hack_apr_pool_terminate, @object
	.size	ap_hack_apr_pool_terminate, 8
ap_hack_apr_pool_terminate:
	.quad	apr_pool_terminate
	.globl	ap_hack_apr_pool_create_ex
	.align 8
	.type	ap_hack_apr_pool_create_ex, @object
	.size	ap_hack_apr_pool_create_ex, 8
ap_hack_apr_pool_create_ex:
	.quad	apr_pool_create_ex
	.globl	ap_hack_apr_pool_create_core_ex
	.align 8
	.type	ap_hack_apr_pool_create_core_ex, @object
	.size	ap_hack_apr_pool_create_core_ex, 8
ap_hack_apr_pool_create_core_ex:
	.quad	apr_pool_create_core_ex
	.globl	ap_hack_apr_pool_create_unmanaged_ex
	.align 8
	.type	ap_hack_apr_pool_create_unmanaged_ex, @object
	.size	ap_hack_apr_pool_create_unmanaged_ex, 8
ap_hack_apr_pool_create_unmanaged_ex:
	.quad	apr_pool_create_unmanaged_ex
	.globl	ap_hack_apr_pool_create_ex_debug
	.align 8
	.type	ap_hack_apr_pool_create_ex_debug, @object
	.size	ap_hack_apr_pool_create_ex_debug, 8
ap_hack_apr_pool_create_ex_debug:
	.quad	apr_pool_create_ex_debug
	.globl	ap_hack_apr_pool_create_core_ex_debug
	.align 8
	.type	ap_hack_apr_pool_create_core_ex_debug, @object
	.size	ap_hack_apr_pool_create_core_ex_debug, 8
ap_hack_apr_pool_create_core_ex_debug:
	.quad	apr_pool_create_core_ex_debug
	.globl	ap_hack_apr_pool_create_unmanaged_ex_debug
	.align 8
	.type	ap_hack_apr_pool_create_unmanaged_ex_debug, @object
	.size	ap_hack_apr_pool_create_unmanaged_ex_debug, 8
ap_hack_apr_pool_create_unmanaged_ex_debug:
	.quad	apr_pool_create_unmanaged_ex_debug
	.globl	ap_hack_apr_pool_allocator_get
	.align 8
	.type	ap_hack_apr_pool_allocator_get, @object
	.size	ap_hack_apr_pool_allocator_get, 8
ap_hack_apr_pool_allocator_get:
	.quad	apr_pool_allocator_get
	.globl	ap_hack_apr_pool_clear
	.align 8
	.type	ap_hack_apr_pool_clear, @object
	.size	ap_hack_apr_pool_clear, 8
ap_hack_apr_pool_clear:
	.quad	apr_pool_clear
	.globl	ap_hack_apr_pool_clear_debug
	.align 8
	.type	ap_hack_apr_pool_clear_debug, @object
	.size	ap_hack_apr_pool_clear_debug, 8
ap_hack_apr_pool_clear_debug:
	.quad	apr_pool_clear_debug
	.globl	ap_hack_apr_pool_destroy
	.align 8
	.type	ap_hack_apr_pool_destroy, @object
	.size	ap_hack_apr_pool_destroy, 8
ap_hack_apr_pool_destroy:
	.quad	apr_pool_destroy
	.globl	ap_hack_apr_pool_destroy_debug
	.align 8
	.type	ap_hack_apr_pool_destroy_debug, @object
	.size	ap_hack_apr_pool_destroy_debug, 8
ap_hack_apr_pool_destroy_debug:
	.quad	apr_pool_destroy_debug
	.globl	ap_hack_apr_palloc
	.align 8
	.type	ap_hack_apr_palloc, @object
	.size	ap_hack_apr_palloc, 8
ap_hack_apr_palloc:
	.quad	apr_palloc
	.globl	ap_hack_apr_palloc_debug
	.align 8
	.type	ap_hack_apr_palloc_debug, @object
	.size	ap_hack_apr_palloc_debug, 8
ap_hack_apr_palloc_debug:
	.quad	apr_palloc_debug
	.globl	ap_hack_apr_pcalloc_debug
	.align 8
	.type	ap_hack_apr_pcalloc_debug, @object
	.size	ap_hack_apr_pcalloc_debug, 8
ap_hack_apr_pcalloc_debug:
	.quad	apr_pcalloc_debug
	.globl	ap_hack_apr_pool_abort_set
	.align 8
	.type	ap_hack_apr_pool_abort_set, @object
	.size	ap_hack_apr_pool_abort_set, 8
ap_hack_apr_pool_abort_set:
	.quad	apr_pool_abort_set
	.globl	ap_hack_apr_pool_abort_get
	.align 8
	.type	ap_hack_apr_pool_abort_get, @object
	.size	ap_hack_apr_pool_abort_get, 8
ap_hack_apr_pool_abort_get:
	.quad	apr_pool_abort_get
	.globl	ap_hack_apr_pool_parent_get
	.align 8
	.type	ap_hack_apr_pool_parent_get, @object
	.size	ap_hack_apr_pool_parent_get, 8
ap_hack_apr_pool_parent_get:
	.quad	apr_pool_parent_get
	.globl	ap_hack_apr_pool_is_ancestor
	.align 8
	.type	ap_hack_apr_pool_is_ancestor, @object
	.size	ap_hack_apr_pool_is_ancestor, 8
ap_hack_apr_pool_is_ancestor:
	.quad	apr_pool_is_ancestor
	.globl	ap_hack_apr_pool_tag
	.align 8
	.type	ap_hack_apr_pool_tag, @object
	.size	ap_hack_apr_pool_tag, 8
ap_hack_apr_pool_tag:
	.quad	apr_pool_tag
	.globl	ap_hack_apr_pool_userdata_set
	.align 8
	.type	ap_hack_apr_pool_userdata_set, @object
	.size	ap_hack_apr_pool_userdata_set, 8
ap_hack_apr_pool_userdata_set:
	.quad	apr_pool_userdata_set
	.globl	ap_hack_apr_pool_userdata_setn
	.align 8
	.type	ap_hack_apr_pool_userdata_setn, @object
	.size	ap_hack_apr_pool_userdata_setn, 8
ap_hack_apr_pool_userdata_setn:
	.quad	apr_pool_userdata_setn
	.globl	ap_hack_apr_pool_userdata_get
	.align 8
	.type	ap_hack_apr_pool_userdata_get, @object
	.size	ap_hack_apr_pool_userdata_get, 8
ap_hack_apr_pool_userdata_get:
	.quad	apr_pool_userdata_get
	.globl	ap_hack_apr_pool_cleanup_register
	.align 8
	.type	ap_hack_apr_pool_cleanup_register, @object
	.size	ap_hack_apr_pool_cleanup_register, 8
ap_hack_apr_pool_cleanup_register:
	.quad	apr_pool_cleanup_register
	.globl	ap_hack_apr_pool_pre_cleanup_register
	.align 8
	.type	ap_hack_apr_pool_pre_cleanup_register, @object
	.size	ap_hack_apr_pool_pre_cleanup_register, 8
ap_hack_apr_pool_pre_cleanup_register:
	.quad	apr_pool_pre_cleanup_register
	.globl	ap_hack_apr_pool_cleanup_kill
	.align 8
	.type	ap_hack_apr_pool_cleanup_kill, @object
	.size	ap_hack_apr_pool_cleanup_kill, 8
ap_hack_apr_pool_cleanup_kill:
	.quad	apr_pool_cleanup_kill
	.globl	ap_hack_apr_pool_child_cleanup_set
	.align 8
	.type	ap_hack_apr_pool_child_cleanup_set, @object
	.size	ap_hack_apr_pool_child_cleanup_set, 8
ap_hack_apr_pool_child_cleanup_set:
	.quad	apr_pool_child_cleanup_set
	.globl	ap_hack_apr_pool_cleanup_run
	.align 8
	.type	ap_hack_apr_pool_cleanup_run, @object
	.size	ap_hack_apr_pool_cleanup_run, 8
ap_hack_apr_pool_cleanup_run:
	.quad	apr_pool_cleanup_run
	.globl	ap_hack_apr_pool_cleanup_null
	.align 8
	.type	ap_hack_apr_pool_cleanup_null, @object
	.size	ap_hack_apr_pool_cleanup_null, 8
ap_hack_apr_pool_cleanup_null:
	.quad	apr_pool_cleanup_null
	.globl	ap_hack_apr_pool_cleanup_for_exec
	.align 8
	.type	ap_hack_apr_pool_cleanup_for_exec, @object
	.size	ap_hack_apr_pool_cleanup_for_exec, 8
ap_hack_apr_pool_cleanup_for_exec:
	.quad	apr_pool_cleanup_for_exec
	.globl	ap_hack_apr_os_global_mutex_get
	.align 8
	.type	ap_hack_apr_os_global_mutex_get, @object
	.size	ap_hack_apr_os_global_mutex_get, 8
ap_hack_apr_os_global_mutex_get:
	.quad	apr_os_global_mutex_get
	.globl	ap_hack_apr_os_file_get
	.align 8
	.type	ap_hack_apr_os_file_get, @object
	.size	ap_hack_apr_os_file_get, 8
ap_hack_apr_os_file_get:
	.quad	apr_os_file_get
	.globl	ap_hack_apr_os_dir_get
	.align 8
	.type	ap_hack_apr_os_dir_get, @object
	.size	ap_hack_apr_os_dir_get, 8
ap_hack_apr_os_dir_get:
	.quad	apr_os_dir_get
	.globl	ap_hack_apr_os_sock_get
	.align 8
	.type	ap_hack_apr_os_sock_get, @object
	.size	ap_hack_apr_os_sock_get, 8
ap_hack_apr_os_sock_get:
	.quad	apr_os_sock_get
	.globl	ap_hack_apr_os_proc_mutex_get
	.align 8
	.type	ap_hack_apr_os_proc_mutex_get, @object
	.size	ap_hack_apr_os_proc_mutex_get, 8
ap_hack_apr_os_proc_mutex_get:
	.quad	apr_os_proc_mutex_get
	.globl	ap_hack_apr_os_exp_time_get
	.align 8
	.type	ap_hack_apr_os_exp_time_get, @object
	.size	ap_hack_apr_os_exp_time_get, 8
ap_hack_apr_os_exp_time_get:
	.quad	apr_os_exp_time_get
	.globl	ap_hack_apr_os_imp_time_get
	.align 8
	.type	ap_hack_apr_os_imp_time_get, @object
	.size	ap_hack_apr_os_imp_time_get, 8
ap_hack_apr_os_imp_time_get:
	.quad	apr_os_imp_time_get
	.globl	ap_hack_apr_os_shm_get
	.align 8
	.type	ap_hack_apr_os_shm_get, @object
	.size	ap_hack_apr_os_shm_get, 8
ap_hack_apr_os_shm_get:
	.quad	apr_os_shm_get
	.globl	ap_hack_apr_os_thread_get
	.align 8
	.type	ap_hack_apr_os_thread_get, @object
	.size	ap_hack_apr_os_thread_get, 8
ap_hack_apr_os_thread_get:
	.quad	apr_os_thread_get
	.globl	ap_hack_apr_os_threadkey_get
	.align 8
	.type	ap_hack_apr_os_threadkey_get, @object
	.size	ap_hack_apr_os_threadkey_get, 8
ap_hack_apr_os_threadkey_get:
	.quad	apr_os_threadkey_get
	.globl	ap_hack_apr_os_thread_put
	.align 8
	.type	ap_hack_apr_os_thread_put, @object
	.size	ap_hack_apr_os_thread_put, 8
ap_hack_apr_os_thread_put:
	.quad	apr_os_thread_put
	.globl	ap_hack_apr_os_threadkey_put
	.align 8
	.type	ap_hack_apr_os_threadkey_put, @object
	.size	ap_hack_apr_os_threadkey_put, 8
ap_hack_apr_os_threadkey_put:
	.quad	apr_os_threadkey_put
	.globl	ap_hack_apr_os_thread_current
	.align 8
	.type	ap_hack_apr_os_thread_current, @object
	.size	ap_hack_apr_os_thread_current, 8
ap_hack_apr_os_thread_current:
	.quad	apr_os_thread_current
	.globl	ap_hack_apr_os_thread_equal
	.align 8
	.type	ap_hack_apr_os_thread_equal, @object
	.size	ap_hack_apr_os_thread_equal, 8
ap_hack_apr_os_thread_equal:
	.quad	apr_os_thread_equal
	.globl	ap_hack_apr_os_file_put
	.align 8
	.type	ap_hack_apr_os_file_put, @object
	.size	ap_hack_apr_os_file_put, 8
ap_hack_apr_os_file_put:
	.quad	apr_os_file_put
	.globl	ap_hack_apr_os_pipe_put
	.align 8
	.type	ap_hack_apr_os_pipe_put, @object
	.size	ap_hack_apr_os_pipe_put, 8
ap_hack_apr_os_pipe_put:
	.quad	apr_os_pipe_put
	.globl	ap_hack_apr_os_pipe_put_ex
	.align 8
	.type	ap_hack_apr_os_pipe_put_ex, @object
	.size	ap_hack_apr_os_pipe_put_ex, 8
ap_hack_apr_os_pipe_put_ex:
	.quad	apr_os_pipe_put_ex
	.globl	ap_hack_apr_os_dir_put
	.align 8
	.type	ap_hack_apr_os_dir_put, @object
	.size	ap_hack_apr_os_dir_put, 8
ap_hack_apr_os_dir_put:
	.quad	apr_os_dir_put
	.globl	ap_hack_apr_os_sock_put
	.align 8
	.type	ap_hack_apr_os_sock_put, @object
	.size	ap_hack_apr_os_sock_put, 8
ap_hack_apr_os_sock_put:
	.quad	apr_os_sock_put
	.globl	ap_hack_apr_os_sock_make
	.align 8
	.type	ap_hack_apr_os_sock_make, @object
	.size	ap_hack_apr_os_sock_make, 8
ap_hack_apr_os_sock_make:
	.quad	apr_os_sock_make
	.globl	ap_hack_apr_os_proc_mutex_put
	.align 8
	.type	ap_hack_apr_os_proc_mutex_put, @object
	.size	ap_hack_apr_os_proc_mutex_put, 8
ap_hack_apr_os_proc_mutex_put:
	.quad	apr_os_proc_mutex_put
	.globl	ap_hack_apr_os_imp_time_put
	.align 8
	.type	ap_hack_apr_os_imp_time_put, @object
	.size	ap_hack_apr_os_imp_time_put, 8
ap_hack_apr_os_imp_time_put:
	.quad	apr_os_imp_time_put
	.globl	ap_hack_apr_os_exp_time_put
	.align 8
	.type	ap_hack_apr_os_exp_time_put, @object
	.size	ap_hack_apr_os_exp_time_put, 8
ap_hack_apr_os_exp_time_put:
	.quad	apr_os_exp_time_put
	.globl	ap_hack_apr_os_shm_put
	.align 8
	.type	ap_hack_apr_os_shm_put, @object
	.size	ap_hack_apr_os_shm_put, 8
ap_hack_apr_os_shm_put:
	.quad	apr_os_shm_put
	.globl	ap_hack_apr_os_dso_handle_put
	.align 8
	.type	ap_hack_apr_os_dso_handle_put, @object
	.size	ap_hack_apr_os_dso_handle_put, 8
ap_hack_apr_os_dso_handle_put:
	.quad	apr_os_dso_handle_put
	.globl	ap_hack_apr_os_dso_handle_get
	.align 8
	.type	ap_hack_apr_os_dso_handle_get, @object
	.size	ap_hack_apr_os_dso_handle_get, 8
ap_hack_apr_os_dso_handle_get:
	.quad	apr_os_dso_handle_get
	.globl	ap_hack_apr_os_uuid_get
	.align 8
	.type	ap_hack_apr_os_uuid_get, @object
	.size	ap_hack_apr_os_uuid_get, 8
ap_hack_apr_os_uuid_get:
	.quad	apr_os_uuid_get
	.globl	ap_hack_apr_os_default_encoding
	.align 8
	.type	ap_hack_apr_os_default_encoding, @object
	.size	ap_hack_apr_os_default_encoding, 8
ap_hack_apr_os_default_encoding:
	.quad	apr_os_default_encoding
	.globl	ap_hack_apr_os_locale_encoding
	.align 8
	.type	ap_hack_apr_os_locale_encoding, @object
	.size	ap_hack_apr_os_locale_encoding, 8
ap_hack_apr_os_locale_encoding:
	.quad	apr_os_locale_encoding
	.globl	ap_hack_apr_proc_mutex_create
	.align 8
	.type	ap_hack_apr_proc_mutex_create, @object
	.size	ap_hack_apr_proc_mutex_create, 8
ap_hack_apr_proc_mutex_create:
	.quad	apr_proc_mutex_create
	.globl	ap_hack_apr_proc_mutex_child_init
	.align 8
	.type	ap_hack_apr_proc_mutex_child_init, @object
	.size	ap_hack_apr_proc_mutex_child_init, 8
ap_hack_apr_proc_mutex_child_init:
	.quad	apr_proc_mutex_child_init
	.globl	ap_hack_apr_proc_mutex_lock
	.align 8
	.type	ap_hack_apr_proc_mutex_lock, @object
	.size	ap_hack_apr_proc_mutex_lock, 8
ap_hack_apr_proc_mutex_lock:
	.quad	apr_proc_mutex_lock
	.globl	ap_hack_apr_proc_mutex_trylock
	.align 8
	.type	ap_hack_apr_proc_mutex_trylock, @object
	.size	ap_hack_apr_proc_mutex_trylock, 8
ap_hack_apr_proc_mutex_trylock:
	.quad	apr_proc_mutex_trylock
	.globl	ap_hack_apr_proc_mutex_unlock
	.align 8
	.type	ap_hack_apr_proc_mutex_unlock, @object
	.size	ap_hack_apr_proc_mutex_unlock, 8
ap_hack_apr_proc_mutex_unlock:
	.quad	apr_proc_mutex_unlock
	.globl	ap_hack_apr_proc_mutex_destroy
	.align 8
	.type	ap_hack_apr_proc_mutex_destroy, @object
	.size	ap_hack_apr_proc_mutex_destroy, 8
ap_hack_apr_proc_mutex_destroy:
	.quad	apr_proc_mutex_destroy
	.globl	ap_hack_apr_proc_mutex_cleanup
	.align 8
	.type	ap_hack_apr_proc_mutex_cleanup, @object
	.size	ap_hack_apr_proc_mutex_cleanup, 8
ap_hack_apr_proc_mutex_cleanup:
	.quad	apr_proc_mutex_cleanup
	.globl	ap_hack_apr_proc_mutex_lockfile
	.align 8
	.type	ap_hack_apr_proc_mutex_lockfile, @object
	.size	ap_hack_apr_proc_mutex_lockfile, 8
ap_hack_apr_proc_mutex_lockfile:
	.quad	apr_proc_mutex_lockfile
	.globl	ap_hack_apr_proc_mutex_name
	.align 8
	.type	ap_hack_apr_proc_mutex_name, @object
	.size	ap_hack_apr_proc_mutex_name, 8
ap_hack_apr_proc_mutex_name:
	.quad	apr_proc_mutex_name
	.globl	ap_hack_apr_proc_mutex_defname
	.align 8
	.type	ap_hack_apr_proc_mutex_defname, @object
	.size	ap_hack_apr_proc_mutex_defname, 8
ap_hack_apr_proc_mutex_defname:
	.quad	apr_proc_mutex_defname
	.globl	ap_hack_apr_proc_mutex_pool_get
	.align 8
	.type	ap_hack_apr_proc_mutex_pool_get, @object
	.size	ap_hack_apr_proc_mutex_pool_get, 8
ap_hack_apr_proc_mutex_pool_get:
	.quad	apr_proc_mutex_pool_get
	.globl	ap_hack_apr_queue_create
	.align 8
	.type	ap_hack_apr_queue_create, @object
	.size	ap_hack_apr_queue_create, 8
ap_hack_apr_queue_create:
	.quad	apr_queue_create
	.globl	ap_hack_apr_queue_push
	.align 8
	.type	ap_hack_apr_queue_push, @object
	.size	ap_hack_apr_queue_push, 8
ap_hack_apr_queue_push:
	.quad	apr_queue_push
	.globl	ap_hack_apr_queue_pop
	.align 8
	.type	ap_hack_apr_queue_pop, @object
	.size	ap_hack_apr_queue_pop, 8
ap_hack_apr_queue_pop:
	.quad	apr_queue_pop
	.globl	ap_hack_apr_queue_trypush
	.align 8
	.type	ap_hack_apr_queue_trypush, @object
	.size	ap_hack_apr_queue_trypush, 8
ap_hack_apr_queue_trypush:
	.quad	apr_queue_trypush
	.globl	ap_hack_apr_queue_trypop
	.align 8
	.type	ap_hack_apr_queue_trypop, @object
	.size	ap_hack_apr_queue_trypop, 8
ap_hack_apr_queue_trypop:
	.quad	apr_queue_trypop
	.globl	ap_hack_apr_queue_size
	.align 8
	.type	ap_hack_apr_queue_size, @object
	.size	ap_hack_apr_queue_size, 8
ap_hack_apr_queue_size:
	.quad	apr_queue_size
	.globl	ap_hack_apr_queue_interrupt_all
	.align 8
	.type	ap_hack_apr_queue_interrupt_all, @object
	.size	ap_hack_apr_queue_interrupt_all, 8
ap_hack_apr_queue_interrupt_all:
	.quad	apr_queue_interrupt_all
	.globl	ap_hack_apr_queue_term
	.align 8
	.type	ap_hack_apr_queue_term, @object
	.size	ap_hack_apr_queue_term, 8
ap_hack_apr_queue_term:
	.quad	apr_queue_term
	.globl	ap_hack_apr_crypto_sha256_new
	.align 8
	.type	ap_hack_apr_crypto_sha256_new, @object
	.size	ap_hack_apr_crypto_sha256_new, 8
ap_hack_apr_crypto_sha256_new:
	.quad	apr_crypto_sha256_new
	.globl	ap_hack_apr_random_init
	.align 8
	.type	ap_hack_apr_random_init, @object
	.size	ap_hack_apr_random_init, 8
ap_hack_apr_random_init:
	.quad	apr_random_init
	.globl	ap_hack_apr_random_standard_new
	.align 8
	.type	ap_hack_apr_random_standard_new, @object
	.size	ap_hack_apr_random_standard_new, 8
ap_hack_apr_random_standard_new:
	.quad	apr_random_standard_new
	.globl	ap_hack_apr_random_add_entropy
	.align 8
	.type	ap_hack_apr_random_add_entropy, @object
	.size	ap_hack_apr_random_add_entropy, 8
ap_hack_apr_random_add_entropy:
	.quad	apr_random_add_entropy
	.globl	ap_hack_apr_random_insecure_bytes
	.align 8
	.type	ap_hack_apr_random_insecure_bytes, @object
	.size	ap_hack_apr_random_insecure_bytes, 8
ap_hack_apr_random_insecure_bytes:
	.quad	apr_random_insecure_bytes
	.globl	ap_hack_apr_random_secure_bytes
	.align 8
	.type	ap_hack_apr_random_secure_bytes, @object
	.size	ap_hack_apr_random_secure_bytes, 8
ap_hack_apr_random_secure_bytes:
	.quad	apr_random_secure_bytes
	.globl	ap_hack_apr_random_barrier
	.align 8
	.type	ap_hack_apr_random_barrier, @object
	.size	ap_hack_apr_random_barrier, 8
ap_hack_apr_random_barrier:
	.quad	apr_random_barrier
	.globl	ap_hack_apr_random_secure_ready
	.align 8
	.type	ap_hack_apr_random_secure_ready, @object
	.size	ap_hack_apr_random_secure_ready, 8
ap_hack_apr_random_secure_ready:
	.quad	apr_random_secure_ready
	.globl	ap_hack_apr_random_insecure_ready
	.align 8
	.type	ap_hack_apr_random_insecure_ready, @object
	.size	ap_hack_apr_random_insecure_ready, 8
ap_hack_apr_random_insecure_ready:
	.quad	apr_random_insecure_ready
	.globl	ap_hack_apr_random_after_fork
	.align 8
	.type	ap_hack_apr_random_after_fork, @object
	.size	ap_hack_apr_random_after_fork, 8
ap_hack_apr_random_after_fork:
	.quad	apr_random_after_fork
	.globl	ap_hack_apr_reslist_create
	.align 8
	.type	ap_hack_apr_reslist_create, @object
	.size	ap_hack_apr_reslist_create, 8
ap_hack_apr_reslist_create:
	.quad	apr_reslist_create
	.globl	ap_hack_apr_reslist_destroy
	.align 8
	.type	ap_hack_apr_reslist_destroy, @object
	.size	ap_hack_apr_reslist_destroy, 8
ap_hack_apr_reslist_destroy:
	.quad	apr_reslist_destroy
	.globl	ap_hack_apr_reslist_acquire
	.align 8
	.type	ap_hack_apr_reslist_acquire, @object
	.size	ap_hack_apr_reslist_acquire, 8
ap_hack_apr_reslist_acquire:
	.quad	apr_reslist_acquire
	.globl	ap_hack_apr_reslist_release
	.align 8
	.type	ap_hack_apr_reslist_release, @object
	.size	ap_hack_apr_reslist_release, 8
ap_hack_apr_reslist_release:
	.quad	apr_reslist_release
	.globl	ap_hack_apr_reslist_timeout_set
	.align 8
	.type	ap_hack_apr_reslist_timeout_set, @object
	.size	ap_hack_apr_reslist_timeout_set, 8
ap_hack_apr_reslist_timeout_set:
	.quad	apr_reslist_timeout_set
	.globl	ap_hack_apr_reslist_acquired_count
	.align 8
	.type	ap_hack_apr_reslist_acquired_count, @object
	.size	ap_hack_apr_reslist_acquired_count, 8
ap_hack_apr_reslist_acquired_count:
	.quad	apr_reslist_acquired_count
	.globl	ap_hack_apr_reslist_invalidate
	.align 8
	.type	ap_hack_apr_reslist_invalidate, @object
	.size	ap_hack_apr_reslist_invalidate, 8
ap_hack_apr_reslist_invalidate:
	.quad	apr_reslist_invalidate
	.globl	ap_hack_apr_reslist_maintain
	.align 8
	.type	ap_hack_apr_reslist_maintain, @object
	.size	ap_hack_apr_reslist_maintain, 8
ap_hack_apr_reslist_maintain:
	.quad	apr_reslist_maintain
	.globl	ap_hack_apr_reslist_cleanup_order_set
	.align 8
	.type	ap_hack_apr_reslist_cleanup_order_set, @object
	.size	ap_hack_apr_reslist_cleanup_order_set, 8
ap_hack_apr_reslist_cleanup_order_set:
	.quad	apr_reslist_cleanup_order_set
	.globl	ap_hack_apr_rmm_init
	.align 8
	.type	ap_hack_apr_rmm_init, @object
	.size	ap_hack_apr_rmm_init, 8
ap_hack_apr_rmm_init:
	.quad	apr_rmm_init
	.globl	ap_hack_apr_rmm_destroy
	.align 8
	.type	ap_hack_apr_rmm_destroy, @object
	.size	ap_hack_apr_rmm_destroy, 8
ap_hack_apr_rmm_destroy:
	.quad	apr_rmm_destroy
	.globl	ap_hack_apr_rmm_attach
	.align 8
	.type	ap_hack_apr_rmm_attach, @object
	.size	ap_hack_apr_rmm_attach, 8
ap_hack_apr_rmm_attach:
	.quad	apr_rmm_attach
	.globl	ap_hack_apr_rmm_detach
	.align 8
	.type	ap_hack_apr_rmm_detach, @object
	.size	ap_hack_apr_rmm_detach, 8
ap_hack_apr_rmm_detach:
	.quad	apr_rmm_detach
	.globl	ap_hack_apr_rmm_malloc
	.align 8
	.type	ap_hack_apr_rmm_malloc, @object
	.size	ap_hack_apr_rmm_malloc, 8
ap_hack_apr_rmm_malloc:
	.quad	apr_rmm_malloc
	.globl	ap_hack_apr_rmm_realloc
	.align 8
	.type	ap_hack_apr_rmm_realloc, @object
	.size	ap_hack_apr_rmm_realloc, 8
ap_hack_apr_rmm_realloc:
	.quad	apr_rmm_realloc
	.globl	ap_hack_apr_rmm_calloc
	.align 8
	.type	ap_hack_apr_rmm_calloc, @object
	.size	ap_hack_apr_rmm_calloc, 8
ap_hack_apr_rmm_calloc:
	.quad	apr_rmm_calloc
	.globl	ap_hack_apr_rmm_free
	.align 8
	.type	ap_hack_apr_rmm_free, @object
	.size	ap_hack_apr_rmm_free, 8
ap_hack_apr_rmm_free:
	.quad	apr_rmm_free
	.globl	ap_hack_apr_rmm_addr_get
	.align 8
	.type	ap_hack_apr_rmm_addr_get, @object
	.size	ap_hack_apr_rmm_addr_get, 8
ap_hack_apr_rmm_addr_get:
	.quad	apr_rmm_addr_get
	.globl	ap_hack_apr_rmm_offset_get
	.align 8
	.type	ap_hack_apr_rmm_offset_get, @object
	.size	ap_hack_apr_rmm_offset_get, 8
ap_hack_apr_rmm_offset_get:
	.quad	apr_rmm_offset_get
	.globl	ap_hack_apr_rmm_overhead_get
	.align 8
	.type	ap_hack_apr_rmm_overhead_get, @object
	.size	ap_hack_apr_rmm_overhead_get, 8
ap_hack_apr_rmm_overhead_get:
	.quad	apr_rmm_overhead_get
	.globl	ap_hack_apr_sdbm_open
	.align 8
	.type	ap_hack_apr_sdbm_open, @object
	.size	ap_hack_apr_sdbm_open, 8
ap_hack_apr_sdbm_open:
	.quad	apr_sdbm_open
	.globl	ap_hack_apr_sdbm_close
	.align 8
	.type	ap_hack_apr_sdbm_close, @object
	.size	ap_hack_apr_sdbm_close, 8
ap_hack_apr_sdbm_close:
	.quad	apr_sdbm_close
	.globl	ap_hack_apr_sdbm_lock
	.align 8
	.type	ap_hack_apr_sdbm_lock, @object
	.size	ap_hack_apr_sdbm_lock, 8
ap_hack_apr_sdbm_lock:
	.quad	apr_sdbm_lock
	.globl	ap_hack_apr_sdbm_unlock
	.align 8
	.type	ap_hack_apr_sdbm_unlock, @object
	.size	ap_hack_apr_sdbm_unlock, 8
ap_hack_apr_sdbm_unlock:
	.quad	apr_sdbm_unlock
	.globl	ap_hack_apr_sdbm_fetch
	.align 8
	.type	ap_hack_apr_sdbm_fetch, @object
	.size	ap_hack_apr_sdbm_fetch, 8
ap_hack_apr_sdbm_fetch:
	.quad	apr_sdbm_fetch
	.globl	ap_hack_apr_sdbm_store
	.align 8
	.type	ap_hack_apr_sdbm_store, @object
	.size	ap_hack_apr_sdbm_store, 8
ap_hack_apr_sdbm_store:
	.quad	apr_sdbm_store
	.globl	ap_hack_apr_sdbm_delete
	.align 8
	.type	ap_hack_apr_sdbm_delete, @object
	.size	ap_hack_apr_sdbm_delete, 8
ap_hack_apr_sdbm_delete:
	.quad	apr_sdbm_delete
	.globl	ap_hack_apr_sdbm_firstkey
	.align 8
	.type	ap_hack_apr_sdbm_firstkey, @object
	.size	ap_hack_apr_sdbm_firstkey, 8
ap_hack_apr_sdbm_firstkey:
	.quad	apr_sdbm_firstkey
	.globl	ap_hack_apr_sdbm_nextkey
	.align 8
	.type	ap_hack_apr_sdbm_nextkey, @object
	.size	ap_hack_apr_sdbm_nextkey, 8
ap_hack_apr_sdbm_nextkey:
	.quad	apr_sdbm_nextkey
	.globl	ap_hack_apr_sdbm_rdonly
	.align 8
	.type	ap_hack_apr_sdbm_rdonly, @object
	.size	ap_hack_apr_sdbm_rdonly, 8
ap_hack_apr_sdbm_rdonly:
	.quad	apr_sdbm_rdonly
	.globl	ap_hack_apr_sha1_base64
	.align 8
	.type	ap_hack_apr_sha1_base64, @object
	.size	ap_hack_apr_sha1_base64, 8
ap_hack_apr_sha1_base64:
	.quad	apr_sha1_base64
	.globl	ap_hack_apr_sha1_init
	.align 8
	.type	ap_hack_apr_sha1_init, @object
	.size	ap_hack_apr_sha1_init, 8
ap_hack_apr_sha1_init:
	.quad	apr_sha1_init
	.globl	ap_hack_apr_sha1_update
	.align 8
	.type	ap_hack_apr_sha1_update, @object
	.size	ap_hack_apr_sha1_update, 8
ap_hack_apr_sha1_update:
	.quad	apr_sha1_update
	.globl	ap_hack_apr_sha1_update_binary
	.align 8
	.type	ap_hack_apr_sha1_update_binary, @object
	.size	ap_hack_apr_sha1_update_binary, 8
ap_hack_apr_sha1_update_binary:
	.quad	apr_sha1_update_binary
	.globl	ap_hack_apr_sha1_final
	.align 8
	.type	ap_hack_apr_sha1_final, @object
	.size	ap_hack_apr_sha1_final, 8
ap_hack_apr_sha1_final:
	.quad	apr_sha1_final
	.globl	ap_hack_apr_shm_create
	.align 8
	.type	ap_hack_apr_shm_create, @object
	.size	ap_hack_apr_shm_create, 8
ap_hack_apr_shm_create:
	.quad	apr_shm_create
	.globl	ap_hack_apr_shm_create_ex
	.align 8
	.type	ap_hack_apr_shm_create_ex, @object
	.size	ap_hack_apr_shm_create_ex, 8
ap_hack_apr_shm_create_ex:
	.quad	apr_shm_create_ex
	.globl	ap_hack_apr_shm_remove
	.align 8
	.type	ap_hack_apr_shm_remove, @object
	.size	ap_hack_apr_shm_remove, 8
ap_hack_apr_shm_remove:
	.quad	apr_shm_remove
	.globl	ap_hack_apr_shm_destroy
	.align 8
	.type	ap_hack_apr_shm_destroy, @object
	.size	ap_hack_apr_shm_destroy, 8
ap_hack_apr_shm_destroy:
	.quad	apr_shm_destroy
	.globl	ap_hack_apr_shm_attach
	.align 8
	.type	ap_hack_apr_shm_attach, @object
	.size	ap_hack_apr_shm_attach, 8
ap_hack_apr_shm_attach:
	.quad	apr_shm_attach
	.globl	ap_hack_apr_shm_attach_ex
	.align 8
	.type	ap_hack_apr_shm_attach_ex, @object
	.size	ap_hack_apr_shm_attach_ex, 8
ap_hack_apr_shm_attach_ex:
	.quad	apr_shm_attach_ex
	.globl	ap_hack_apr_shm_detach
	.align 8
	.type	ap_hack_apr_shm_detach, @object
	.size	ap_hack_apr_shm_detach, 8
ap_hack_apr_shm_detach:
	.quad	apr_shm_detach
	.globl	ap_hack_apr_shm_baseaddr_get
	.align 8
	.type	ap_hack_apr_shm_baseaddr_get, @object
	.size	ap_hack_apr_shm_baseaddr_get, 8
ap_hack_apr_shm_baseaddr_get:
	.quad	apr_shm_baseaddr_get
	.globl	ap_hack_apr_shm_size_get
	.align 8
	.type	ap_hack_apr_shm_size_get, @object
	.size	ap_hack_apr_shm_size_get, 8
ap_hack_apr_shm_size_get:
	.quad	apr_shm_size_get
	.globl	ap_hack_apr_shm_pool_get
	.align 8
	.type	ap_hack_apr_shm_pool_get, @object
	.size	ap_hack_apr_shm_pool_get, 8
ap_hack_apr_shm_pool_get:
	.quad	apr_shm_pool_get
	.globl	ap_hack_apr_signal
	.align 8
	.type	ap_hack_apr_signal, @object
	.size	ap_hack_apr_signal, 8
ap_hack_apr_signal:
	.quad	apr_signal
	.globl	ap_hack_apr_signal_description_get
	.align 8
	.type	ap_hack_apr_signal_description_get, @object
	.size	ap_hack_apr_signal_description_get, 8
ap_hack_apr_signal_description_get:
	.quad	apr_signal_description_get
	.globl	ap_hack_apr_signal_block
	.align 8
	.type	ap_hack_apr_signal_block, @object
	.size	ap_hack_apr_signal_block, 8
ap_hack_apr_signal_block:
	.quad	apr_signal_block
	.globl	ap_hack_apr_signal_unblock
	.align 8
	.type	ap_hack_apr_signal_unblock, @object
	.size	ap_hack_apr_signal_unblock, 8
ap_hack_apr_signal_unblock:
	.quad	apr_signal_unblock
	.globl	ap_hack_apr_skiplist_alloc
	.align 8
	.type	ap_hack_apr_skiplist_alloc, @object
	.size	ap_hack_apr_skiplist_alloc, 8
ap_hack_apr_skiplist_alloc:
	.quad	apr_skiplist_alloc
	.globl	ap_hack_apr_skiplist_free
	.align 8
	.type	ap_hack_apr_skiplist_free, @object
	.size	ap_hack_apr_skiplist_free, 8
ap_hack_apr_skiplist_free:
	.quad	apr_skiplist_free
	.globl	ap_hack_apr_skiplist_init
	.align 8
	.type	ap_hack_apr_skiplist_init, @object
	.size	ap_hack_apr_skiplist_init, 8
ap_hack_apr_skiplist_init:
	.quad	apr_skiplist_init
	.globl	ap_hack_apr_skiplist_set_compare
	.align 8
	.type	ap_hack_apr_skiplist_set_compare, @object
	.size	ap_hack_apr_skiplist_set_compare, 8
ap_hack_apr_skiplist_set_compare:
	.quad	apr_skiplist_set_compare
	.globl	ap_hack_apr_skiplist_add_index
	.align 8
	.type	ap_hack_apr_skiplist_add_index, @object
	.size	ap_hack_apr_skiplist_add_index, 8
ap_hack_apr_skiplist_add_index:
	.quad	apr_skiplist_add_index
	.globl	ap_hack_apr_skiplist_getlist
	.align 8
	.type	ap_hack_apr_skiplist_getlist, @object
	.size	ap_hack_apr_skiplist_getlist, 8
ap_hack_apr_skiplist_getlist:
	.quad	apr_skiplist_getlist
	.globl	ap_hack_apr_skiplist_find_compare
	.align 8
	.type	ap_hack_apr_skiplist_find_compare, @object
	.size	ap_hack_apr_skiplist_find_compare, 8
ap_hack_apr_skiplist_find_compare:
	.quad	apr_skiplist_find_compare
	.globl	ap_hack_apr_skiplist_find
	.align 8
	.type	ap_hack_apr_skiplist_find, @object
	.size	ap_hack_apr_skiplist_find, 8
ap_hack_apr_skiplist_find:
	.quad	apr_skiplist_find
	.globl	ap_hack_apr_skiplist_next
	.align 8
	.type	ap_hack_apr_skiplist_next, @object
	.size	ap_hack_apr_skiplist_next, 8
ap_hack_apr_skiplist_next:
	.quad	apr_skiplist_next
	.globl	ap_hack_apr_skiplist_previous
	.align 8
	.type	ap_hack_apr_skiplist_previous, @object
	.size	ap_hack_apr_skiplist_previous, 8
ap_hack_apr_skiplist_previous:
	.quad	apr_skiplist_previous
	.globl	ap_hack_apr_skiplist_insert_compare
	.align 8
	.type	ap_hack_apr_skiplist_insert_compare, @object
	.size	ap_hack_apr_skiplist_insert_compare, 8
ap_hack_apr_skiplist_insert_compare:
	.quad	apr_skiplist_insert_compare
	.globl	ap_hack_apr_skiplist_insert
	.align 8
	.type	ap_hack_apr_skiplist_insert, @object
	.size	ap_hack_apr_skiplist_insert, 8
ap_hack_apr_skiplist_insert:
	.quad	apr_skiplist_insert
	.globl	ap_hack_apr_skiplist_remove_compare
	.align 8
	.type	ap_hack_apr_skiplist_remove_compare, @object
	.size	ap_hack_apr_skiplist_remove_compare, 8
ap_hack_apr_skiplist_remove_compare:
	.quad	apr_skiplist_remove_compare
	.globl	ap_hack_apr_skiplist_remove
	.align 8
	.type	ap_hack_apr_skiplist_remove, @object
	.size	ap_hack_apr_skiplist_remove, 8
ap_hack_apr_skiplist_remove:
	.quad	apr_skiplist_remove
	.globl	ap_hack_apr_skiplist_remove_all
	.align 8
	.type	ap_hack_apr_skiplist_remove_all, @object
	.size	ap_hack_apr_skiplist_remove_all, 8
ap_hack_apr_skiplist_remove_all:
	.quad	apr_skiplist_remove_all
	.globl	ap_hack_apr_skiplist_destroy
	.align 8
	.type	ap_hack_apr_skiplist_destroy, @object
	.size	ap_hack_apr_skiplist_destroy, 8
ap_hack_apr_skiplist_destroy:
	.quad	apr_skiplist_destroy
	.globl	ap_hack_apr_skiplist_pop
	.align 8
	.type	ap_hack_apr_skiplist_pop, @object
	.size	ap_hack_apr_skiplist_pop, 8
ap_hack_apr_skiplist_pop:
	.quad	apr_skiplist_pop
	.globl	ap_hack_apr_skiplist_peek
	.align 8
	.type	ap_hack_apr_skiplist_peek, @object
	.size	ap_hack_apr_skiplist_peek, 8
ap_hack_apr_skiplist_peek:
	.quad	apr_skiplist_peek
	.globl	ap_hack_apr_skiplist_merge
	.align 8
	.type	ap_hack_apr_skiplist_merge, @object
	.size	ap_hack_apr_skiplist_merge, 8
ap_hack_apr_skiplist_merge:
	.quad	apr_skiplist_merge
	.globl	ap_hack_apr_strnatcmp
	.align 8
	.type	ap_hack_apr_strnatcmp, @object
	.size	ap_hack_apr_strnatcmp, 8
ap_hack_apr_strnatcmp:
	.quad	apr_strnatcmp
	.globl	ap_hack_apr_strnatcasecmp
	.align 8
	.type	ap_hack_apr_strnatcasecmp, @object
	.size	ap_hack_apr_strnatcasecmp, 8
ap_hack_apr_strnatcasecmp:
	.quad	apr_strnatcasecmp
	.globl	ap_hack_apr_pstrdup
	.align 8
	.type	ap_hack_apr_pstrdup, @object
	.size	ap_hack_apr_pstrdup, 8
ap_hack_apr_pstrdup:
	.quad	apr_pstrdup
	.globl	ap_hack_apr_pstrmemdup
	.align 8
	.type	ap_hack_apr_pstrmemdup, @object
	.size	ap_hack_apr_pstrmemdup, 8
ap_hack_apr_pstrmemdup:
	.quad	apr_pstrmemdup
	.globl	ap_hack_apr_pstrndup
	.align 8
	.type	ap_hack_apr_pstrndup, @object
	.size	ap_hack_apr_pstrndup, 8
ap_hack_apr_pstrndup:
	.quad	apr_pstrndup
	.globl	ap_hack_apr_pmemdup
	.align 8
	.type	ap_hack_apr_pmemdup, @object
	.size	ap_hack_apr_pmemdup, 8
ap_hack_apr_pmemdup:
	.quad	apr_pmemdup
	.globl	ap_hack_apr_pstrcat
	.align 8
	.type	ap_hack_apr_pstrcat, @object
	.size	ap_hack_apr_pstrcat, 8
ap_hack_apr_pstrcat:
	.quad	apr_pstrcat
	.globl	ap_hack_apr_pstrcatv
	.align 8
	.type	ap_hack_apr_pstrcatv, @object
	.size	ap_hack_apr_pstrcatv, 8
ap_hack_apr_pstrcatv:
	.quad	apr_pstrcatv
	.globl	ap_hack_apr_pvsprintf
	.align 8
	.type	ap_hack_apr_pvsprintf, @object
	.size	ap_hack_apr_pvsprintf, 8
ap_hack_apr_pvsprintf:
	.quad	apr_pvsprintf
	.globl	ap_hack_apr_psprintf
	.align 8
	.type	ap_hack_apr_psprintf, @object
	.size	ap_hack_apr_psprintf, 8
ap_hack_apr_psprintf:
	.quad	apr_psprintf
	.globl	ap_hack_apr_cpystrn
	.align 8
	.type	ap_hack_apr_cpystrn, @object
	.size	ap_hack_apr_cpystrn, 8
ap_hack_apr_cpystrn:
	.quad	apr_cpystrn
	.globl	ap_hack_apr_collapse_spaces
	.align 8
	.type	ap_hack_apr_collapse_spaces, @object
	.size	ap_hack_apr_collapse_spaces, 8
ap_hack_apr_collapse_spaces:
	.quad	apr_collapse_spaces
	.globl	ap_hack_apr_tokenize_to_argv
	.align 8
	.type	ap_hack_apr_tokenize_to_argv, @object
	.size	ap_hack_apr_tokenize_to_argv, 8
ap_hack_apr_tokenize_to_argv:
	.quad	apr_tokenize_to_argv
	.globl	ap_hack_apr_strtok
	.align 8
	.type	ap_hack_apr_strtok, @object
	.size	ap_hack_apr_strtok, 8
ap_hack_apr_strtok:
	.quad	apr_strtok
	.globl	ap_hack_apr_snprintf
	.align 8
	.type	ap_hack_apr_snprintf, @object
	.size	ap_hack_apr_snprintf, 8
ap_hack_apr_snprintf:
	.quad	apr_snprintf
	.globl	ap_hack_apr_vsnprintf
	.align 8
	.type	ap_hack_apr_vsnprintf, @object
	.size	ap_hack_apr_vsnprintf, 8
ap_hack_apr_vsnprintf:
	.quad	apr_vsnprintf
	.globl	ap_hack_apr_itoa
	.align 8
	.type	ap_hack_apr_itoa, @object
	.size	ap_hack_apr_itoa, 8
ap_hack_apr_itoa:
	.quad	apr_itoa
	.globl	ap_hack_apr_ltoa
	.align 8
	.type	ap_hack_apr_ltoa, @object
	.size	ap_hack_apr_ltoa, 8
ap_hack_apr_ltoa:
	.quad	apr_ltoa
	.globl	ap_hack_apr_off_t_toa
	.align 8
	.type	ap_hack_apr_off_t_toa, @object
	.size	ap_hack_apr_off_t_toa, 8
ap_hack_apr_off_t_toa:
	.quad	apr_off_t_toa
	.globl	ap_hack_apr_strtoff
	.align 8
	.type	ap_hack_apr_strtoff, @object
	.size	ap_hack_apr_strtoff, 8
ap_hack_apr_strtoff:
	.quad	apr_strtoff
	.globl	ap_hack_apr_strtoi64
	.align 8
	.type	ap_hack_apr_strtoi64, @object
	.size	ap_hack_apr_strtoi64, 8
ap_hack_apr_strtoi64:
	.quad	apr_strtoi64
	.globl	ap_hack_apr_atoi64
	.align 8
	.type	ap_hack_apr_atoi64, @object
	.size	ap_hack_apr_atoi64, 8
ap_hack_apr_atoi64:
	.quad	apr_atoi64
	.globl	ap_hack_apr_strfsize
	.align 8
	.type	ap_hack_apr_strfsize, @object
	.size	ap_hack_apr_strfsize, 8
ap_hack_apr_strfsize:
	.quad	apr_strfsize
	.globl	ap_hack_apr_strmatch_precompile
	.align 8
	.type	ap_hack_apr_strmatch_precompile, @object
	.size	ap_hack_apr_strmatch_precompile, 8
ap_hack_apr_strmatch_precompile:
	.quad	apr_strmatch_precompile
	.globl	ap_hack_apr_table_elts
	.align 8
	.type	ap_hack_apr_table_elts, @object
	.size	ap_hack_apr_table_elts, 8
ap_hack_apr_table_elts:
	.quad	apr_table_elts
	.globl	ap_hack_apr_is_empty_table
	.align 8
	.type	ap_hack_apr_is_empty_table, @object
	.size	ap_hack_apr_is_empty_table, 8
ap_hack_apr_is_empty_table:
	.quad	apr_is_empty_table
	.globl	ap_hack_apr_is_empty_array
	.align 8
	.type	ap_hack_apr_is_empty_array, @object
	.size	ap_hack_apr_is_empty_array, 8
ap_hack_apr_is_empty_array:
	.quad	apr_is_empty_array
	.globl	ap_hack_apr_array_make
	.align 8
	.type	ap_hack_apr_array_make, @object
	.size	ap_hack_apr_array_make, 8
ap_hack_apr_array_make:
	.quad	apr_array_make
	.globl	ap_hack_apr_array_push
	.align 8
	.type	ap_hack_apr_array_push, @object
	.size	ap_hack_apr_array_push, 8
ap_hack_apr_array_push:
	.quad	apr_array_push
	.globl	ap_hack_apr_array_pop
	.align 8
	.type	ap_hack_apr_array_pop, @object
	.size	ap_hack_apr_array_pop, 8
ap_hack_apr_array_pop:
	.quad	apr_array_pop
	.globl	ap_hack_apr_array_clear
	.align 8
	.type	ap_hack_apr_array_clear, @object
	.size	ap_hack_apr_array_clear, 8
ap_hack_apr_array_clear:
	.quad	apr_array_clear
	.globl	ap_hack_apr_array_cat
	.align 8
	.type	ap_hack_apr_array_cat, @object
	.size	ap_hack_apr_array_cat, 8
ap_hack_apr_array_cat:
	.quad	apr_array_cat
	.globl	ap_hack_apr_array_copy
	.align 8
	.type	ap_hack_apr_array_copy, @object
	.size	ap_hack_apr_array_copy, 8
ap_hack_apr_array_copy:
	.quad	apr_array_copy
	.globl	ap_hack_apr_array_copy_hdr
	.align 8
	.type	ap_hack_apr_array_copy_hdr, @object
	.size	ap_hack_apr_array_copy_hdr, 8
ap_hack_apr_array_copy_hdr:
	.quad	apr_array_copy_hdr
	.globl	ap_hack_apr_array_append
	.align 8
	.type	ap_hack_apr_array_append, @object
	.size	ap_hack_apr_array_append, 8
ap_hack_apr_array_append:
	.quad	apr_array_append
	.globl	ap_hack_apr_array_pstrcat
	.align 8
	.type	ap_hack_apr_array_pstrcat, @object
	.size	ap_hack_apr_array_pstrcat, 8
ap_hack_apr_array_pstrcat:
	.quad	apr_array_pstrcat
	.globl	ap_hack_apr_table_make
	.align 8
	.type	ap_hack_apr_table_make, @object
	.size	ap_hack_apr_table_make, 8
ap_hack_apr_table_make:
	.quad	apr_table_make
	.globl	ap_hack_apr_table_copy
	.align 8
	.type	ap_hack_apr_table_copy, @object
	.size	ap_hack_apr_table_copy, 8
ap_hack_apr_table_copy:
	.quad	apr_table_copy
	.globl	ap_hack_apr_table_clone
	.align 8
	.type	ap_hack_apr_table_clone, @object
	.size	ap_hack_apr_table_clone, 8
ap_hack_apr_table_clone:
	.quad	apr_table_clone
	.globl	ap_hack_apr_table_clear
	.align 8
	.type	ap_hack_apr_table_clear, @object
	.size	ap_hack_apr_table_clear, 8
ap_hack_apr_table_clear:
	.quad	apr_table_clear
	.globl	ap_hack_apr_table_get
	.align 8
	.type	ap_hack_apr_table_get, @object
	.size	ap_hack_apr_table_get, 8
ap_hack_apr_table_get:
	.quad	apr_table_get
	.globl	ap_hack_apr_table_getm
	.align 8
	.type	ap_hack_apr_table_getm, @object
	.size	ap_hack_apr_table_getm, 8
ap_hack_apr_table_getm:
	.quad	apr_table_getm
	.globl	ap_hack_apr_table_set
	.align 8
	.type	ap_hack_apr_table_set, @object
	.size	ap_hack_apr_table_set, 8
ap_hack_apr_table_set:
	.quad	apr_table_set
	.globl	ap_hack_apr_table_setn
	.align 8
	.type	ap_hack_apr_table_setn, @object
	.size	ap_hack_apr_table_setn, 8
ap_hack_apr_table_setn:
	.quad	apr_table_setn
	.globl	ap_hack_apr_table_unset
	.align 8
	.type	ap_hack_apr_table_unset, @object
	.size	ap_hack_apr_table_unset, 8
ap_hack_apr_table_unset:
	.quad	apr_table_unset
	.globl	ap_hack_apr_table_merge
	.align 8
	.type	ap_hack_apr_table_merge, @object
	.size	ap_hack_apr_table_merge, 8
ap_hack_apr_table_merge:
	.quad	apr_table_merge
	.globl	ap_hack_apr_table_mergen
	.align 8
	.type	ap_hack_apr_table_mergen, @object
	.size	ap_hack_apr_table_mergen, 8
ap_hack_apr_table_mergen:
	.quad	apr_table_mergen
	.globl	ap_hack_apr_table_add
	.align 8
	.type	ap_hack_apr_table_add, @object
	.size	ap_hack_apr_table_add, 8
ap_hack_apr_table_add:
	.quad	apr_table_add
	.globl	ap_hack_apr_table_addn
	.align 8
	.type	ap_hack_apr_table_addn, @object
	.size	ap_hack_apr_table_addn, 8
ap_hack_apr_table_addn:
	.quad	apr_table_addn
	.globl	ap_hack_apr_table_overlay
	.align 8
	.type	ap_hack_apr_table_overlay, @object
	.size	ap_hack_apr_table_overlay, 8
ap_hack_apr_table_overlay:
	.quad	apr_table_overlay
	.globl	ap_hack_apr_table_do
	.align 8
	.type	ap_hack_apr_table_do, @object
	.size	ap_hack_apr_table_do, 8
ap_hack_apr_table_do:
	.quad	apr_table_do
	.globl	ap_hack_apr_table_vdo
	.align 8
	.type	ap_hack_apr_table_vdo, @object
	.size	ap_hack_apr_table_vdo, 8
ap_hack_apr_table_vdo:
	.quad	apr_table_vdo
	.globl	ap_hack_apr_table_overlap
	.align 8
	.type	ap_hack_apr_table_overlap, @object
	.size	ap_hack_apr_table_overlap, 8
ap_hack_apr_table_overlap:
	.quad	apr_table_overlap
	.globl	ap_hack_apr_table_compress
	.align 8
	.type	ap_hack_apr_table_compress, @object
	.size	ap_hack_apr_table_compress, 8
ap_hack_apr_table_compress:
	.quad	apr_table_compress
	.globl	ap_hack_apr_thread_cond_create
	.align 8
	.type	ap_hack_apr_thread_cond_create, @object
	.size	ap_hack_apr_thread_cond_create, 8
ap_hack_apr_thread_cond_create:
	.quad	apr_thread_cond_create
	.globl	ap_hack_apr_thread_cond_wait
	.align 8
	.type	ap_hack_apr_thread_cond_wait, @object
	.size	ap_hack_apr_thread_cond_wait, 8
ap_hack_apr_thread_cond_wait:
	.quad	apr_thread_cond_wait
	.globl	ap_hack_apr_thread_cond_timedwait
	.align 8
	.type	ap_hack_apr_thread_cond_timedwait, @object
	.size	ap_hack_apr_thread_cond_timedwait, 8
ap_hack_apr_thread_cond_timedwait:
	.quad	apr_thread_cond_timedwait
	.globl	ap_hack_apr_thread_cond_signal
	.align 8
	.type	ap_hack_apr_thread_cond_signal, @object
	.size	ap_hack_apr_thread_cond_signal, 8
ap_hack_apr_thread_cond_signal:
	.quad	apr_thread_cond_signal
	.globl	ap_hack_apr_thread_cond_broadcast
	.align 8
	.type	ap_hack_apr_thread_cond_broadcast, @object
	.size	ap_hack_apr_thread_cond_broadcast, 8
ap_hack_apr_thread_cond_broadcast:
	.quad	apr_thread_cond_broadcast
	.globl	ap_hack_apr_thread_cond_destroy
	.align 8
	.type	ap_hack_apr_thread_cond_destroy, @object
	.size	ap_hack_apr_thread_cond_destroy, 8
ap_hack_apr_thread_cond_destroy:
	.quad	apr_thread_cond_destroy
	.globl	ap_hack_apr_thread_cond_pool_get
	.align 8
	.type	ap_hack_apr_thread_cond_pool_get, @object
	.size	ap_hack_apr_thread_cond_pool_get, 8
ap_hack_apr_thread_cond_pool_get:
	.quad	apr_thread_cond_pool_get
	.globl	ap_hack_apr_thread_mutex_create
	.align 8
	.type	ap_hack_apr_thread_mutex_create, @object
	.size	ap_hack_apr_thread_mutex_create, 8
ap_hack_apr_thread_mutex_create:
	.quad	apr_thread_mutex_create
	.globl	ap_hack_apr_thread_mutex_lock
	.align 8
	.type	ap_hack_apr_thread_mutex_lock, @object
	.size	ap_hack_apr_thread_mutex_lock, 8
ap_hack_apr_thread_mutex_lock:
	.quad	apr_thread_mutex_lock
	.globl	ap_hack_apr_thread_mutex_trylock
	.align 8
	.type	ap_hack_apr_thread_mutex_trylock, @object
	.size	ap_hack_apr_thread_mutex_trylock, 8
ap_hack_apr_thread_mutex_trylock:
	.quad	apr_thread_mutex_trylock
	.globl	ap_hack_apr_thread_mutex_unlock
	.align 8
	.type	ap_hack_apr_thread_mutex_unlock, @object
	.size	ap_hack_apr_thread_mutex_unlock, 8
ap_hack_apr_thread_mutex_unlock:
	.quad	apr_thread_mutex_unlock
	.globl	ap_hack_apr_thread_mutex_destroy
	.align 8
	.type	ap_hack_apr_thread_mutex_destroy, @object
	.size	ap_hack_apr_thread_mutex_destroy, 8
ap_hack_apr_thread_mutex_destroy:
	.quad	apr_thread_mutex_destroy
	.globl	ap_hack_apr_thread_mutex_pool_get
	.align 8
	.type	ap_hack_apr_thread_mutex_pool_get, @object
	.size	ap_hack_apr_thread_mutex_pool_get, 8
ap_hack_apr_thread_mutex_pool_get:
	.quad	apr_thread_mutex_pool_get
	.globl	ap_hack_apr_thread_pool_create
	.align 8
	.type	ap_hack_apr_thread_pool_create, @object
	.size	ap_hack_apr_thread_pool_create, 8
ap_hack_apr_thread_pool_create:
	.quad	apr_thread_pool_create
	.globl	ap_hack_apr_thread_pool_destroy
	.align 8
	.type	ap_hack_apr_thread_pool_destroy, @object
	.size	ap_hack_apr_thread_pool_destroy, 8
ap_hack_apr_thread_pool_destroy:
	.quad	apr_thread_pool_destroy
	.globl	ap_hack_apr_thread_pool_push
	.align 8
	.type	ap_hack_apr_thread_pool_push, @object
	.size	ap_hack_apr_thread_pool_push, 8
ap_hack_apr_thread_pool_push:
	.quad	apr_thread_pool_push
	.globl	ap_hack_apr_thread_pool_schedule
	.align 8
	.type	ap_hack_apr_thread_pool_schedule, @object
	.size	ap_hack_apr_thread_pool_schedule, 8
ap_hack_apr_thread_pool_schedule:
	.quad	apr_thread_pool_schedule
	.globl	ap_hack_apr_thread_pool_top
	.align 8
	.type	ap_hack_apr_thread_pool_top, @object
	.size	ap_hack_apr_thread_pool_top, 8
ap_hack_apr_thread_pool_top:
	.quad	apr_thread_pool_top
	.globl	ap_hack_apr_thread_pool_tasks_cancel
	.align 8
	.type	ap_hack_apr_thread_pool_tasks_cancel, @object
	.size	ap_hack_apr_thread_pool_tasks_cancel, 8
ap_hack_apr_thread_pool_tasks_cancel:
	.quad	apr_thread_pool_tasks_cancel
	.globl	ap_hack_apr_thread_pool_tasks_count
	.align 8
	.type	ap_hack_apr_thread_pool_tasks_count, @object
	.size	ap_hack_apr_thread_pool_tasks_count, 8
ap_hack_apr_thread_pool_tasks_count:
	.quad	apr_thread_pool_tasks_count
	.globl	ap_hack_apr_thread_pool_scheduled_tasks_count
	.align 8
	.type	ap_hack_apr_thread_pool_scheduled_tasks_count, @object
	.size	ap_hack_apr_thread_pool_scheduled_tasks_count, 8
ap_hack_apr_thread_pool_scheduled_tasks_count:
	.quad	apr_thread_pool_scheduled_tasks_count
	.globl	ap_hack_apr_thread_pool_threads_count
	.align 8
	.type	ap_hack_apr_thread_pool_threads_count, @object
	.size	ap_hack_apr_thread_pool_threads_count, 8
ap_hack_apr_thread_pool_threads_count:
	.quad	apr_thread_pool_threads_count
	.globl	ap_hack_apr_thread_pool_busy_count
	.align 8
	.type	ap_hack_apr_thread_pool_busy_count, @object
	.size	ap_hack_apr_thread_pool_busy_count, 8
ap_hack_apr_thread_pool_busy_count:
	.quad	apr_thread_pool_busy_count
	.globl	ap_hack_apr_thread_pool_idle_count
	.align 8
	.type	ap_hack_apr_thread_pool_idle_count, @object
	.size	ap_hack_apr_thread_pool_idle_count, 8
ap_hack_apr_thread_pool_idle_count:
	.quad	apr_thread_pool_idle_count
	.globl	ap_hack_apr_thread_pool_idle_max_set
	.align 8
	.type	ap_hack_apr_thread_pool_idle_max_set, @object
	.size	ap_hack_apr_thread_pool_idle_max_set, 8
ap_hack_apr_thread_pool_idle_max_set:
	.quad	apr_thread_pool_idle_max_set
	.globl	ap_hack_apr_thread_pool_idle_max_get
	.align 8
	.type	ap_hack_apr_thread_pool_idle_max_get, @object
	.size	ap_hack_apr_thread_pool_idle_max_get, 8
ap_hack_apr_thread_pool_idle_max_get:
	.quad	apr_thread_pool_idle_max_get
	.globl	ap_hack_apr_thread_pool_thread_max_set
	.align 8
	.type	ap_hack_apr_thread_pool_thread_max_set, @object
	.size	ap_hack_apr_thread_pool_thread_max_set, 8
ap_hack_apr_thread_pool_thread_max_set:
	.quad	apr_thread_pool_thread_max_set
	.globl	ap_hack_apr_thread_pool_thread_max_get
	.align 8
	.type	ap_hack_apr_thread_pool_thread_max_get, @object
	.size	ap_hack_apr_thread_pool_thread_max_get, 8
ap_hack_apr_thread_pool_thread_max_get:
	.quad	apr_thread_pool_thread_max_get
	.globl	ap_hack_apr_thread_pool_threshold_set
	.align 8
	.type	ap_hack_apr_thread_pool_threshold_set, @object
	.size	ap_hack_apr_thread_pool_threshold_set, 8
ap_hack_apr_thread_pool_threshold_set:
	.quad	apr_thread_pool_threshold_set
	.globl	ap_hack_apr_thread_pool_threshold_get
	.align 8
	.type	ap_hack_apr_thread_pool_threshold_get, @object
	.size	ap_hack_apr_thread_pool_threshold_get, 8
ap_hack_apr_thread_pool_threshold_get:
	.quad	apr_thread_pool_threshold_get
	.globl	ap_hack_apr_thread_pool_task_owner_get
	.align 8
	.type	ap_hack_apr_thread_pool_task_owner_get, @object
	.size	ap_hack_apr_thread_pool_task_owner_get, 8
ap_hack_apr_thread_pool_task_owner_get:
	.quad	apr_thread_pool_task_owner_get
	.globl	ap_hack_apr_threadattr_create
	.align 8
	.type	ap_hack_apr_threadattr_create, @object
	.size	ap_hack_apr_threadattr_create, 8
ap_hack_apr_threadattr_create:
	.quad	apr_threadattr_create
	.globl	ap_hack_apr_threadattr_detach_set
	.align 8
	.type	ap_hack_apr_threadattr_detach_set, @object
	.size	ap_hack_apr_threadattr_detach_set, 8
ap_hack_apr_threadattr_detach_set:
	.quad	apr_threadattr_detach_set
	.globl	ap_hack_apr_threadattr_detach_get
	.align 8
	.type	ap_hack_apr_threadattr_detach_get, @object
	.size	ap_hack_apr_threadattr_detach_get, 8
ap_hack_apr_threadattr_detach_get:
	.quad	apr_threadattr_detach_get
	.globl	ap_hack_apr_threadattr_stacksize_set
	.align 8
	.type	ap_hack_apr_threadattr_stacksize_set, @object
	.size	ap_hack_apr_threadattr_stacksize_set, 8
ap_hack_apr_threadattr_stacksize_set:
	.quad	apr_threadattr_stacksize_set
	.globl	ap_hack_apr_threadattr_guardsize_set
	.align 8
	.type	ap_hack_apr_threadattr_guardsize_set, @object
	.size	ap_hack_apr_threadattr_guardsize_set, 8
ap_hack_apr_threadattr_guardsize_set:
	.quad	apr_threadattr_guardsize_set
	.globl	ap_hack_apr_thread_create
	.align 8
	.type	ap_hack_apr_thread_create, @object
	.size	ap_hack_apr_thread_create, 8
ap_hack_apr_thread_create:
	.quad	apr_thread_create
	.globl	ap_hack_apr_thread_exit
	.align 8
	.type	ap_hack_apr_thread_exit, @object
	.size	ap_hack_apr_thread_exit, 8
ap_hack_apr_thread_exit:
	.quad	apr_thread_exit
	.globl	ap_hack_apr_thread_join
	.align 8
	.type	ap_hack_apr_thread_join, @object
	.size	ap_hack_apr_thread_join, 8
ap_hack_apr_thread_join:
	.quad	apr_thread_join
	.globl	ap_hack_apr_thread_yield
	.align 8
	.type	ap_hack_apr_thread_yield, @object
	.size	ap_hack_apr_thread_yield, 8
ap_hack_apr_thread_yield:
	.quad	apr_thread_yield
	.globl	ap_hack_apr_thread_once_init
	.align 8
	.type	ap_hack_apr_thread_once_init, @object
	.size	ap_hack_apr_thread_once_init, 8
ap_hack_apr_thread_once_init:
	.quad	apr_thread_once_init
	.globl	ap_hack_apr_thread_once
	.align 8
	.type	ap_hack_apr_thread_once, @object
	.size	ap_hack_apr_thread_once, 8
ap_hack_apr_thread_once:
	.quad	apr_thread_once
	.globl	ap_hack_apr_thread_detach
	.align 8
	.type	ap_hack_apr_thread_detach, @object
	.size	ap_hack_apr_thread_detach, 8
ap_hack_apr_thread_detach:
	.quad	apr_thread_detach
	.globl	ap_hack_apr_thread_data_get
	.align 8
	.type	ap_hack_apr_thread_data_get, @object
	.size	ap_hack_apr_thread_data_get, 8
ap_hack_apr_thread_data_get:
	.quad	apr_thread_data_get
	.globl	ap_hack_apr_thread_data_set
	.align 8
	.type	ap_hack_apr_thread_data_set, @object
	.size	ap_hack_apr_thread_data_set, 8
ap_hack_apr_thread_data_set:
	.quad	apr_thread_data_set
	.globl	ap_hack_apr_threadkey_private_create
	.align 8
	.type	ap_hack_apr_threadkey_private_create, @object
	.size	ap_hack_apr_threadkey_private_create, 8
ap_hack_apr_threadkey_private_create:
	.quad	apr_threadkey_private_create
	.globl	ap_hack_apr_threadkey_private_get
	.align 8
	.type	ap_hack_apr_threadkey_private_get, @object
	.size	ap_hack_apr_threadkey_private_get, 8
ap_hack_apr_threadkey_private_get:
	.quad	apr_threadkey_private_get
	.globl	ap_hack_apr_threadkey_private_set
	.align 8
	.type	ap_hack_apr_threadkey_private_set, @object
	.size	ap_hack_apr_threadkey_private_set, 8
ap_hack_apr_threadkey_private_set:
	.quad	apr_threadkey_private_set
	.globl	ap_hack_apr_threadkey_private_delete
	.align 8
	.type	ap_hack_apr_threadkey_private_delete, @object
	.size	ap_hack_apr_threadkey_private_delete, 8
ap_hack_apr_threadkey_private_delete:
	.quad	apr_threadkey_private_delete
	.globl	ap_hack_apr_threadkey_data_get
	.align 8
	.type	ap_hack_apr_threadkey_data_get, @object
	.size	ap_hack_apr_threadkey_data_get, 8
ap_hack_apr_threadkey_data_get:
	.quad	apr_threadkey_data_get
	.globl	ap_hack_apr_threadkey_data_set
	.align 8
	.type	ap_hack_apr_threadkey_data_set, @object
	.size	ap_hack_apr_threadkey_data_set, 8
ap_hack_apr_threadkey_data_set:
	.quad	apr_threadkey_data_set
	.globl	ap_hack_apr_procattr_create
	.align 8
	.type	ap_hack_apr_procattr_create, @object
	.size	ap_hack_apr_procattr_create, 8
ap_hack_apr_procattr_create:
	.quad	apr_procattr_create
	.globl	ap_hack_apr_procattr_io_set
	.align 8
	.type	ap_hack_apr_procattr_io_set, @object
	.size	ap_hack_apr_procattr_io_set, 8
ap_hack_apr_procattr_io_set:
	.quad	apr_procattr_io_set
	.globl	ap_hack_apr_procattr_child_in_set
	.align 8
	.type	ap_hack_apr_procattr_child_in_set, @object
	.size	ap_hack_apr_procattr_child_in_set, 8
ap_hack_apr_procattr_child_in_set:
	.quad	apr_procattr_child_in_set
	.globl	ap_hack_apr_procattr_child_out_set
	.align 8
	.type	ap_hack_apr_procattr_child_out_set, @object
	.size	ap_hack_apr_procattr_child_out_set, 8
ap_hack_apr_procattr_child_out_set:
	.quad	apr_procattr_child_out_set
	.globl	ap_hack_apr_procattr_child_err_set
	.align 8
	.type	ap_hack_apr_procattr_child_err_set, @object
	.size	ap_hack_apr_procattr_child_err_set, 8
ap_hack_apr_procattr_child_err_set:
	.quad	apr_procattr_child_err_set
	.globl	ap_hack_apr_procattr_dir_set
	.align 8
	.type	ap_hack_apr_procattr_dir_set, @object
	.size	ap_hack_apr_procattr_dir_set, 8
ap_hack_apr_procattr_dir_set:
	.quad	apr_procattr_dir_set
	.globl	ap_hack_apr_procattr_cmdtype_set
	.align 8
	.type	ap_hack_apr_procattr_cmdtype_set, @object
	.size	ap_hack_apr_procattr_cmdtype_set, 8
ap_hack_apr_procattr_cmdtype_set:
	.quad	apr_procattr_cmdtype_set
	.globl	ap_hack_apr_procattr_detach_set
	.align 8
	.type	ap_hack_apr_procattr_detach_set, @object
	.size	ap_hack_apr_procattr_detach_set, 8
ap_hack_apr_procattr_detach_set:
	.quad	apr_procattr_detach_set
	.globl	ap_hack_apr_procattr_limit_set
	.align 8
	.type	ap_hack_apr_procattr_limit_set, @object
	.size	ap_hack_apr_procattr_limit_set, 8
ap_hack_apr_procattr_limit_set:
	.quad	apr_procattr_limit_set
	.globl	ap_hack_apr_procattr_child_errfn_set
	.align 8
	.type	ap_hack_apr_procattr_child_errfn_set, @object
	.size	ap_hack_apr_procattr_child_errfn_set, 8
ap_hack_apr_procattr_child_errfn_set:
	.quad	apr_procattr_child_errfn_set
	.globl	ap_hack_apr_procattr_error_check_set
	.align 8
	.type	ap_hack_apr_procattr_error_check_set, @object
	.size	ap_hack_apr_procattr_error_check_set, 8
ap_hack_apr_procattr_error_check_set:
	.quad	apr_procattr_error_check_set
	.globl	ap_hack_apr_procattr_addrspace_set
	.align 8
	.type	ap_hack_apr_procattr_addrspace_set, @object
	.size	ap_hack_apr_procattr_addrspace_set, 8
ap_hack_apr_procattr_addrspace_set:
	.quad	apr_procattr_addrspace_set
	.globl	ap_hack_apr_procattr_user_set
	.align 8
	.type	ap_hack_apr_procattr_user_set, @object
	.size	ap_hack_apr_procattr_user_set, 8
ap_hack_apr_procattr_user_set:
	.quad	apr_procattr_user_set
	.globl	ap_hack_apr_procattr_group_set
	.align 8
	.type	ap_hack_apr_procattr_group_set, @object
	.size	ap_hack_apr_procattr_group_set, 8
ap_hack_apr_procattr_group_set:
	.quad	apr_procattr_group_set
	.globl	ap_hack_apr_proc_fork
	.align 8
	.type	ap_hack_apr_proc_fork, @object
	.size	ap_hack_apr_proc_fork, 8
ap_hack_apr_proc_fork:
	.quad	apr_proc_fork
	.globl	ap_hack_apr_proc_create
	.align 8
	.type	ap_hack_apr_proc_create, @object
	.size	ap_hack_apr_proc_create, 8
ap_hack_apr_proc_create:
	.quad	apr_proc_create
	.globl	ap_hack_apr_proc_wait
	.align 8
	.type	ap_hack_apr_proc_wait, @object
	.size	ap_hack_apr_proc_wait, 8
ap_hack_apr_proc_wait:
	.quad	apr_proc_wait
	.globl	ap_hack_apr_proc_wait_all_procs
	.align 8
	.type	ap_hack_apr_proc_wait_all_procs, @object
	.size	ap_hack_apr_proc_wait_all_procs, 8
ap_hack_apr_proc_wait_all_procs:
	.quad	apr_proc_wait_all_procs
	.globl	ap_hack_apr_proc_detach
	.align 8
	.type	ap_hack_apr_proc_detach, @object
	.size	ap_hack_apr_proc_detach, 8
ap_hack_apr_proc_detach:
	.quad	apr_proc_detach
	.globl	ap_hack_apr_proc_other_child_register
	.align 8
	.type	ap_hack_apr_proc_other_child_register, @object
	.size	ap_hack_apr_proc_other_child_register, 8
ap_hack_apr_proc_other_child_register:
	.quad	apr_proc_other_child_register
	.globl	ap_hack_apr_proc_other_child_unregister
	.align 8
	.type	ap_hack_apr_proc_other_child_unregister, @object
	.size	ap_hack_apr_proc_other_child_unregister, 8
ap_hack_apr_proc_other_child_unregister:
	.quad	apr_proc_other_child_unregister
	.globl	ap_hack_apr_proc_other_child_alert
	.align 8
	.type	ap_hack_apr_proc_other_child_alert, @object
	.size	ap_hack_apr_proc_other_child_alert, 8
ap_hack_apr_proc_other_child_alert:
	.quad	apr_proc_other_child_alert
	.globl	ap_hack_apr_proc_other_child_refresh
	.align 8
	.type	ap_hack_apr_proc_other_child_refresh, @object
	.size	ap_hack_apr_proc_other_child_refresh, 8
ap_hack_apr_proc_other_child_refresh:
	.quad	apr_proc_other_child_refresh
	.globl	ap_hack_apr_proc_other_child_refresh_all
	.align 8
	.type	ap_hack_apr_proc_other_child_refresh_all, @object
	.size	ap_hack_apr_proc_other_child_refresh_all, 8
ap_hack_apr_proc_other_child_refresh_all:
	.quad	apr_proc_other_child_refresh_all
	.globl	ap_hack_apr_proc_kill
	.align 8
	.type	ap_hack_apr_proc_kill, @object
	.size	ap_hack_apr_proc_kill, 8
ap_hack_apr_proc_kill:
	.quad	apr_proc_kill
	.globl	ap_hack_apr_pool_note_subprocess
	.align 8
	.type	ap_hack_apr_pool_note_subprocess, @object
	.size	ap_hack_apr_pool_note_subprocess, 8
ap_hack_apr_pool_note_subprocess:
	.quad	apr_pool_note_subprocess
	.globl	ap_hack_apr_setup_signal_thread
	.align 8
	.type	ap_hack_apr_setup_signal_thread, @object
	.size	ap_hack_apr_setup_signal_thread, 8
ap_hack_apr_setup_signal_thread:
	.quad	apr_setup_signal_thread
	.globl	ap_hack_apr_signal_thread
	.align 8
	.type	ap_hack_apr_signal_thread, @object
	.size	ap_hack_apr_signal_thread, 8
ap_hack_apr_signal_thread:
	.quad	apr_signal_thread
	.globl	ap_hack_apr_thread_pool_get
	.align 8
	.type	ap_hack_apr_thread_pool_get, @object
	.size	ap_hack_apr_thread_pool_get, 8
ap_hack_apr_thread_pool_get:
	.quad	apr_thread_pool_get
	.globl	ap_hack_apr_thread_rwlock_create
	.align 8
	.type	ap_hack_apr_thread_rwlock_create, @object
	.size	ap_hack_apr_thread_rwlock_create, 8
ap_hack_apr_thread_rwlock_create:
	.quad	apr_thread_rwlock_create
	.globl	ap_hack_apr_thread_rwlock_rdlock
	.align 8
	.type	ap_hack_apr_thread_rwlock_rdlock, @object
	.size	ap_hack_apr_thread_rwlock_rdlock, 8
ap_hack_apr_thread_rwlock_rdlock:
	.quad	apr_thread_rwlock_rdlock
	.globl	ap_hack_apr_thread_rwlock_tryrdlock
	.align 8
	.type	ap_hack_apr_thread_rwlock_tryrdlock, @object
	.size	ap_hack_apr_thread_rwlock_tryrdlock, 8
ap_hack_apr_thread_rwlock_tryrdlock:
	.quad	apr_thread_rwlock_tryrdlock
	.globl	ap_hack_apr_thread_rwlock_wrlock
	.align 8
	.type	ap_hack_apr_thread_rwlock_wrlock, @object
	.size	ap_hack_apr_thread_rwlock_wrlock, 8
ap_hack_apr_thread_rwlock_wrlock:
	.quad	apr_thread_rwlock_wrlock
	.globl	ap_hack_apr_thread_rwlock_trywrlock
	.align 8
	.type	ap_hack_apr_thread_rwlock_trywrlock, @object
	.size	ap_hack_apr_thread_rwlock_trywrlock, 8
ap_hack_apr_thread_rwlock_trywrlock:
	.quad	apr_thread_rwlock_trywrlock
	.globl	ap_hack_apr_thread_rwlock_unlock
	.align 8
	.type	ap_hack_apr_thread_rwlock_unlock, @object
	.size	ap_hack_apr_thread_rwlock_unlock, 8
ap_hack_apr_thread_rwlock_unlock:
	.quad	apr_thread_rwlock_unlock
	.globl	ap_hack_apr_thread_rwlock_destroy
	.align 8
	.type	ap_hack_apr_thread_rwlock_destroy, @object
	.size	ap_hack_apr_thread_rwlock_destroy, 8
ap_hack_apr_thread_rwlock_destroy:
	.quad	apr_thread_rwlock_destroy
	.globl	ap_hack_apr_thread_rwlock_pool_get
	.align 8
	.type	ap_hack_apr_thread_rwlock_pool_get, @object
	.size	ap_hack_apr_thread_rwlock_pool_get, 8
ap_hack_apr_thread_rwlock_pool_get:
	.quad	apr_thread_rwlock_pool_get
	.globl	ap_hack_apr_time_now
	.align 8
	.type	ap_hack_apr_time_now, @object
	.size	ap_hack_apr_time_now, 8
ap_hack_apr_time_now:
	.quad	apr_time_now
	.globl	ap_hack_apr_time_ansi_put
	.align 8
	.type	ap_hack_apr_time_ansi_put, @object
	.size	ap_hack_apr_time_ansi_put, 8
ap_hack_apr_time_ansi_put:
	.quad	apr_time_ansi_put
	.globl	ap_hack_apr_time_exp_tz
	.align 8
	.type	ap_hack_apr_time_exp_tz, @object
	.size	ap_hack_apr_time_exp_tz, 8
ap_hack_apr_time_exp_tz:
	.quad	apr_time_exp_tz
	.globl	ap_hack_apr_time_exp_gmt
	.align 8
	.type	ap_hack_apr_time_exp_gmt, @object
	.size	ap_hack_apr_time_exp_gmt, 8
ap_hack_apr_time_exp_gmt:
	.quad	apr_time_exp_gmt
	.globl	ap_hack_apr_time_exp_lt
	.align 8
	.type	ap_hack_apr_time_exp_lt, @object
	.size	ap_hack_apr_time_exp_lt, 8
ap_hack_apr_time_exp_lt:
	.quad	apr_time_exp_lt
	.globl	ap_hack_apr_time_exp_get
	.align 8
	.type	ap_hack_apr_time_exp_get, @object
	.size	ap_hack_apr_time_exp_get, 8
ap_hack_apr_time_exp_get:
	.quad	apr_time_exp_get
	.globl	ap_hack_apr_time_exp_gmt_get
	.align 8
	.type	ap_hack_apr_time_exp_gmt_get, @object
	.size	ap_hack_apr_time_exp_gmt_get, 8
ap_hack_apr_time_exp_gmt_get:
	.quad	apr_time_exp_gmt_get
	.globl	ap_hack_apr_sleep
	.align 8
	.type	ap_hack_apr_sleep, @object
	.size	ap_hack_apr_sleep, 8
ap_hack_apr_sleep:
	.quad	apr_sleep
	.globl	ap_hack_apr_rfc822_date
	.align 8
	.type	ap_hack_apr_rfc822_date, @object
	.size	ap_hack_apr_rfc822_date, 8
ap_hack_apr_rfc822_date:
	.quad	apr_rfc822_date
	.globl	ap_hack_apr_ctime
	.align 8
	.type	ap_hack_apr_ctime, @object
	.size	ap_hack_apr_ctime, 8
ap_hack_apr_ctime:
	.quad	apr_ctime
	.globl	ap_hack_apr_strftime
	.align 8
	.type	ap_hack_apr_strftime, @object
	.size	ap_hack_apr_strftime, 8
ap_hack_apr_strftime:
	.quad	apr_strftime
	.globl	ap_hack_apr_time_clock_hires
	.align 8
	.type	ap_hack_apr_time_clock_hires, @object
	.size	ap_hack_apr_time_clock_hires, 8
ap_hack_apr_time_clock_hires:
	.quad	apr_time_clock_hires
	.globl	ap_hack_apr_uri_port_of_scheme
	.align 8
	.type	ap_hack_apr_uri_port_of_scheme, @object
	.size	ap_hack_apr_uri_port_of_scheme, 8
ap_hack_apr_uri_port_of_scheme:
	.quad	apr_uri_port_of_scheme
	.globl	ap_hack_apr_uri_unparse
	.align 8
	.type	ap_hack_apr_uri_unparse, @object
	.size	ap_hack_apr_uri_unparse, 8
ap_hack_apr_uri_unparse:
	.quad	apr_uri_unparse
	.globl	ap_hack_apr_uri_parse
	.align 8
	.type	ap_hack_apr_uri_parse, @object
	.size	ap_hack_apr_uri_parse, 8
ap_hack_apr_uri_parse:
	.quad	apr_uri_parse
	.globl	ap_hack_apr_uri_parse_hostinfo
	.align 8
	.type	ap_hack_apr_uri_parse_hostinfo, @object
	.size	ap_hack_apr_uri_parse_hostinfo, 8
ap_hack_apr_uri_parse_hostinfo:
	.quad	apr_uri_parse_hostinfo
	.globl	ap_hack_apr_uid_current
	.align 8
	.type	ap_hack_apr_uid_current, @object
	.size	ap_hack_apr_uid_current, 8
ap_hack_apr_uid_current:
	.quad	apr_uid_current
	.globl	ap_hack_apr_uid_name_get
	.align 8
	.type	ap_hack_apr_uid_name_get, @object
	.size	ap_hack_apr_uid_name_get, 8
ap_hack_apr_uid_name_get:
	.quad	apr_uid_name_get
	.globl	ap_hack_apr_uid_get
	.align 8
	.type	ap_hack_apr_uid_get, @object
	.size	ap_hack_apr_uid_get, 8
ap_hack_apr_uid_get:
	.quad	apr_uid_get
	.globl	ap_hack_apr_uid_homepath_get
	.align 8
	.type	ap_hack_apr_uid_homepath_get, @object
	.size	ap_hack_apr_uid_homepath_get, 8
ap_hack_apr_uid_homepath_get:
	.quad	apr_uid_homepath_get
	.globl	ap_hack_apr_gid_name_get
	.align 8
	.type	ap_hack_apr_gid_name_get, @object
	.size	ap_hack_apr_gid_name_get, 8
ap_hack_apr_gid_name_get:
	.quad	apr_gid_name_get
	.globl	ap_hack_apr_gid_get
	.align 8
	.type	ap_hack_apr_gid_get, @object
	.size	ap_hack_apr_gid_get, 8
ap_hack_apr_gid_get:
	.quad	apr_gid_get
	.globl	ap_hack_apr_uuid_get
	.align 8
	.type	ap_hack_apr_uuid_get, @object
	.size	ap_hack_apr_uuid_get, 8
ap_hack_apr_uuid_get:
	.quad	apr_uuid_get
	.globl	ap_hack_apr_uuid_format
	.align 8
	.type	ap_hack_apr_uuid_format, @object
	.size	ap_hack_apr_uuid_format, 8
ap_hack_apr_uuid_format:
	.quad	apr_uuid_format
	.globl	ap_hack_apr_uuid_parse
	.align 8
	.type	ap_hack_apr_uuid_parse, @object
	.size	ap_hack_apr_uuid_parse, 8
ap_hack_apr_uuid_parse:
	.quad	apr_uuid_parse
	.globl	ap_hack_apr_version
	.align 8
	.type	ap_hack_apr_version, @object
	.size	ap_hack_apr_version, 8
ap_hack_apr_version:
	.quad	apr_version
	.globl	ap_hack_apr_version_string
	.align 8
	.type	ap_hack_apr_version_string, @object
	.size	ap_hack_apr_version_string, 8
ap_hack_apr_version_string:
	.quad	apr_version_string
	.globl	ap_hack_apr_xlate_open
	.align 8
	.type	ap_hack_apr_xlate_open, @object
	.size	ap_hack_apr_xlate_open, 8
ap_hack_apr_xlate_open:
	.quad	apr_xlate_open
	.globl	ap_hack_apr_xlate_sb_get
	.align 8
	.type	ap_hack_apr_xlate_sb_get, @object
	.size	ap_hack_apr_xlate_sb_get, 8
ap_hack_apr_xlate_sb_get:
	.quad	apr_xlate_sb_get
	.globl	ap_hack_apr_xlate_conv_buffer
	.align 8
	.type	ap_hack_apr_xlate_conv_buffer, @object
	.size	ap_hack_apr_xlate_conv_buffer, 8
ap_hack_apr_xlate_conv_buffer:
	.quad	apr_xlate_conv_buffer
	.globl	ap_hack_apr_xlate_conv_byte
	.align 8
	.type	ap_hack_apr_xlate_conv_byte, @object
	.size	ap_hack_apr_xlate_conv_byte, 8
ap_hack_apr_xlate_conv_byte:
	.quad	apr_xlate_conv_byte
	.globl	ap_hack_apr_xlate_close
	.align 8
	.type	ap_hack_apr_xlate_close, @object
	.size	ap_hack_apr_xlate_close, 8
ap_hack_apr_xlate_close:
	.quad	apr_xlate_close
	.globl	ap_hack_apr_text_append
	.align 8
	.type	ap_hack_apr_text_append, @object
	.size	ap_hack_apr_text_append, 8
ap_hack_apr_text_append:
	.quad	apr_text_append
	.globl	ap_hack_apr_xml_parser_create
	.align 8
	.type	ap_hack_apr_xml_parser_create, @object
	.size	ap_hack_apr_xml_parser_create, 8
ap_hack_apr_xml_parser_create:
	.quad	apr_xml_parser_create
	.globl	ap_hack_apr_xml_parse_file
	.align 8
	.type	ap_hack_apr_xml_parse_file, @object
	.size	ap_hack_apr_xml_parse_file, 8
ap_hack_apr_xml_parse_file:
	.quad	apr_xml_parse_file
	.globl	ap_hack_apr_xml_parser_feed
	.align 8
	.type	ap_hack_apr_xml_parser_feed, @object
	.size	ap_hack_apr_xml_parser_feed, 8
ap_hack_apr_xml_parser_feed:
	.quad	apr_xml_parser_feed
	.globl	ap_hack_apr_xml_parser_done
	.align 8
	.type	ap_hack_apr_xml_parser_done, @object
	.size	ap_hack_apr_xml_parser_done, 8
ap_hack_apr_xml_parser_done:
	.quad	apr_xml_parser_done
	.globl	ap_hack_apr_xml_parser_geterror
	.align 8
	.type	ap_hack_apr_xml_parser_geterror, @object
	.size	ap_hack_apr_xml_parser_geterror, 8
ap_hack_apr_xml_parser_geterror:
	.quad	apr_xml_parser_geterror
	.globl	ap_hack_apr_xml_to_text
	.align 8
	.type	ap_hack_apr_xml_to_text, @object
	.size	ap_hack_apr_xml_to_text, 8
ap_hack_apr_xml_to_text:
	.quad	apr_xml_to_text
	.globl	ap_hack_apr_xml_empty_elem
	.align 8
	.type	ap_hack_apr_xml_empty_elem, @object
	.size	ap_hack_apr_xml_empty_elem, 8
ap_hack_apr_xml_empty_elem:
	.quad	apr_xml_empty_elem
	.globl	ap_hack_apr_xml_quote_string
	.align 8
	.type	ap_hack_apr_xml_quote_string, @object
	.size	ap_hack_apr_xml_quote_string, 8
ap_hack_apr_xml_quote_string:
	.quad	apr_xml_quote_string
	.globl	ap_hack_apr_xml_quote_elem
	.align 8
	.type	ap_hack_apr_xml_quote_elem, @object
	.size	ap_hack_apr_xml_quote_elem, 8
ap_hack_apr_xml_quote_elem:
	.quad	apr_xml_quote_elem
	.globl	ap_hack_apr_xml_insert_uri
	.align 8
	.type	ap_hack_apr_xml_insert_uri, @object
	.size	ap_hack_apr_xml_insert_uri, 8
ap_hack_apr_xml_insert_uri:
	.quad	apr_xml_insert_uri
	.globl	ap_hack_apu_version
	.align 8
	.type	ap_hack_apu_version, @object
	.size	ap_hack_apu_version, 8
ap_hack_apu_version:
	.quad	apu_version
	.globl	ap_hack_apu_version_string
	.align 8
	.type	ap_hack_apu_version_string, @object
	.size	ap_hack_apu_version_string, 8
ap_hack_apu_version_string:
	.quad	apu_version_string
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits
