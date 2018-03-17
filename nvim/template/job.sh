#$ -S /bin/zsh
#$ -cwd
#$ -N
#$ -pe mpi* 16
#$ -e err.log
#$ -o std.log

mpirun vasp541mpi
