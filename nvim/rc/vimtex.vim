" let g:vimtex_fold_envs = 0
" " let g:vimtex_view_general_viewer = 'displayline'
" let g:vimtex_view_general_viewer = 'evince'
" let g:vimtex_view_general_options = '-r @line @pdf @tex'
" let g:vimtex_compiler_latexmk = {
"       \ 'options' : [
"       \   '-verbose',
"       \   '-file-line-error',
"       \   '-synctex=1',
"       \   '-interaction=nonstopmode',
"       \ ]}
" let g:vimtex_compiler_progname = 'nvr'
" 
" let g:vimtex_view_general_viewer
"       \ = 'mupdf'
" let g:vimtex_view_general_options = '-r @line @pdf @tex'
" 
" let g:vimtex_compiler_latexmk = {
"     \}


let g:vimtex_compiler_latexmk = {
      \ 'background': 1,
      \ 'build_dir': '',
      \ 'continuous': 1,
      \ 'options': [
      \    '-pdfdvi',
      \    '-verbose',
      \    '-file-line-error',
      \    '-synctex=1',
      \    '-interaction=nonstopmode',
      \],
      \}

" let g:vimtex_view_general_viewer
"       \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_viewer
      \ = 'mupdf'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
