vim.o.hidden = true -- Required to keep multiple buffers open multiple buffers
vim.wo.wrap = false -- Display long lines as just one line
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.cmdheight = 1 -- More space for displaying messages
vim.o.mouse = "" -- Enable your mouse
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.termguicolors = true -- set term giu colors most terminals support this
vim.o.splitright = true -- Vertical splits will automatically be to the right
vim.o.t_Co = "256" -- Support 256 colors
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.bo.expandtab = false -- Converts tabs to spaces
vim.bo.smartindent = true -- Makes indenting smart
vim.wo.number = true -- set numbered lines
vim.wo.cursorline = true -- Enable highlighting of the current line
vim.o.showtabline = 2 -- Always show tabs
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.o.backup = false -- This is recommended by coc
vim.o.writebackup = false -- This is recommended by coc
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.o.updatetime = 300 -- Faster completion
vim.o.timeoutlen = 1000 -- By default timeoutlen is 1000 ms
vim.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
vim.o.shiftwidth=4
vim.o.tabstop=2
--vim.o.guifont = "JetBrainsMono\\ Nerd\\ Font\\ Mono:h18"
vim.o.smarttab = true
vim.o.autoindent = true
vim.o.laststatus = 2
vim.o.background = "dark"
vim.o.syntax = "on"
vim.o.filetype = "on"
vim.o.number = true
vim.o.shell = "/bin/bash"
vim.cmd('set nowritebackup')
vim.cmd('set backspace=0')
vim.cmd('set t_ut=')
vim.cmd('set history=1000')
vim.cmd('set diffopt+=iwhite')
vim.cmd('set diffopt+=vertical')
vim.cmd("set noshowmode")
vim.cmd('set iskeyword+=-') -- treat dash separated words as a word text object"
vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
vim.cmd('set whichwrap+=<,>,[,],h,l') -- move to next line with theses keys
vim.cmd('set ts=4') -- Insert 2 spaces for a tab
vim.cmd('set nocompatible')
vim.cmd('set relativenumber')
if vim.fn.has("termguicolors")
then
    vim.o.termguicolors = true
end
vim.cmd('set formatoptions-=cro')
vim.g.mapleader=","
vim.g.maplocalleader=";"
vim.g.telescope = 1
-- some highlights
vim.cmd('highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15')
vim.cmd('highlight ColorColumn ctermbg=1')
vim.cmd('hi Search cterm=NONE ctermfg=grey ctermbg=blue')
--"set wildmenu
--"set wildmode=list:longest,full
vim.cmd('highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15')
--"colorscheme codedark
vim.g.highlightedyank_highlight_duration = 10000

