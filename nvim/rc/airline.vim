" let g:airline_theme='jellybeans'
" let g:airline#extensions#tabline#enabled = 1 " タブラインを表示
" let g:airline_powerline_fonts = 1            " Powerline Fontsを利用




" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif
" let g:airline_section_a = airline#section#create(['mode','','branch'])
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#show_buffers = 0
" let g:airline#extensions#tabline#tab_nr_type = 1
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:Powerline_symbols = 'fancy'
" set t_Co=256
" 
" " unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.crypt = '🔒'
" " let g:airline_symbols.linenr = '☰'
" " let g:airline_symbols.linenr = '␊'
" " let g:airline_symbols.linenr = '␤'
" " let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = ''
" " let g:airline_symbols.maxlinenr = '㏑'
" let g:airline_symbols.branch = '⎇'
" " let g:airline_symbols.paste = 'ρ'
" " let g:airline_symbols.paste = 'Þ'
" " let g:airline_symbols.paste = '∥'
" " let g:airline_symbols.spell = 'Ꞩ'
" " let g:airline_symbols.notexists = '∄'
" " let g:airline_symbols.whitespace = 'Ξ'
" 
" " powerline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" " let g:airline_symbols.linenr = '☰'
" " let g:airline_symbols.maxlinenr = ''
" 
" Powerline系フォントを利用する
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
" let g:airline_theme = 'tomorrow'
let g:airline_theme='jellybeans'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.crypt = '🔒'
" let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.maxlinenr = '㏑'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = '∄'
" let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
