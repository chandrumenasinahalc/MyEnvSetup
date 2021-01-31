" fugitive plugins key mapings
function! GitMapings()
    noremap <Leader>gd :Gdiff<cr>
    noremap <Leader>gb :Gblame<cr>
    noremap <Leader>gs :Gstatus<cr>
    noremap <Leader>gl :Glog<cr>
endfunction
call GitMapings()
