autocmd FileType ruby let b:dispatch = 'rspec %'
autocmd FileType cucumber let b:dispatch = 'cucumber %'
nnoremap <Leader>rt :Dispatch<CR>
nnoremap <Leader>Rt :Dispatch!<CR>
nnoremap <Leader>ca :Dispatch cucumber --tags @active<CR>
