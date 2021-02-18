" in init.vim
lua vim.api.nvim_command [[autocmd CursorHold   * lua require'utils'.blameVirtText()]]
lua vim.api.nvim_command [[autocmd CursorMoved  * lua require'utils'.clearBlameVirtText()]]
lua vim.api.nvim_command [[autocmd CursorMovedI * lua require'utils'.clearBlameVirtText()]]

hi! link GitLens GitLens
"let lua_lsp = glob('~/.vscode/extensions/sumneko.lua*', 0, 1)
"if len(lua_lsp)
"    let lua_lsp = lua_lsp[-1] . '/server'
"    call coc#config('languageserver', {
"        \ 'lua': {
"        \     'cwd': lua_lsp,
"        \     'command': lua_lsp . '/bin/Linux/lua-language-server',
"        \     'args': ['-E', '-e', 'LANG="en-US"', lua_lsp . '/main.lua'],
"        \     'filetypes': ['lua'],
"        \ }
"    \ })
"endif
"~/.vscode/extensions/sumneko.lua-1.15.0/server/bin/Linux/lua-language-server
