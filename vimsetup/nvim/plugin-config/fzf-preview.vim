"nmap <localleader>f [fzf-p]
"xmap <localleader>f [fzf-p]

nnoremap <silent> <localleader>p     :<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>
nnoremap <silent> <localleader>gs    :<C-u>CocCommand fzf-preview.GitStatus<CR>
nnoremap <silent> <localleader>ga    :<C-u>CocCommand fzf-preview.GitActions<CR>
nnoremap <silent> <localleader>gl    :<C-u>CocCommand fzf-preview.GitLogs<CR>
nnoremap <silent> <localleader>gb    :<C-u>CocCommand fzf-preview.GitBranches<CR>
nnoremap <silent> <localleader>b     :<C-u>CocCommand fzf-preview.Buffers<CR>
nnoremap <silent> <localleader>B     :<C-u>CocCommand fzf-preview.AllBuffers<CR>
nnoremap <silent> <localleader>o     :<C-u>CocCommand fzf-preview.FromResources buffer project_mru<CR>
nnoremap <silent> <localleader><C-o> :<C-u>CocCommand fzf-preview.Jumps<CR>
nnoremap <silent> <localleader>g;    :<C-u>CocCommand fzf-preview.Changes<CR>
nnoremap <silent> <localleader>/     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'"<CR>
nnoremap <silent> <localleader>*     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>
nnoremap          <localleader>gr    :<C-u>CocCommand fzf-preview.ProjectGrep<Space>
xnoremap          <localleader>gr    "sy:CocCommand   fzf-preview.ProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
nnoremap <silent> <localleader>t     :<C-u>CocCommand fzf-preview.BufferTags<CR>
nnoremap <silent> <localleader>q     :<C-u>CocCommand fzf-preview.QuickFix<CR>
nnoremap <silent> <localleader>l     :<C-u>CocCommand fzf-preview.LocationList<CR>
