""" open defx by <C-e>
nnoremap <silent><C-e> :<C-u>Defx<CR>
autocmd BufWritePost * call defx#redraw()  " update automatically

""" icon
" let g:defx_icons_enable_syntax_highlight = 1
" let g:defx_icons_column_length = 2

""" layout
call defx#custom#option('_', {
      \ 'winwidth': 35,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 0,
      \ 'buffer_name': 'exlorer',
      \ 'toggle': 1,
      \ 'resume': 1,
      \ 'columns': 'indent:git:icons:filename:mark',
      \ 'ignored_files':
      \     '.mypy_cache,.pytest_cache,.git,.hg,.svn,.stversions'
      \   . ',__pycache__,.sass-cache,*.egg-info,.DS_Store,*.pyc'
      \   . ',build,dist'
      \ })

""" keybind
autocmd FileType defx call s:defx_my_settings()
   function! s:defx_my_settings() abort

     """ show ignoreed files
     nnoremap <silent><buffer><expr> .
     \ defx#do_action('toggle_ignored_files')

     """ open file
     nnoremap <silent><buffer><expr> <CR>
     \ defx#do_action('drop')
     nnoremap <silent><buffer><expr> i
     \ defx#do_action('drop', 'split')
     nnoremap <silent><buffer><expr> s
     \ defx#do_action('drop', 'vsplit')
     nnoremap <silent><buffer><expr> t
     \ defx#do_action('open', 'tabnew')

     """ directory
     nnoremap <silent><buffer><expr> u
     \ defx#do_action('cd', ['..'])
     nnoremap <silent><buffer><expr> o
     \ defx#do_action('open_or_close_tree', 'recursive:3')

     """ handle file
     nnoremap <silent><buffer><expr> c
     \ defx#do_action('copy')
     nnoremap <silent><buffer><expr> m
     \ defx#do_action('move')
     nnoremap <silent><buffer><expr> p
     \ defx#do_action('paste')
     nnoremap <silent><buffer><expr> K
     \ defx#do_action('new_directory')
     nnoremap <silent><buffer><expr> N
     \ defx#do_action('new_file')
     nnoremap <silent><buffer><expr> M
     \ defx#do_action('new_multiple_files')
     nnoremap <silent><buffer><expr> d
     \ defx#do_action('remove')
     nnoremap <silent><buffer><expr> r
     \ defx#do_action('rename')

     """ yank and print
     nnoremap <silent><buffer><expr> yy
     \ defx#do_action('yank_path')
     nnoremap <silent><buffer><expr> <C-g>
     \ defx#do_action('print')

     """ future use (not understand yet)
     " nnoremap <silent><buffer><expr> C
     " \ defx#do_action('toggle_columns',
     " \                'mark:indent:icon:filename:type:size:time')
     " nnoremap <silent><buffer><expr> S
     " \ defx#do_action('toggle_sort', 'time')
     " nnoremap <silent><buffer><expr> !
     " \ defx#do_action('execute_command')
     " nnoremap <silent><buffer><expr> x
     " \ defx#do_action('execute_system')
     " nnoremap <silent><buffer><expr> ;
     " \ defx#do_action('repeat')
     " nnoremap <silent><buffer><expr> ~
     " \ defx#do_action('cd')
     " nnoremap <silent><buffer><expr> q
     " \ defx#do_action('quit')
     " nnoremap <silent><buffer><expr> <Space>
     " \ defx#do_action('toggle_select') . 'j'
     " nnoremap <silent><buffer><expr> *
     " \ defx#do_action('toggle_select_all')
     " nnoremap <silent><buffer><expr> j
     " \ line('.') == line('$') ? 'gg' : 'j'
     " nnoremap <silent><buffer><expr> k
     " \ line('.') == 1 ? 'G' : 'k'
     " nnoremap <silent><buffer><expr> <C-l>
     " \ defx#do_action('redraw')
     " nnoremap <silent><buffer><expr> cd
     " \ defx#do_action('change_vim_cwd')
   endfunction
