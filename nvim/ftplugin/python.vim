" append path for vim completion

python3 << EOF
import os
import sys


home = os.path.expanduser("~")

path_lst = []

path_lst.append(home+"/Github/phonaly")
path_lst.append(home+"/Github/poscry")
path_lst.append(home+"/Github/smooziee")
path_lst.append(home+"/.pyenv/versions/anaconda3-5.0.1/lib/python3.6/site-packages")
for path in path_lst:
    if not path in sys.path:
        sys.path.insert(0, path)

EOF
