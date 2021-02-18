function! PluginConfig()
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
endfunction
function! LoadPlugins()
    call plug#begin('~/.local/share/nvim/plugged')
    Plug 'tpope/vim-fugitive'
    " little extention to fugutive for bitbucket
    Plug 'tommcdo/vim-fubitive'
    Plug 'eugen0329/vim-esearch'
    Plug 'fatih/vim-go', { 'for' : ['go', 'markdown'] } "Loads only when editing golang files"
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
     Plug 'itchyny/lightline.vim'
    Plug 'majutsushi/tagbar'
    Plug 'scrooloose/nerdcommenter'
    Plug 'easymotion/vim-easymotion'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'antoinemadec/coc-fzf'
    Plug 'machakann/vim-highlightedyank'
    Plug 'sebdah/vim-delve'
    Plug 'justinmk/vim-sneak'
    Plug 'svermeulen/vim-easyclip'
    Plug 'tpope/vim-rhubarb'
    Plug 'tpope/vim-unimpaired'
    Plug 'smpchandru/vim-code-dark'
    Plug 'rhysd/git-messenger.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
    Plug 'Lenovsky/nuake'
    Plug 'voldikss/vim-floaterm'
    Plug 'aklt/plantuml-syntax'
    Plug 'rbgrouleff/bclose.vim'
    Plug 'mhinz/vim-startify'
    " Convert numbers for diffrent base like octal,binary, decimal etc (gA
    " show all version of number)
    Plug 'glts/vim-radical'
    Plug 'glts/vim-magnum'
    if has('nvim-0.5')
        Plug 'neovim/nvim-lspconfig'
        Plug 'nvim-lua/completion-nvim'
        Plug 'sumneko/lua-language-server'
        "Plug 'kosayoda/nvim-lightbulb'
        "Plug 'glepnir/lspsaga.nvim'
        "Plug 'onsails/lspkind-nvim'
    endif
    "Plug 'Yggdroot/indentLine'
    "Plug 'mhartington/oceanic-next'
    "Plug 'trusktr/seti.vim'
    "Plug 'jodosha/vim-godebug'
    "Plug 'valloric/youcompleteme'
    " mark hightlighter
    "Plug 'kshenoy/vim-signature'
    " Vim powerline
    "Plug 'Lokaltog/powerline'
    "Plug 'ryanoasis/vim-devicons'
    "Plug 'airblade/vim-gitgutter'
    "Plug 'radenling/vim-dispatch-neovim'
    "Plug 'tpope/vim-dispatch'
    "Plug 'chrisbra/colorizer'
    "Plug 'Shougo/vimproc'
    "Plug 'c9s/helper.vim'
    "Plug 'c9s/treemenu.vim'
    "Plug 'c9s/vikube.vim'
    "Plug 'vim-airline/vim-airline'
    "Plug 'vim-airline/vim-airline-themes'
    "Plug 'machakann/vim-sandwich'
    "Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
    "Plug 'francoiscabrol/ranger.vim'
    "Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
    " prerequisite of vim-radical
    call plug#end()            
    filetype plugin indent on   
endfunction
call PluginConfig()
call LoadPlugins()

