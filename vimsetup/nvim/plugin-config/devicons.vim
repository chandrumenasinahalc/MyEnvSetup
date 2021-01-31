function! DeviconsSettings()
    set encoding=UTF-8
    let g:WebDevIconsUnicodeDecorateFolderNodes=1
    let g:webdevicons_enable = 1
    let g:webdevicons_enable_nerdtree = 1
    let g:webdevicons_enable_unite = 1
    let g:webdevicons_enable_vimfiler = 1
    let g:webdevicons_enable_airline_tabline = 1
    let g:webdevicons_enable_airline_statusline = 1
    let g:webdevicons_enable_ctrlp = 1
    let g:webdevicons_enable_startify = 1
    let g:webdevicons_enable_flagship_statusline = 1
    let g:WebDevIconsUnicodeDecorateFileNodes = 1
    let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
    let g:webdevicons_conceal_nerdtree_brackets = 1
    let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
    let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
    let g:webdevicons_enable_denite = 1
    " devicons settins
    if exists("g:loaded_webdevicons")
        call webdevicons#refresh()
    endif
endfunction
call DeviconsSettings()


