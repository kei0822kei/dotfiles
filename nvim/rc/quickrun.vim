let g:quickrun_config = {
    \ '_' : {
        \ 'runner' : 'vimproc',
        \ 'runner/vimproc/updatetime' : 40,
        \ 'outputter' : 'error',
        \ 'outputter/error/success' : 'buffer',
        \ 'outputter/error/error'   : 'quickfix',
        \ 'outputter/buffer/split' : ':botright 18sp',
    \ }
\}
let g:quickrun_no_default_key_mappings = 1
nnoremap <C-q> :cclose<CR>:write<CR>:QuickRun -mode n<CR>
let g:quickrun_config._.runner = 'neovim_job'
