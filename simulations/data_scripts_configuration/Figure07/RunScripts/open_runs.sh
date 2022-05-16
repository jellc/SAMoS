#!/bin/bash
## Silke Henkes, 14.10.2016
## Cleaned up and commented 18.01.17

# Modify directories as appropriate
# Directory with the SAMOS executable
topdir_in='/home/cpsmth/s01sh3/Documents/SAMoS/samos/build/'
# data directory for output
topdir_out='/home/cpsmth/s01sh3/Documents/Hybrid_nontesting/'
# parameter file
parfile='open_boundary_generic.conf'
infile='epi_testing.input'
infile_bound='epi_testing.boundary'

## The following are all the runs performed for open boundaries. Note that as written,
## this script will sequentially run 220 simulations on a single CPU core
## Modify using parameters (similar to lineval) as fit
## WARNING! As written, this script will generate approximately 102GB of output data.

# Target area A0 of each cell
# Stays fixed as a length scale here
aval='3.0'
# Parameter \Kappa of the vertex model
# Also stays fixed as a stiffness scale
kval='1.0'
# Parameter \Gamma of the vertex model
gamval='0.1'
# A slight wrinkle here (due to an earlier mistake): 
# permult = - \Lambda / 2\Gamma, 
# It is related to the dimensionless parameter p_0 by
# p_0 = 2*permult/sqrt(A_0) = 1.1547 * permult
permult='2.0 2.2 2.4 2.6 2.8 2.9 3.0 3.1 3.2 3.25 3.3 3.35 3.4 3.5 3.6 3.7 3.8 3.9 4.0 4.1 4.2 4.3'
# And the line tension as a third parameter
#lineval='0.0 0.1 0.3 1.0'
lineval=$1
# Finally, active driving velocity (aka f_a in the paper)
v0val='0.01 0.03 0.1 0.3 0.6'
# And noise level (aka 1/\tau_r in the paper)
nuval='0.1 0.01'
# Runtime set globally
trun=250000

for v in ${v0val}
do
	for nu in ${nuval}
	do 
		for gamma in ${gamval}
		do
			for pm in ${permult}
			do
				for line in ${lineval}
				do
				  confdir=${topdir_out}open_boundaries/v0_${v}/nu_${nu}/gamma_${gamma}/permult_${pm}/line_${line}
				  mkdir -p ${confdir}
				  echo ${confdir}
				  lambda=`echo "-2*${pm}*${gamma}" | bc -l`
				  echo $lambda
				  # Use our position and boundary input files
				  cp ${infile} ${confdir}'/'${infile}
				  cp ${infile_bound} ${confdir}'/'${infile_bound}
				  newparfile=${confdir}/${parfile}
				  cp ${topdir_out}${parfile} ${newparfile}
				  # sed patterns for the input variables. Use sed -i -e <arguments> on a mac.
				  sed -i "s|@KVAL|$kval|" $newparfile
				  sed -i "s|@GAMMA|$gamma|" $newparfile
				  sed -i "s|@LAMBDA|$lambda|" $newparfile
				  sed -i "s|@LINE|$line|" $newparfile
				  sed -i "s|@NU|$nu|" $newparfile
				  sed -i "s|@V0|$v|" $newparfile
				  # Sed pattern for the runtime
				  sed -i "s|@TRUN|$trun|" $newparfile
				  cd $confdir
				  echo ${topdir_in}samos $newparfile
				  ${topdir_in}samos $newparfile
				done
			done
		done
	done
done
	    
