" vim立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup=1
" ガイドをスタートするインデントの量
""let g:indent_guides_start_level=2
" 自動カラーを無効にする
""let g:indent_guides_auto_colors=0
" 奇数インデントのカラー
""autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#262626 ctermbg=gray
" 偶数インデントのカラー
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#3c3c3c ctermbg=darkgray
" ハイライト色の変化の幅
"let g:indent_guides_color_change_percent = 30
" ガイドの幅
"let g:indent_guides_guide_size = 1 set tabstop=2 shiftwidth=2 expandtab
let g:indent_guides_enable_on_vim_startup = 1 "enable on vim startup
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=235
