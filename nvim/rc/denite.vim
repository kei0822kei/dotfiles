" C-N,C-Pで上下移動
call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')

noremap <C-l> :Denite file_mru<CR>
noremap <C-y> :Denite neoyank<CR>
