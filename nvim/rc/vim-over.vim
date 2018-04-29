" 全体置換
nnoremap <silent> <Space>o :OverCommandLine<CR>%s//g<Left><Left>

" 選択範囲置換
vnoremap <silent> <Space>o :OverCommandLine<CR>s//g<Left><Left>

" カーソルしたの単語置換
nnoremap sub :OverCommandLine<CR>%s/<C-r><C-w>//g<Left><Left>
