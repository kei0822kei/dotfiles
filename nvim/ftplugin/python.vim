" append path for vim completion

" python3 << EOF
" import os
" import sys
" 
" home = os.path.expanduser("~")
" 
" path_lst = []
" 
" path_lst.append(home+"/.pyenv/versions/anaconda3-5.3.1/envs/conda/lib/python3.6/site-packages")
" path_lst.append(home+".ghq/github.com/kei0822kei/crystal")
" path_lst.append(home+".ghq/github.com/kei0822kei/phonaly")
" path_lst.append(home+".ghq/github.com/kei0822kei/smooziee")
" for path in path_lst:
"     if not path in sys.path:
"         sys.path.insert(0, path)
" 
" EOF
