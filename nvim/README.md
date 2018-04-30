nvim
====

Overview
plugins and their manuals

## NERDTree
-- Bookmark --
:Bookmark []  
:ClearBookmarks []  
:ClearAllBookmarks  

-- file --
m -> a;    make file or directory  
m -> m -> "file path";    mv  
m -> d;    delete  
I;    open or close dot file  
r;    update  


## braceless
zc; カーソルの下の折畳を一段階閉じる  
zC; カーソルの下の折畳を再帰的に全て閉じる  
zo; カーソルの下の折畳を一段階開く  
zO; カーソルの下の折畳を再帰的に全て開く  
zM; 全ての折畳を閉じる（前に操作した対象のみ）  
zR; 全ての折畳を開く  


## vim-auto-save
deactivate <= default  
activate => let g:auto_save = 1  


## vim-over
normal mode: <Leader>o  
normal mode: sub => substitute word  
visual mode: <Leader>o  


## vim-quickrun
\<Leader\>r  


## easy-motion
<Leader>k  => head up  
<Leader>j  => head down  
<Leader>b  => word up  
<Leader>e  => word down  


## syntastic
:SyntasticCheck  
:Error  
:SyntasticInfo  
setting file => $HOME/.flake8

