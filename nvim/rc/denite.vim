" C-N,C-Pで上下移動
" call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
" call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')
" 
" noremap <C-l> :Denite file_mru<CR>
" noremap <C-y> :Denite neoyank<CR>

" nnoremap [denite] <Nop>
" nnoremap <C-m> [denite]
"
"
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


" https://qiita.com/pyama2000/items/fafdbc77f394e71a9dd8
" file/rec
nnoremap <silent><C-m>m :<C-u>Denite file/rec -split=floating file:new<CR>
" 【Ctrl + d + b】 バッファを表示
nnoremap <silent><C-m>b :<C-u>Denite buffer -split=floating file:new<CR>
" 【Ctrl + d + f】 カレントディレクトリを表示
" nnoremap <silent><C-m>f :<C-u>Denite file -split=floating file:new<CR>
" 【Ctrl + d + r】 カレントディレクトリ以下を再帰的に表示
nnoremap <silent><C-m>f :<C-u>Denite file/rec -split=floating file:new<CR>
" 【Ctrl + d + gr】 カレントディレクトリ以下のファイルから指定した文字列を検索
nnoremap <silent><C-m>gr :<C-u>Denite grep -buffer-name=search<CR>
" 【Ctrl + d + ,】 カレントディレクトリ以下のファイルからカーソル下の文字列を検索
nnoremap <silent><C-m>, :<C-u>DeniteCursorWord grep -buffer-name=search line<CR>
" 【Ctrl + d + gs】 grepした結果を再表示
nnoremap <silent><C-m>gs :<C-u>Denite -resume -buffer-name=search<CR>
" 【Ctrl + d + c】 Neovim内で実行したコマンドを表示
nnoremap <silent><C-m>c :<C-u>Denite command_history -split=floating<CR>

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
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> f
  \ denite#do_map('open_filter_buffer')
endfunction
