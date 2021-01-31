nmap <Leader>b :Buffers<cr>
nmap <C-p> :Files<cr>
"nmap <Leader>o :NERDTreeToggle<cr>
nmap <Leader>o :CocCommand explorer<cr> 
" jk key in wrapped lines
nmap j gj
nmap k gk
nmap <silent><leader>t :TagbarToggle<CR>
noremap <silent><Leader>m :call ToggleMouse()<cr>
" Zoom / Restore window.
command! ZoomToggle call s:ZoomToggle()
command! Config execute ":e $MYVIMRC"
command! Reload execute ":source $MYVIMRC"
nnoremap <silent> <C-A> :ZoomToggle<CR>
nnoremap <F4> :Nuake<CR>
nmap <C-f> :BLines<CR>
nmap <C-g> :Rg!<CR>
nmap <C-,> :Config<CR>
nnoremap gm m

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
