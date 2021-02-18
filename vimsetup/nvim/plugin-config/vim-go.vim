function! VimGoPluginSettings()
    "let g:go_guru_scope = ["github.com/...","golangorg/...","mypractice","..."]
    let g:go_list_type = "quickfix"
    "":au FileType go map <localleader>r <Plug>(go-run)
    "":au FileType go map <localleader>b <Plug>(go-build)
    "":au FileType go map <localleader>i <Plug>(go-imports)
    "":au FileType go map <localleader>d <Plug>(go-describe)
    "":au FileType go map <localleader>dv <Plug>(go-def-vertical)
    "":au FileType go map <localleader>dh <Plug>(go-def-split)
    let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
    let g:go_auto_type_info = 1
    let g:go_fmt_command = "goimports"
    "let g:go_metalinter_autosave = 1
    "let g:go_metalinter_autosave_enabled = ['vet', 'golint', 'errcheck']
    "let g:go_metalinter_autosave_enabled = ['vet', 'golint', 'errcheck', 'varcheck', 'aligncheck', 'ineffassign', 'deadcode','gosimple', 'staticcheck']
    let g:go_metalinter_autosave = 1
    let g:go_metalinter_command = "golangci-lint"
    let g:go_list_type = 'quickfix'

    ", 'varcheck']
    let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck', 'varcheck', 'aligncheck', 'ineffassign', 'deadcode','gosimple', 'staticcheck']
    "let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck' ]
    let g:go_metalinter_deadline = '10s'
    "let g:go_metalinter_command = "--exclude=test"
    let g:go_highlight_functions = 1
    let g:go_highlight_structs = 1
    let g:go_highlight_operators = 1
    let g:go_highlight_methods = 1
    let g:go_highlight_fields = 1
    let g:go_highlight_types = 1
    let g:go_term_enabled = 1
    let g:go_term_mode = "split"
    let g:go_term_height = 13
    let g:go_highlight_build_constraints = 1
    "let g:go_fmt_fail_silently = 1
    let g:go_highlight_function_calls=1
    let g:go_highlight_functions = 1
    let g:go_highlight_variable_assignments=1
    let g:go_highlight_variable_declarations=1
    "let g:go_highlight_function_parameters=1
    let g:go_def_mode='gopls'
    let g:go_info_mode='gopls'
endfunction
call VimGoPluginSettings()
