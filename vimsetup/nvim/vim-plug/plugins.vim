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
    Plug 'eugen0329/vim-esearch'
    Plug 'fatih/vim-go', { 'for' : ['go', 'markdown'] } "Loads only when editing golang files"
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'majutsushi/tagbar'
    Plug 'scrooloose/nerdcommenter'
    "Plug 'valloric/youcompleteme'
    Plug 'easymotion/vim-easymotion'
    Plug 'trusktr/seti.vim'
    "Plug 'jodosha/vim-godebug'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'antoinemadec/coc-fzf'
    Plug 'mhartington/oceanic-next'
    Plug 'machakann/vim-highlightedyank'
    Plug 'sebdah/vim-delve'
    Plug 'justinmk/vim-sneak'
    Plug 'radenling/vim-dispatch-neovim'
    Plug 'tpope/vim-dispatch'
    Plug 'svermeulen/vim-easyclip'
    Plug 'kshenoy/vim-signature'
    Plug 'tpope/vim-rhubarb'
    Plug 'Lokaltog/powerline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tpope/vim-unimpaired'
    Plug 'airblade/vim-gitgutter'
    Plug 'tomasiser/vim-code-dark'
    Plug 'chrisbra/colorizer'
    Plug 'Shougo/vimproc'
    Plug 'c9s/helper.vim'
    Plug 'c9s/treemenu.vim'
    Plug 'c9s/vikube.vim'
    Plug 'rhysd/git-messenger.vim'
    Plug 'tommcdo/vim-fubitive'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
    Plug 'machakann/vim-sandwich'
    Plug 'Lenovsky/nuake'
    Plug 'voldikss/vim-floaterm'
    Plug 'aklt/plantuml-syntax'
    Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
    "Plug 'francoiscabrol/ranger.vim'
    Plug 'rbgrouleff/bclose.vim'
    Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
    Plug 'mhinz/vim-startify'
    " Convert numbers for diffrent base like octal,binary, decimal etc (gA
    " show all version of number)
    Plug 'glts/vim-radical'
    Plug 'glts/vim-magnum'
    Plug 'Yggdroot/indentLine'
    if has('nvim-0.5')
        Plug 'neovim/nvim-lspconfig'
        Plug 'kosayoda/nvim-lightbulb'
        Plug 'glepnir/lspsaga.nvim'
        Plug 'onsails/lspkind-nvim'
    endif
    call plug#end()            
    filetype plugin indent on   
endfunction
call PluginConfig()
call LoadPlugins()

