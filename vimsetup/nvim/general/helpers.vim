" python indentation settings
function! SetPythonIndent()
     set tabstop=4
     set softtabstop=4
     set shiftwidth=4
     set textwidth=0
     set expandtab
     set autoindent
     set fileformat=unix
endfunction
" C/C++ indentation settings
function! SetCCIndent()
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
    set textwidth=0
    set expandtab
    set fileformat=unix
    Format
endfunction
" function to search in range
function! RangeSearch(direction)
	call inputsave()
	let g:srchstr = input(a:direction)
	call inputrestore()
	if strlen(g:srchstr) > 0
		let g:srchstr = g:srchstr.
					\ '\%>'.(line("'<")-1).'l'.
					\ '\%<'.(line("'>")+1).'l'
	else
		let g:srchstr = ''
	endif
endfunction
"Toggle zoom
function! s:ZoomToggle() abort
	if exists('t:zoomed') && t:zoomed
		execute t:zoom_winrestcmd
		let t:zoomed = 0
	else
		let t:zoom_winrestcmd = winrestcmd()
		resize
		vertical resize
		let t:zoomed = 1
	endif
endfunction
" Toggle mouse enable
" copied from http://unix.stackexchange.com/questions/156707/how-to-toggle-mouse-support-in-vim
function! ToggleMouse()
	" check if mouse is enabled
	if &mouse == 'a'
		" disable mouse
		set mouse=
	else
		" enable mouse everywhere
		set mouse=a
	endif
endfunc
 
"Retain the cursor position across the vim sessions
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction
