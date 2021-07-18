" ref. https://qiita.com/hrsh7th@github/items/e405b4f4228e10a43201
" need sudo apt-get install silversearcher-ag
call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

""" layout
let s:denite_win_width_percent = 0.85
let s:denite_win_height_percent = 0.5
call denite#custom#option('default', {
    \ 'split': 'floating',
    \ 'winwidth': float2nr(&columns * s:denite_win_width_percent),
    \ 'wincol': float2nr((&columns - (&columns * s:denite_win_width_percent)) / 2),
    \ 'winheight': float2nr(&lines * s:denite_win_height_percent),
    \ 'winrow': float2nr((&lines - (&lines * s:denite_win_height_percent)) / 2),
    \ })

""" search
"""  - ref. https://qiita.com/pyama2000/items/fafdbc77f394e71a9dd8
" must be used
nnoremap <silent><C-m>b :<C-u>Denite buffer -split=floating file:new<CR>
nnoremap <silent><C-m>f :<C-u>Denite file/rec -split=floating file:new<CR>
nnoremap <silent><C-m>c :<C-u>Denite command_history -split=floating<CR>
nnoremap <silent><C-m>y :<C-u>Denite neoyank -split=floating<CR>

" still studying
nnoremap <silent><C-m>gr :<C-u>Denite grep -buffer-name=search<CR>
nnoremap <silent><C-m>, :<C-u>DeniteCursorWord grep -buffer-name=search line<CR>
nnoremap <silent><C-m>gs :<C-u>Denite -resume -buffer-name=search<CR>

""" open file
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> t
  \ denite#do_map('do_action', 'tabopen')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('do_action', 'split')
  nnoremap <silent><buffer><expr> s
  \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> f
  \ denite#do_map('open_filter_buffer')
  " nnoremap <silent><buffer><expr> d
  " \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
endfunction

" bookmark
source $XDG_CONFIG_HOME/nvim/bookmark.vim
nnoremap <silent> <C-m>p :<C-u>Denite menu:projects<CR>
