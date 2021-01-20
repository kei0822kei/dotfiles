let g:defx_git#indicators = {
  \ 'Modified'  : '+',
  \ 'Staged'    : '●',
  \ 'Untracked' : '?',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : '═',
  \ 'Deleted'   : 'x',
  \ 'Unknown'   : '?'
  \ }

call defx#custom#column('git', 'column_length', 1)
