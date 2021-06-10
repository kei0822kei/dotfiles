" -*- init.vim -*-

"""settings necessary for plugins
let mapleader = "\<Space>"
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

if dein#load_state(s:dein_dir)  " 'load_chache' is deprecated
  let g:dein#cache_directory = $HOME . '/.mydot/nvim/cache'
  call dein#begin(s:dein_dir)

  let g:rc_dir    = expand('~/.mydot/nvim/rc/')
  let g:toml_dir  = expand('~/.mydot/nvim/toml/')
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
set viminfo='1000        "vim commandline history

set encoding=UTF-8

"""color
"""  - color number => http://cohama.hateblo.jp/entry/2013/08/11/020849
"""  - Normal => normal text
"""  - NormalFloat => normal float text
"""  - NonText => eol, extends, precedes
"""  - SpecialKey => nbsp, tab, trail

" You can show variable naem by :help highlight :help highlight group
syntax enable  "coloring codes, seems necessary to place before 'hi'
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

""" tab
nnoremap <Tab> :tabn<cr>
nnoremap c q:

set textwidth=80
