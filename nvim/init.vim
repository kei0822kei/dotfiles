" -*- init.vim -*-

let g:coc_user_config = "{~/coc-settings.json}"

if $CONDA_PREFIX == ''
  let g:python_host_prog =
          \ $PYENV_ROOT .
          \ '/versions/' .
          \ $ANACONDA_VERSION .
          \ '/envs/' .
          \ $CONDA_DEFAULT_ENV .
          \ '/bin/python'
  let g:python3_host_prog =
          \ $PYENV_ROOT .
          \ '/versions/' .
          \ $ANACONDA_VERSION .
          \ '/envs/' .
          \ $CONDA_DEFAULT_ENV .
          \ '/bin/python'
else
  let g:python_host_prog =
          \ $CONDA_PREFIX .
          \ '/bin/python'
  let g:python3_host_prog =
          \ $CONDA_PREFIX .
          \ '/bin/python'
endif


"""dein
let s:dein_dir = expand('~/.mydot/nvim/bundle')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let g:rc_dir    = expand('~/.mydot/nvim/rc/')
  let g:toml_dir    = expand('~/.mydot/nvim/toml/')
  let s:toml      = g:toml_dir . 'dein.toml'
  let s:lazy_toml = g:toml_dir . 'dein_lazy.toml'

  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif


"""layout
set number                 "display the numbers of the lines
" set title                "display the title of the editing file
" set showmatch            "when you input a parenthesis, show you the other
" set ruler                "display where is the cursor
" set laststatus=2         "comment at th bottom
" set cursorline
set list                   " visualize invisible characters
set listchars=tab:»-,trail:-,nbsp:%,eol:↲

"""indent
set expandtab            "exchange tab to space
set tabstop=2            "set indent 2 spaces
set shiftwidth=2         "set indent 2 spaces (it is also needed)
"set autoindent           "continue the indent of the formar line
"set noautoindent

"""new action set nostartofline
set nowrap               "you can input the same line until line feed

"""file backup
set nobackup             "avoid making swap file
set viminfo=             "avoid making file

"""color
"""  - color number => http://cohama.hateblo.jp/entry/2013/08/11/020849
"""  - Normal => normal text
"""  - NormalFloat => normal float text
"""  - NonText => eol, extends, precedes
"""  - SpecialKey => nbsp, tab, trail
syntax enable  "coloring codes, seems necessary to place before 'hi'
hi NormalFloat ctermfg=121 ctermbg=239
hi NonText ctermfg=66
hi SpecialKey ctermfg=237

""" leader ==> space
let mapleader = "\<Space>"

""" command line completion
" set wildmenu wildmode=list:longest,full
set history=10000

""" tab
nnoremap <Tab> :tabn<cr>
