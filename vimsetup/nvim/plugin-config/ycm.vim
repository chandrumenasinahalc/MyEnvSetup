function! YCMSettings()
    let g:ycm_semantic_triggers =  {
                \   'c' : ['->', '.'],
                \   'go' : ['.'],
                \   'objc' : ['->', '.'],
                \   'cpp,objcpp' : ['->', '.', '::'],
                \   'perl' : ['->'],
                \   'php' : ['->', '::'],
                \   'cs,java,javascript,d,vim,ruby,python,perl6,scala,vb,elixir,go' : ['.'],
                \   'lua' : ['.', ':'],
                \   'erlang' : [':'],
                \ }
    "let g:ycm_global_ycm_extra_conf = "/home/vuser/repo/2xx/visp/coco/.ycm_extra_conf.py"
    "" turn on completion in comments
    "let g:ycm_complete_in_comments=1
    "" load ycm conf by default
    "let g:ycm_confirm_extra_conf=0
    "" turn on tag completion
    "let g:ycm_collect_identifiers_from_tags_files=1
    "" only show completion as a list instead of a sub-window
    "set completeopt+=preview
    "" start completion from the first character
    "let g:ycm_min_num_of_chars_for_completion=1
    "" don't cache completion items
    "let g:ycm_cache_omnifunc=0
    "" complete syntax keywords
    "let g:ycm_seed_identifiers_with_syntax=1
    "set nowrapscan
    " Disable Arrow keys in Escape mode
    "let g:ycm_show_diagnostics_ui = 0
    let g:ycm_complete_in_comments_and_strings=1
    let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
    let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
    let g:ycm_autoclose_preview_window_after_completion = 1

    "This assumes your kernel directory has the word 'kernel'
    let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
    hi! Visual ctermbg=023
    let g:ycm_python_binary_path='/usr/bin/python3'
    " For Neovim 0.1.3 and 0.1.4
endfunction
call YCMSettings()

