function AirlineSettings()
    "let g:airline_section_x=''
    "let g:airline_section_y=''
    "let g:airline_skip_empty_sections = 1
    "vim airline settings
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    "set guifont=Droid\ Sans\ Mono\ 10
    "set guifont=Roboto\ Mono\ Medium\ Italic\ for\ Powerline.ttf
    set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf
    let g:airline_theme = 'atomic'
    let g:airline_powerline_font='Droid Sans Mono for Powerline.otf'
    let g:Powerline_symbols = 'fancy'
    set encoding=utf-8
    set t_Co=256
    set fillchars+=stl:\ ,stlnc:\
    set termencoding=utf-8
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#whitespace#enabled = 0
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'unique_tail'
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
endfunction
call AirlineSettings()
