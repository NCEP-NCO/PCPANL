set -x

##############################

BASE=$(pwd)
export BASE

set -x
. /usr/share/lmod/lmod/init/ksh
module purge
module load envvar/1.0
module load PrgEnv-intel/8.1.0
module load craype/2.7.8
module load intel/19.1.3.304
#module load cray-mpich/8.1.9
module use ../modulefiles
module load PCPANL

module list

cd ${BASE}/st4_oconus_convert.fd
make clean
make
make mvexec
make clean

##############################

