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
