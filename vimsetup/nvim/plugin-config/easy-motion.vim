function! EasyMotionSettings()
    let g:sneak#label = 1
    "let g:sneak#s_next = 1
    "Easy motion across window settings
    " <Leader>f{char} to move to {char}
    map  <Leader>F <Plug>(easymotion-bd-f)
    nmap <Leader>F <Plug>(easymotion-overwin-f)

    " s{char}{char} to move to {char}{char}
    "nmap s <Plug>(easymotion-overwin-f2)

    " Move to line
    map <Leader>L <Plug>(easymotion-bd-jk)
    nmap <Leader>L <Plug>(easymotion-overwin-line)

    " Move to word
    map  <Leader>w <Plug>(easymotion-bd-w)
    nmap <Leader>w <Plug>(easymotion-overwin-w)
    "nmap s <Plug>(easymotion-s2)
    "nmap t <Plug>(easymotion-t2)
    "map  / <Plug>(easymotion-sn)
    "map ? <Plug>(easymotion-tn)

    " These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
    " Without these mappings, `n` & `N` works fine. (These mappings just provide
    " different highlight method and have some other features )
    "map  n <Plug>(easymotion-next)
    "map  N <Plug>(easymotion-prev)
    let g:EasyMotion_smartcase = 1
endfunction
call EasyMotionSettings()
