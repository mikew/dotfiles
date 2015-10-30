" TODO this is to deal with migration from janus
" Is modules loaded?
"
" @param [String] The plugin name
" @return [Boolean]
function! Janus_is_module_loaded(name)
  return 1
endfunction

" Is plugin disabled?
"
" @param [String] The plugin name
function! Janus_is_plugin_disabled(name)
  return 0
endfunction

" Is plugin enabled?
"
" @param [String] The plugin name
" @return [Boolean]
function! Janus_is_plugin_enabled(name)
  return 1
endfunction

" Mapping function
"
" @param [String] The plugin name
" @param [String] The mapping command (map, vmap, nmap or imap)
" @param [String] The mapping keys
" @param [String]* The mapping action
function! Janus_add_mapping(name, mapping_command, mapping_keys, ...)
  if len(a:000) < 1
    throw "The arguments to Janus_add_mapping() should be <name> <mapping_command> <mapping_keys> <mapping_action> [mapping_action]*"
  endif

    let mapping_command = join(a:000)
  "if Janus_is_plugin_enabled(a:name)
    "let mapping_command = join(a:000)
  "else
    "if !Janus_is_module_loaded(a:name)
      "let reason = "Module is not loaded"
    "elseif g:janus_disabled_plugins[a:name]['reason'] == -1
      "return 0
    "else
      "let reason = g:janus_disabled_plugins[a:name]['reason']
    "endif

    "let mapping_command = "<ESC>:echo 'The plugin " . a:name . " is disabled for the following reason: " . reason . ".'<CR>"
  "endif

  let mapping_list = [a:mapping_command, a:mapping_keys, mapping_command]
  exe join(mapping_list)
endfunction
