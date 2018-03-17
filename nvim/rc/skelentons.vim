augroup template
  autocmd!
  autocmd BufNewFile job.sh 0r $HOME/.mydot/nvim/template/job.sh
  autocmd BufNewFile INCAR 0r $HOME/.mydot/nvim/template/INCAR
  autocmd BufNewFile KPOINTS 0r $HOME/.mydot/nvim/template/KPOINTS
  autocmd BufNewFile disp.conf 0r $HOME/.mydot/nvim/template/disp.conf
  autocmd BufNewFile dos.conf 0r $HOME/.mydot/nvim/template/dos.conf
  autocmd BufNewFile thermal.conf 0r $HOME/.mydot/nvim/template/thermal.conf
  autocmd BufNewFile fc-hdf.conf 0r $HOME/.mydot/nvim/template/fc-hdf.conf
  autocmd BufNewFile kaccum.conf 0r $HOME/.mydot/nvim/template/kaccum.conf
  autocmd BufNewFile *.py 0r $HOME/.mydot/nvim/template/skeleton.py
  autocmd BufNewFile *.sh 0r $HOME/.mydot/nvim/template/skeleton.sh
augroup END
