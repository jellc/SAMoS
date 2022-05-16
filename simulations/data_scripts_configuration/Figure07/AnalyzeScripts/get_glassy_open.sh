#!/bin/bash
## Silke Henkes, 14.10.2016
## Cleaned up and commented on 18.01.2017

# Note that variables in following several lines that point to specific location of the data
# and source code need to be modified before this script can be used.

# Location of the data
topdir_out='/home/cpsmth/s01sh3/Documents/Hybrid_nontesting/'
# Name of the parameter file
parfile='open_boundary_generic.conf'
# Name of the position input file
infile='epi_testing.input'
# Name of the boundary input file
infile_bound='epi_testing.boundary'
topdir_python='/home/cpsmth/s01sh3/Documents/SAMoS/samos/utils/'

## This script computes various glassy related quantities (chiefly MSD and Self-Intermediate scattering function) for each run.
## It uses the python script AnalyzeGlassy.py, available in the utils forlder of the SAMoS package.
## The script itself calls on Glassy to perform the actual data read and analysis for each run (read in as a whole to compute time correlation functions)
## It then produces a python dictionary with the analyzed data, and saves it as a python pickle file.


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
# Number of saved files skipped as equilibration time
skip=100

topdir_pickle='/home/cpsmth/s01sh3/Documents/Hybrid_nontesting/pickle/'
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
                                      confdir=${topdir_out}open_boundaries/v0_${v}/nu_${nu}/gamma_${gamma}/permult_${pm}/line_${line}/
				      echo confdir
				      echo python ${topdir_python}AnalyzeGlassy.py -i cell_000 -r ${infile} -c ${parfile} -d ${confdir} -o ${topdir_pickle} -s ${skip} -p glassy_open_v${v}_nu${nu}_gam${gamma}_per${pm}_line${line} -u 2 --drift --getMSD --getSelfInt --ignore
                                      python ${topdir_python}AnalyzeGlassy.py -i cell_000 -r ${infile} -c ${parfile} -d ${confdir} -o ${topdir_pickle} -s ${skip} -p glassy_open_v${v}_nu${nu}_gam${gamma}_per${pm}_line${line} -u 2 --drift --getMSD --getSelfInt --ignore
				done
			done
		done
	done
done
