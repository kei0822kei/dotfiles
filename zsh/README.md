zsh
===

Overview
manuals  

## zsh
-*- wildcard -*-

*; all character including 0 character  
?; 1 character  
[a-zA-Z]; a to z and A to Z  


-*- quotes -*-

special character  
; & ( ) | ^ < > ? * [ ] $ ' " ` { } <Enter> <Tab> <Space>  

\; escape next 1 character  
'; escape between ' ' except '  
"; escape betwwen " " except $ ` \  


-*- logical operator -*-

||; or  
command1 || command2  
is same as  
if command1; then  
then
  :    # do nothing  
else  
  command2  
fi  

&&; and  
if command1; then  
then
  command2  
else  
  :    # do nothing  
fi  


-*- command grouping -*-

???  


-*- special variable -*-

$?; exit code  
$$; current process ID  (you can check by ps command)  
$!; background process ID  ex) wait $!    wait background job  
$-; flag (???)  
