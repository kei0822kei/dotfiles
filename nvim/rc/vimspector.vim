" ref. https://alpha2phi.medium.com/neovim-debugging-application-70c525754064

nmap <C-s>n <Plug>VimspectorContinue
nmap <C-s>s <Plug>VimspectorStop
nmap <C-s>r <Plug>VimspectorRestart
nmap <C-s>p <Plug>VimspectorPause
nmap <C-s>b <Plug>VimspectorToggleBreakpoint
nmap <C-s>c <Plug>VimspectorToggleConditionalBreakpoint
nmap <C-s>a <Plug>VimspectorAddFunctionBreakpoint
nmap <C-s>v <Plug>VimspectorStepOver
nmap <C-s>i <Plug>VimspectorStepInto
nmap <C-s>o <Plug>VimspectorStepOut
nmap <C-s>u <Plug>VimspectorRunToCursor

let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_install_gadgets = [
      \ 'debugpy',
      \ 'vscode-go',
      \ 'CodeLLDB',
      \ 'vscode-node-debug2',
      \ ]
