function! Main()
    source $HOME/.config/nvim/general/helpers.vim
    source $HOME/.config/nvim/general/clolors.vim
    source $HOME/.config/nvim/vim-plug/plugins.vim
    source $HOME/.config/nvim/plugin-config/coc.vim
    source $HOME/.config/nvim/plugin-config/git.vim
    source $HOME/.config/nvim/plugin-config/fzf.vim
    source $HOME/.config/nvim/plugin-config/easy-motion.vim
    source $HOME/.config/nvim/plugin-config/easy-search.vim
    source $HOME/.config/nvim/plugin-config/lightline.vim
    source $HOME/.config/nvim/plugin-config/vim-go.vim
    source $HOME/.config/nvim/general/settings.vim
    source $HOME/.config/nvim/general/autocom.vim
    source $HOME/.config/nvim/keys/ins.vim
    source $HOME/.config/nvim/keys/normal.vim
    source $HOME/.config/nvim/keys/term.vim
    source $HOME/.config/nvim/keys/vis.vim
    source $HOME/.config/nvim/plugin-config/fzf-preview.vim
    if has('nvim-0.5')
            source $HOME/.config/nvim/exp/exp.vim
    endif
endfunction
let mapleader = ","
let maplocalleader = ";"
call Main()
