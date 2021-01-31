function! EasySearchSettings()
    let g:esearch = {
			\ 'adapter':    'ag',
			\ 'backend':    'vimproc',
			\ 'out':        'win',
			\ 'batch_size': 1000,
			\ 'use':        ['visual', 'hlsearch', 'last'],
			\}
endfunction
call EasySearchSettings()
