set nu
set ts=4
set sw=4
set tw=78
set cindent  "always set indentation on "
set comments=sl:/*,mb:**,elx:*
:set ruler
set hlsearch
set expandtab
set diffopt+=iwhite
:syntax on
set colorcolumn=80
highlight ColorColumn ctermbg=1
set backspace=2
" Function key mappings Explained "
" ---------------------------------"
" <F3> - finding functions calling this function
" <F4> - finding this C symbol
" <F5> - finding an egrep pattern
" <F6> - finding a  file
" <F7> - finding a definition
" <F8> - finding assignments to a particular variable

if strlen($CODE_ROOT) > 0

	" setting paths to the cscope and the tag databases ..

	set tags=$CODE_ROOT/tags
	set tags=$CODE_ROOT/TAGS
	set path+=$CODE_ROOT/
	set cscopetag
	cs add  $CODE_ROOT/cscope.out $CODE_ROOT/

	" Adding mappings for working with cscope and tag databases ...
	:noremap <F3> : scs f c <C-R>=expand("<cword>")<CR><CR>
	:noremap <F4> : scs f s <C-R>=expand("<cword>")<CR><CR>
	:noremap <F5> : scs f e <C-R>=expand("<cword>")<CR><CR>
	:noremap <F6> : scs f f <C-R>=expand("<cword>")<CR><CR>
	:noremap <F7> : scs f g <C-R>=expand("<cword>")<CR><CR>
	:noremap <F8> : scs f t <C-R>=expand("<cword>")<CR><CR>
    :noremap <C-x> : bd<CR>

	" Repository Mappings being added ...

endif  "end repo changes "
"Vundle plugin manager config start
set nocompatible              " be iMproved, required
filetype off                  " required

"   Vim Plug plugin manager
"Plug 'scrooloose/nerdtree' , { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] } "Loads only when opening NERDTree"
call plug#begin('~/.vim/bundle')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'fatih/vim-go', { 'for' : ['go', 'markdown'] } "Loads only when editing golang files"
Plug 'nsf/gocode', {'rtp': 'vim/'}
Plug 'derekwyatt/vim-scala'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'valloric/youcompleteme'
Plug 'godlygeek/tabular'
Plug 'raimondi/delimitmate'
Plug 'NLKNguyen/papercolor-theme'
Plug 'easymotion/vim-easymotion'
Plug 'devjoe/vim-codequery'
Plug 'trusktr/seti.vim'
Plug 'Shougo/unite.vim'
Plug 'jodosha/vim-godebug'
Plug 'benmills/vimux'
Plug 'brooth/far.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mhartington/oceanic-next'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'wikitopian/hardmode'

call plug#end()            " required
filetype plugin indent on    " required
"map leader key
let mapleader = ","
let maplocalleader = ";"

"mapings for leader key combination
noremap <Leader>o :NERDTreeToggle<cr>
"map for Ctrlp
noremap <Leader>b :Buffers<cr>
noremap <Leader>f :Files<cr>
"BuffExplore settings
"noremap <Leader>b :ToggleBufExplorer<cr>
"Bufferline settings
"let g:bufferline_echo = 1
"let g:bufferline_active_buffer_left = '['
"let g:bufferline_active_buffer_right = ']'
"let g:bufferline_modified = '+'
"let g:bufferline_show_bufnr = 1
"Git key maoings
noremap <Leader>gd :Gdiff<cr>
noremap <Leader>gb :Gblame<cr>
noremap <Leader>ga :Gadd<cr>
noremap <Leader>gc :Gcommit<cr>
noremap <Leader>gl :Glog<cr>
" Search patterns in visully selected texts
" copied from http://vim.wikia.com/wiki/Search_for_visually_selected_text
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
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
noremap <Leader>m :call ToggleMouse()<cr>
vnoremap // y/<C-R>"<CR>
nnoremap <silent> <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>

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
vnoremap <silent> / :<C-U>call RangeSearch('/')<CR>:if strlen(g:srchstr) > 0\|exec '/'.g:srchstr\|endif<CR>
vnoremap <silent> ? :<C-U>call RangeSearch('?')<CR>:if strlen(g:srchstr) > 0\|exec '?'.g:srchstr\|endif<CR>

set ai
set history=10000
:hi Search cterm=NONE ctermfg=grey ctermbg=blue
":hi Normal ctermfg=blue ctermbg=none
:set mouse=a

":nnoremap H gT
":nnoremap L gt
:set is
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep='>'
let g:airline_right_sep='<'
set laststatus=2
set ttimeoutlen=50
nmap <leader>t :TagbarToggle<CR>

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction
set breakindent
"GoGuru scope
let g:go_guru_scope = ["github.com/...","golangorg/...","mypractice","..."]
let g:go_list_type = "quickfix"
"visual mode text movement and keep in select
vnoremap <S-TAB> <gv
vnoremap <TAB> >gv

:au FileType go map <localleader>r <Plug>(go-run)
:au FileType go map <localleader>b <Plug>(go-build)
:au FileType go map <localleader>i <Plug>(go-imports)
:au FileType go map <localleader>d <Plug>(go-describe)
:au FileType go map <localleader>dv <Plug>(go-def-vertical)
:au FileType go map <localleader>dh <Plug>(go-def-split)

": t_Co=256
":colorscheme PaperColor
"navigate long lines
noremap <C-j> gj
noremap <C-k> gk
if !has('nvim')
    set ttymouse=xterm2
endif
set wildmenu
set wildmode=list:longest,full

""" YouCompleteMe
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
"" turn on completion in comments
"let g:ycm_complete_in_comments=1
"" load ycm conf by default
"let g:ycm_confirm_extra_conf=0
"" turn on tag completion
"let g:ycm_collect_identifiers_from_tags_files=1
"" only show completion as a list instead of a sub-window
"set completeopt-=preview
"" start completion from the first character
"let g:ycm_min_num_of_chars_for_completion=1
"" don't cache completion items
"let g:ycm_cache_omnifunc=0
"" complete syntax keywords
"let g:ycm_seed_identifiers_with_syntax=1
"set nowrapscan
" Disable Arrow keys in Escape mode

:set relativenumber

"let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:go_auto_type_info = 0
let g:go_fmt_command = "goimports"
"let g:go_metalinter_autosave = 1
"let g:go_metalinter_autosave_enabled = ['vet', 'golint', 'errcheck']
", 'varcheck']
"let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck', 'varcheck', 'aligncheck', 'ineffassign', 'deadcode','gosimple', 'staticcheck']
let g:go_metalinter_deadline = '10s'
let g:go_metalinter_command = "--exclude=test"
"let g:go_fmt_fail_silently = 1
let @g=':vimgrep // % | copen'
" Zoom / Restore window.
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <C-A> :ZoomToggle<CR>
"set foldmethod=syntax
set autoindent
set shell=/bin/bash
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
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
    set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext
" devicons settins
set encoding=UTF-8
let g:WebDevIconsUnicodeDecorateFolderNodes=1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with
let g:HardMode_level = 'wannabe'
set backspace=0
