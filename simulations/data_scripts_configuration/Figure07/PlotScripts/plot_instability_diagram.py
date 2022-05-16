import random
import sys, os, glob
import pickle as pickle
import copy as cp
import numpy as np
import scipy as sp
import matplotlib
import matplotlib.pyplot as plt
import matplotlib.patches as ptch
import matplotlib.lines as lne
from matplotlib.colors import LinearSegmentedColormap


# Changing system parameters for plotting optics
matplotlib.rcParams['text.usetex'] = 'false'
matplotlib.rcParams['lines.linewidth'] = 2
matplotlib.rcParams['axes.linewidth'] = 2
matplotlib.rcParams['xtick.major.size'] = 8
matplotlib.rcParams['ytick.major.size'] = 8
matplotlib.rcParams['font.size']=16.0
matplotlib.rcParams['legend.fontsize']=14.0
# Color dictionary for line graphs
cdict = {'red':   [(0.0,  0.0, 0.5),
				   (0.35,  1.0, 0.75),
                   (0.45,  0.75, 0.0),
                   (1.0,  0.0, 0.0)],

         'green': [(0.0,  0.0, 0.0),
				   (0.35,  0.0, 0.5),
                   (0.5, 1.0, 1.0),
                   (0.8,  0.5, 0.0),
                   (1.0,  0.0, 0.0)],

         'blue':  [(0.0,  0.0, 0.0),
                   (0.5,  0.0, 0.0),
                   (0.7, 0.5, 1.0),
                   (1.0,  0.25, 0.0)]}
                   
import argparse


# Note that these absolute paths need to be modified before this script can be used!
sys.path.insert(1,'/home/cpsmth/s01sh3/Documents/SAMoS/samos/utils/')

topdir_pickle='/home/cpsmth/s01sh3/Documents/Hybrid_nontesting/pickle/'
topdir_python='/home/cpsmth/s01sh3/Documents/SAMoS/samos/utils/'

# The computation of the instability is for open systems only. Below are the chief parameters used there, essentially gamma = 0.1.
gamval=['0.1']
nuval=['0.01','0.1']
v0=['0.01','0.03','0.1','0.3','0.6']
# Sigh. Again, this is mislabeled ...
# Multiply by 2 and divide by square root of pi - or the real area, depending
permult=['2.0','2.2', '2.4','2.6', '2.8','2.9', '3.0','3.1', '3.2', '3.25','3.3','3.35', '3.4', '3.5', '3.6', '3.7', '3.8', '3.9', '4.0', '4.1', '4.2', '4.3']
# Another wrinkle: The 2.5 is for the runs where the time stepping was larger, so that there are 2.5 time units between frames, instead of 1 
# This should have been taken care of in the processing, but there was an error.
# All tmult = 1 for cleanly resimulated data ...
tmult=[1,2.5,1,2.5,1,2.5,1,2.5,1,2.5,2.5,2.5,1,1,1,1,1,1,1,1,1,1,1]
lineval=['0.0','0.1','0.3','1.0']


fixed=False
if fixed:
    A0=3.1415
else:
    A0=3.0

# Creating line colors for different line plots
multmap=LinearSegmentedColormap('test',cdict,N=len(permult)) 
vmap=LinearSegmentedColormap('test',cdict,N=len(v0))
linemap=LinearSegmentedColormap('test',cdict,N=len(lineval))
mrkr=['o','d','x','>']
lsty=['-',':','--','-.']

# All data loaded into this program are python dictionaries of the following type:
#dataS={'vel2av':vel2av,'f2av':f2av,'areav':areav,'areadist':areadist,'pratav':pratav,'ratbin':ratbin,'pratdist':pratdist,'zbin':conbin,'zdist':zdist,'zav':zav,'borderlen':borderlen,'bfrac':bfrac,'Ninside':Ninside,'mask':args.mask}

                                
   
# Actual border length plots. Note the large fluctuations. Also, close to the instability, in some cases the border becomes disjointed and it becomes
# difficult to compute the actual border length. All analysis is done for much earlier times!

#for nu in nuval:
        #for line in lineval:
                #for gamma in gamval:
                        #for v in v0:
                                #plt.figure()
                                #for p in range(len(permult)):
                                        #try:
					  ##picklefile=topdir_data+'v0_' + v+'/nu_'+ nu + '/gamma_' +gamma+'/permult_' +permult[p] +'/line_' + line + '/CellStats.p'
                                                ##picklefile=topdir_pickle+'Open_v'+v+'_nu'+nu+'_gam'+gamma+'_per'+permult[p]+'_line'+line+'_CellsStats.p'
                                                #if fixed:
                                                    #picklefile=topdir_pickle+'Fixed_v'+v+'_nu'+nu+'_gam'+gamma+'_per'+permult[p]+'_line'+line+'_CellsStats.p'
                                                #else:
                                                    #picklefile=topdir_pickle+'Open_v'+v+'_nu'+nu+'_gam'+gamma+'_per'+permult[p]+'_line'+line+'_CellsStats.p'
                                                #data=pickle.load(open(picklefile, "rb"))
                                                #borderlen=data['borderlen']
                                                #xval=tmult[p]*np.linspace(0,len(borderlen)-1,len(borderlen))
                                                ##print borderlen
                                                ##print len(borderlen)
                                                #plt.plot(xval,borderlen,'-',color=multmap(p),lw=2,label='p_0=' +permult[p])
                                        #except:
                                                ##picklefile=topdir_pickle+'Open_v'+v+'_nu'+nu+'_gam'+gamma+'_per'+permult[p]+'_line'+line+'_CellsStats.p'
                                                #picklefile=topdir_pickle+'Open_v'+v+'_nu'+nu+'_gam'+gamma+'_per'+permult[p]+'_line'+line+'_CellsStats.p'
                                                #print picklefile
                                                #pass
                                #plt.xlabel('time')
                                #plt.ylabel('Border length')
                                #plt.legend(loc=2)
                                ##plt.xlim(3.6,4.4)
                                #plt.title('v0='+v+', nu=' + nu+', gamma='+gamma+', line=' +line)
                                
 
# Collecting data of the instability time scale
# The intial boundary length is 198. We have found empirically that wen we cross a threshold of approx. 210, there is no return
# Initially every configuration is set to 1000, i,e. the maximum runtime of simulations in this part of the phase space
# The instability time is the moment when the threshold of 210 is passed. Other thresholds give qualitatively similar results.
instability=1000*np.ones((len(v0),len(nuval),len(gamval),len(permult),len(lineval)))
borderav=np.zeros((len(v0),len(nuval),len(gamval),len(permult),len(lineval)))
borderfluct=np.zeros((len(v0),len(nuval),len(gamval),len(permult),len(lineval)))
# We also need to carefully keep an account of which configurations have valid data
isdata=np.zeros((len(v0),len(nuval),len(gamval),len(permult),len(lineval)))
isdata2=np.zeros((len(v0),len(nuval),len(gamval),len(permult),len(lineval)))
# Initial border length based on a circular configuration of 1000 cells of mean area 3
around=2*np.pi*np.sqrt(1000*3/np.pi)
lmax=210
for v in range(len(v0)):
	for nu in range(len(nuval)):
		for gam in range(len(gamval)):
			for p in range(len(permult)):
				for l in range(len(lineval)):
				      try:
                                          if fixed:
                                              picklefile=topdir_pickle+'Fixed_v'+v0[v]+'_nu'+nuval[nu]+'_gam'+gamval[gam]+'_per'+permult[p]+'_line'+lineval[l]+'_CellsStats.p'
                                          else:
                                              picklefile=topdir_pickle+'Open_v'+v0[v]+'_nu'+nuval[nu]+'_gam'+gamval[gam]+'_per'+permult[p]+'_line'+lineval[l]+'_CellsStats.p'
                                          
					  print picklefile
					  data=pickle.load(open(picklefile, "rb"))
                                          borderlen=data['borderlen']
                                          isdata[v,nu,gam,p,l]=1
                                          hmm = [index for index,value in enumerate(borderlen) if value>210]
                                          if len(hmm)>0:
                                                idx=min(hmm)
                                                instability[v,nu,gam,p,l]=(idx-1)*tmult[p]
                                          elif len(borderlen)<30/tmult[p]:
                                                isdata[v,nu,gam,p,l]=0
                                          elif len(borderlen)>skip:
                                                print len(borderlen)
                                                instability[v,nu,gam,p,l]=1000
                                                isdata2[v,nu,gam,p,l]=1
                                                borderav[v,nu,gam,p,l]=np.mean(borderlen[skip:])/around
                                                borderfluct[v,nu,gam,p,l]=np.std(borderlen[skip:])/around
				      except:
					  pass
				      
# Instability as line plots				      
for nu in range(len(nuval)):
        for gam in range(len(gamval)):
                plt.figure()
                for l in range(len(lineval)):
                        for v in range(len(v0)):
                                idxs= [index for index,value in enumerate(isdata[v,nu,gam,:,l]) if value>0]
                                xval=2*np.array(permult).astype(float)/np.sqrt(A0)
                                plt.semilogy(xval[idxs],instability[v,nu,gam,idxs,l],marker=mrkr[l],linestyle=lsty[l],color=vmap(v),lw=2,label='v0=' +v0[v] )
                plt.xlabel('p0')
                plt.ylabel('instability time scale')
                plt.title('Noise ' +nuval[nu]+', gamma ' + gamval[gam])
                plt.legend(loc=2)

                        
# Plot phase diagrams of the instability time, such as Figure 7d
# A lot of bespoke wrangling with the placement of labels and ticks here due to
# 1) conversion from permult to p0: 
# p_0 = 2*permult/sqrt(A_0) = 1.1284 * permult for fixed systems
# p_0 = 2*permult/sqrt(A_0) = 1.1547 * permult for open systems
# 2) The default of pcolor is not to centre the boxes on the coordinates, but to place the box edges there
permult.append('4.4')
v0.append('0.9')
actual=np.array([ 2.30940108,  2.54034118,  2.77128129,  3.0022214 ,  3.23316151,
        3.34863156,  3.46410162,  3.57957167,  3.69504172,  3.75277675,
        3.81051178,  3.8682468 ,  3.92598183,  4.04145188,  4.15692194,
        4.27239199,  4.38786205,  4.5033321 ,  4.61880215,  4.73427221,
        4.84974226,  4.96521232,  5.08068237])
myactual=0.5*(actual[0:(len(actual)-1)]+actual[1:])

xtick0=[2.5,3.0,3.5,4.0,4.5,5.0]
xtick1=[2.6,3.1,3.6,4.1,4.6,5.1]
ytick1=[0.01,0.03,0.1,0.3,0.6]
ytick0=[np.log10(0.015),np.log10(0.05),np.log10(0.17),np.log10(0.45),np.log10(0.75)]
for nu in range(len(nuval)):
        for gam in range(len(gamval)):
                for l in range(len(lineval)):
                        plt.figure()
                        xval=2*np.array(permult).astype(float)/np.sqrt(A0)
                        yval=np.log10(np.array(v0).astype(float))
                        plt.pcolor(xval,yval,np.log10(instability[:,nu,gam,:,l]),cmap='Blues_r',vmin=1, vmax=3)
                        # Add some data points on there - but only if the thing is actually unstable
                        for u in range(len(yval)-1):
                            plt.plot(myactual,ytick0[u]*myactual/myactual,'*w',markeredgecolor='w')
                        #plt.pcolor(taualpha[:,nu,gam,:,l])
                        plt.colorbar()
                        plt.xticks(xtick1,xtick0,fontsize=20)
                        plt.yticks(ytick0,ytick1,fontsize=20)
                        plt.xlim(2.3,5.08)
                        plt.ylim(-2,np.log10(0.9))
                        plt.title('Noise ' +nuval[nu]+', gamma ' + gamval[gam]+', line ' + lineval[l])
                        plt.xlabel('p0',fontsize=20)
                        plt.ylabel('v0',fontsize=20)

                        
                        
plt.show()

		







