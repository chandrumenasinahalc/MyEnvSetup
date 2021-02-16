" python indentation settings
function! SetPythonIndent()
     set tabstop=4
     set softtabstop=4
     set shiftwidth=4
     set textwidth=0
     set expandtab
     set autoindent
     set fileformat=unix
endfunction
" C/C++ indentation settings
function! SetCCIndent()
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
    set textwidth=0
    set expandtab
    set fileformat=unix
    Format
endfunction
" function to search in range
function! RangeSearch(direction)
	call inputsave()
	let g:srchstr = input(a:direction)
	call inputrestore()
	if strlen(g:srchstr) > 0
		let g:srchstr = g:srchstr.
					\ '\%>'.(line("'<")-1).'l'.
					\ '\%<'.(line("'>")+1).'l'
	else
		let g:srchstr = ''
	endif
endfunction
" Toggle mouse enable
" copied from http://unix.stackexchange.com/questions/156707/how-to-toggle-mouse-support-in-vim
function! ToggleMouse()
	" check if mouse is enabled
	if &mouse == 'a'
		" disable mouse
		set mouse=
	else
		" enable mouse everywhere
		set mouse=a
	endif
endfunc
 
"Retain the cursor position across the vim sessions
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction
function! GlobalSettings()
    set ts=4
    set sw=4
    set tw=78
    set cindent  "always set indentation on "
    set comments=sl:/*,mb:**,elx:*
    set ruler
    set hlsearch
    set expandtab
    set diffopt+=iwhite
    set diffopt+=vertical
    syntax on
    "set colorcolumn=80
    highlight ColorColumn ctermbg=1
    set backspace=2
    set is
    set ai
    set history=10000
    :hi Search cterm=NONE ctermfg=grey ctermbg=blue
    set nocompatible              " be iMproved, required
    filetype off                  " required
    set laststatus=2
    set wildmenu
    set wildmode=list:longest,full
    if !has('nvim')
        set ttymouse=xterm2
	    tnoremap <Esc> <C-\><C-n>
	    tnoremap <C-v><Esc> <Esc>
    endif
    highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
    set relativenumber
    "set foldmethod=syntax
    set autoindent
    set shell=/bin/bash
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1

    " Or if you have Neovim >= 0.1.5
    if (has("termguicolors"))
        set termguicolors
    endif
    syntax enable
    set backspace=0
    " pipe system and vim clipboard
    set clipboard+=unnamedplus
    set showcmd
    set ttimeoutlen=50
    set inccommand=nosplit
    " autocommand for pertty the json using python json.tool
    "au BufWritePost *.json silent %!python -mjson.tool
    set t_Co=256
    set t_ut=
    "let g:codedark_conservative = 1
    colorscheme codedark
    "create new empty file
    set hidden
    let g:highlightedyank_highlight_duration = 10000
    highlight HighlightedyankRegion cterm=reverse gui=reverse
    set signcolumn=no
endfunction

call GlobalSettings()
