" -*- init.vim -*-

"""settings necessary for plugins
let g:mapleader = '\<Space>'

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

" ------- dein settings based on https://github.com/Shougo/dein.vim -----------
let s:dein_dir = expand('~/.mydot/nvim/bundle')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let g:dein#cache_directory = $HOME . '/.mydot/nvim/cache'

if &compatible
  set nocompatible " Be iMproved
endif

" !~# => https://thinca.hatenablog.com/entry/20100201/1265009821
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  " add dein path to the head of runtimepath
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

call dein#begin(s:dein_dir)

let g:rc_dir    = expand('~/.mydot/nvim/rc/')
let s:toml      = '~/.mydot/nvim/dein.toml'

call dein#load_toml(s:toml,      {'lazy': 0})

call dein#end()

if dein#check_install()
  call dein#install()
endif

call dein#save_state()

filetype plugin indent on
syntax enable

let g:vim_json_syntax_conceal = 0  " fix coneal in order to be able to see '"'.
" ------- dein settings based on https://github.com/Shougo/dein.vim -----------


"""layout
set number                 "display the numbers of the lines
set title                "display the title of the editing file
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

"""file backup
set nowrap               "you can input the same line until line feed
set nobackup             "avoid making swap file
set viminfo+=n~/.mydot/nvim/viminfo        "vim commandline history
set directory=~/.mydot/nvim/swap
set backupdir=~/.mydot/nvim/backup
set undodir=~/.mydot/nvim/undo

set encoding=UTF-8
set ignorecase  "do not distinguash s and S when you search.

"""color
"""  - color number => http://cohama.hateblo.jp/entry/2013/08/11/020849
"""  - Normal => normal text
"""  - NormalFloat => normal float text
"""  - NonText => eol, extends, precedes
"""  - SpecialKey => nbsp, tab, trail

" You can show variable naem by :help highlight :help highlight group
hi NormalFloat ctermfg=121 ctermbg=239
hi NonText ctermfg=66
hi SpecialKey ctermfg=237
hi NormalFloat ctermfg=121 ctermbg=239
hi Pmenu ctermfg=121 ctermbg=237
highlight jediFunction guifg=#ffffff guibg=#cc99ff
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
highlight DiffText   cterm=bold ctermfg=10 ctermbg=21

" set background=dark
" let g:solarized_diffmode="high"
" colorscheme solarized

""" command line completion
set wildmenu wildmode=list:longest,full
set history=10000

""" tab use (necessary)
nnoremap <Tab> :tabn<cr>

" nnoremap c q:

set textwidth=80

""" future delete
" let g:session_path = $HOME . '/src/github.com/kei0822kei/programming/vimscript'
