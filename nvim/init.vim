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


set number               "display the numbers of the lines
set title                "display the title of the editing file
set showmatch            "when you input a parenthesis, show you the other
set ruler                "display where is the cursor
syntax on                "coloring codes
set laststatus=2         "comment at th bottom
set cursorline

"""indent
set expandtab            "exchange tab to space
set tabstop=2            "set indent 2 spaces
set shiftwidth=2         "set indent 2 spaces (it is also needed)
"set autoindent           "continue the indent of the formar line
"set noautoindent

"""new action set nostartofline
set nowrap               "you can input the same line until line feed

"""when you open vim
set nocompatible         "igmore vi settings
set nobackup             "avoid making swap file
set viminfo=             "avoid making file

"""for Japanese language
set ambiwidth=double
set formatoptions+=mM

"""visualize invisibles
set list
set listchars=tab:»-,trail:-,nbsp:%,eol:↲
hi SpecialKey ctermfg=237 guifg=#3a3a3a
hi NonText ctermfg=66 guifg=#5f8787


"""leader ==> space
let mapleader = "\<Space>"

"""command line completion
set wildmenu wildmode=list:longest,full
set history=10000

"""to use backspace
noremap  
noremap!  
set backspace=2
" noremap      maybe don't need
" noremap!     maybe don't need

"""tab
nnoremap <Tab> :tabn<cr>

set wildmode=longest:full,full
set history=10000

set cursorline
set cursorcolumn

"""latex
set conceallevel=0

"""terminal
" exit terminal
tnoremap q <C-\><C-n>:q<CR>
" from insert to normal
tnoremap <ESC> <C-\><C-n>
"function! Term()
"  call termopen(&shell, {'on_exit': 'OnExit'})
"endfunction
"
"function! CloseLastTerm()
"  if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
"    :q
"  endif
"endfunction
"
"function! OnExit(job_id, code, event)
"  if a:code == 0
"    call CloseLastTerm()
"  endif
"endfunction
