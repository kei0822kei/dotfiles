" ref. https://wonderwall.hatenablog.com/entry/2017/03/01/223934
" https://qiita.com/YuukiMiyoshi/items/578827f0f8cf48b784b1

let g:ale_linters = {
    \ 'python': ['flake8'],
    \ }

let g:ale_python_flake8_executable = g:python3_host_prog
let g:ale_python_flake8_options = '-m flake8'

" let g:ale_python_pylint_executable = g:python3_host_prog
" let g:ale_python_pylint_options = '-m pylint'
" let g:ale_python_autopep8_executable = g:python3_host_prog
" let g:ale_python_autopep8_options = '-m autopep8'
" let g:ale_python_isort_executable = g:python3_host_prog
" let g:ale_python_isort_options = '-m isort'
" let g:ale_python_black_executable = g:python3_host_prog
" let g:ale_python_black_options = '-m black'

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1
let g:ale_lint_on_save = 1
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'



" customize error message
" see https://github.com/dense-analysis/ale
let g:ale_echo_msg_format = '[%linter%] %s [%code%]'

