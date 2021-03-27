
-- Normal mode key bindgings
local map = vim.api.nvim_set_keymap
map('n', '<Space>', '<NOP>', {noremap = true, silent = true})
-- no hl
map('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})
map('n', '<space>e', ':NvimTreeToggle<CR>', { silent = true})
map('n', '<space>f', ':CocCommand explorer --preset=floatingLeftside<CR>', {noremap = true, silent = true})
map('n', '<space>w', ':Windows<CR>', {noremap = true, silent = true})
map('n', '<space>t', ':TagbarToggle<CR>', {noremap = true, silent = true})
map('n', '<space>m', ':lua require("utils").ToggleMouse()<CR>', {noremap = true, silent = true})
map('n', '<space>z', ':call s:ZoomToggle<CR>', {noremap = true, silent = true})
-- resize windows
map('n', '<M-j>',':resize -2<CR>',{noremap = true, silent = true})
map('n',  '<M-k>',':resize +2<CR>',{noremap = true, silent = true})
map('n',  '<M-h>',':vertical resize -2<CR>',{noremap = true, silent = true})
map('n',  '<M-l>',':vertical resize +2<CR>',{noremap = true, silent = true})
-- windows navigation
map('n',  '<C-h>',' <C-w>h',{silent = true})
map('n',  '<C-j>',' <C-w>j',{silent = true})
map('n',  '<C-k>',' <C-w>k',{silent = true})
map('n',  '<C-l>',' <C-w>l',{silent = true})
-- terminal
map('n','<F4>',':Nuake<CR>',{noremap = true,silent = true})
-- fzf
-- open vimrc
map('n','<C-y>',':e $MYVIMRC<CR>',{ noremap=true,silent = true})
-- Needs to figureout why these
map('n','<C-f>','<C-f>M',{noremap = true, silent = true})
map('n','<C-b>','<C-b>M',{noremap = true, silent = true})
-- create marks
map('n','gm','m',{noremap = true, silent = true})
-- Rename
map('n','<F2>','<plug>(coc-rename)',{silent = true})
-- CodeAction
map('n','<space>a',':CocAction<CR>',{silent = true})
-- comment lines
map('n','<C-_>','<Plug>NERDCommenterToggle',{silent = true})
-- navigate buffers
map('n','<TAB>',':bnext<CR>',{noremap = true, silent = true})
if vim.g.telescope == 1
then
	map('n', '<space>b', ':Telescope buffers prompt_prefix=🔍<CR>', {noremap = true, silent = true})
	map('n', '<C-p>', ':Telescope find_files prompt_prefix=🔍<CR>', {noremap = true, silent = true})
	map('n', '<leader>b', ':Telescope buffers prompt_prefix=🔍<CR>', {noremap = true, silent = true})
	map('n','<C-g>',':Telescope live_grep<CR>',{noremap = true, silent = true})
	map('n','<C-s>',':lua require("telescope.builtin").current_buffer_fuzzy_find()<CR>',{noremap = true, silent = true})
else
	map('n', '<space>b', ':Buffers<CR>', {noremap = true, silent = true})
	map('n', '<C-p>', ':Files<CR>', {noremap = true, silent = true})
	map('n', '<leader>b', 'Buffers<CR>', {noremap = true, silent = true})
	map('n','<C-g>',':Rg!<CR>',{noremap = true, silent = true})
	map('n','<C-s>',' :BLines<CR>',{noremap = true, silent = true})
end

-- Insert mode mapings
vim.cmd([[
        inoremap <A-h> <C-\><C-N><C-w>h
        inoremap <A-j> <C-\><C-N><C-w>j
        inoremap <A-k> <C-\><C-N><C-w>k
        inoremap <A-l> <C-\><C-N><C-w>l
        inoremap <F4> <C-\><C-n>:Nuake<CR>
        imap <C-v> <esc>:set paste<CR>i<C-r>*<esc>:set nopaste<CR>i
]])

-- visual mode mapings
-- Use tab to move visully selected text
map('v','<S-TAB>','<gv',{noremap = true, silent = true})
map('v','<TAB>','>gv',{noremap = true, silent = true})
-- Use C-c to copy visully selected text
map('v','<C-c>','"+y',{noremap = true, silent = true})
map('v','<C-_>','<Plug>NERDCommenterToggle<CR>gv',{silent = true})

--"visual
--" Search patterns in visully selected texts
--" copied from http://vim.wikia.com/wiki/Search_for_visually_selected_text
vim.cmd([[
vnoremap <silent> / :<C-U>:lua require('utils').RangeSearch('/')<CR>:if strlen(g:srchstr) > 0\|exec '/'.g:srchstr\|endif<CR>
vnoremap <silent> ? :<C-U>:lua require('utils').RangeSearch('?')<CR>:if strlen(g:srchstr) > 0\|exec '?'.g:srchstr\|endif<CR>
]])
--vnoremap <silent> * :<C-U>
--            \\let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
--            \\gvy/<C-R><C-R>=substitute(
--            \\escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
--            \\gV:call setreg('"', old_reg, old_regtype)<CR>
--            ]])
--vnoremap <silent> # :<C-U>
--            \\let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
--            \\gvy?<C-R><C-R>=substitute(
--            \\escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
--            \\gV:call setreg('"', old_reg, old_regtype)<CR>
--vnoremap // y/<C-R>"<CR>
--vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv
--]])



--Plugin specific key bindings
-- EasyMotion
map('','<Leader>F','<Plug>(easymotion-bd-f)',{silent=true})
map('n','<Leader>F','<Plug>(easymotion-bd-f)',{silent=true})
-- Move to lines
map('','<Leader>L','<Plug>(easymotion-bd-jk',{silent=true})
map('n','<Leader>L','<Plug>(easymotion-overwin-line)',{silent=true})
-- Move to words
map('','<Leader>w','<Plug>(easymotion-bd-w)',{silent=true})
map('n','<Leader>w','<Plug>(easymotion-overwin-w)',{silent=true})

-- Fugitive(git)
map('n','<Leader>gd',':Gdiff<cr>',{silent=true,noremap=true})
map('n','<Leader>gb',':Gblame<cr>',{silent=true,noremap=true})
map('n','<Leader>gs',':Gstatus<cr>',{silent=true,noremap=true})
map('n','<Leader>gl',':Glog<cr>',{silent=true,noremap=true})

-- fzf-preview
map('n','<localleader>p',':<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>',{silent=true,noremap=true})
map('n','<localleader>gs',':<C-u>CocCommand fzf-preview.GitStatus<CR>',{silent=true,noremap=true})
map('n','<localleader>ga',':<C-u>CocCommand fzf-preview.GitActions<CR>',{silent=true,noremap=true})
map('n','<localleader>gl',':<C-u>CocCommand fzf-preview.GitLogs<CR>',{silent=true,noremap=true})
map('n','<localleader>gb',':<C-u>CocCommand fzf-preview.GitBranches<CR>',{silent=true,noremap=true})
map('n','<localleader>b',':<C-u>CocCommand fzf-preview.Buffers<CR>',{silent=true,noremap=true})
map('n','<localleader>B',':<C-u>CocCommand fzf-preview.AllBuffers<CR>',{silent=true,noremap=true})
map('n','<localleader>o',':<C-u>CocCommand fzf-preview.FromResources buffer project_mru<CR>',{silent=true,noremap=true})
map('n','<localleader><C-o>',':<C-u>CocCommand fzf-preview.Jumps<CR>',{silent=true,noremap=true})
map('n','<localleader>g;',':<C-u>CocCommand fzf-preview.Changes<CR>',{silent=true,noremap=true})
map('n','<localleader>/',':<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="\'"<CR>',{silent=true,noremap=true})
map('n','<localleader>*',':<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="\'<C-r>=expand(\'<cword>\')<CR>"<CR>',{silent=true,noremap=true})
map('n','<localleader>gr',':<C-u>CocCommand fzf-preview.ProjectGrep<Space>',{silent=true,noremap=true})
--xnoremap          <localleader>gr    "sy:CocCommand   fzf-preview.ProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
--nnoremap <silent> <localleader>t     :<C-u>CocCommand fzf-preview.BufferTags<CR>
--nnoremap <silent> <localleader>q     :<C-u>CocCommand fzf-preview.QuickFix<CR>
--nnoremap <silent> <localleader>l     :<C-u>CocCommand fzf-preview.LocationList<CR>
--
-- hop.nvim
map('n', 's', ":HopChar2<cr>", {silent = true})
map('n', 'S', ":HopWord<cr>", {silent = true})
