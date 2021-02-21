" replace all
nnoremap <silent> <Space>o :OverCommandLine<CR>%s//g<Left><Left>

" replace selected
vnoremap <silent> <Space>o :OverCommandLine<CR>s//g<Left><Left>

" replace word
nnoremap <silent> <Space>r :OverCommandLine<CR>%s/<C-r><C-w>//g<Left><Left>
