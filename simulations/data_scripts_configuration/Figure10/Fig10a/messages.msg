INFO: 2022-Apr-25 14:25:31: Messages will be sent to messages.msg.
INFO: 2022-Apr-25 14:25:31: Adding config file configuration of type json.
INFO: 2022-Apr-25 14:25:31: Simulation box is fixed with size (lx,ly,lz) = (100,100,10).
INFO: 2022-Apr-25 14:25:31: Generated group 'all' containing all particles.
INFO: 2022-Apr-25 14:25:31: Reading particle coordinates from file: epi_testing.input
INFO: 2022-Apr-25 14:25:31: Column 1 of input file is : id.
INFO: 2022-Apr-25 14:25:31: Column 2 of input file is : radius.
INFO: 2022-Apr-25 14:25:31: Column 3 of input file is : x.
INFO: 2022-Apr-25 14:25:31: Column 4 of input file is : y.
INFO: 2022-Apr-25 14:25:31: Column 5 of input file is : z.
INFO: 2022-Apr-25 14:25:31: Column 6 of input file is : vx.
INFO: 2022-Apr-25 14:25:31: Column 7 of input file is : vy.
INFO: 2022-Apr-25 14:25:31: Column 8 of input file is : vz.
INFO: 2022-Apr-25 14:25:31: Column 9 of input file is : nx.
INFO: 2022-Apr-25 14:25:31: Column 10 of input file is : ny.
INFO: 2022-Apr-25 14:25:31: Column 11 of input file is : nz.
INFO: 2022-Apr-25 14:25:31: Column 12 of input file is : nvx.
INFO: 2022-Apr-25 14:25:31: Column 13 of input file is : nvy.
INFO: 2022-Apr-25 14:25:31: Column 14 of input file is : nvz.
INFO: 2022-Apr-25 14:25:31: Column 15 of input file is : area.
INFO: 2022-Apr-25 14:25:31: Column 16 of input file is : type.
INFO: 2022-Apr-25 14:25:31: Column 17 of input file is : boundary.
INFO: 2022-Apr-25 14:25:31: Generated groups 'tissue', 'environment', 'boundary' and 'internal' to distinguish particles beloging to the tissue or not.
INFO: 2022-Apr-25 14:25:31: Generated groups 'boundary' and 'internal' to distinguish if tissue particles are inside or on the boundary.
INFO: 2022-Apr-25 14:25:31: Read data for 1109 particles.
INFO: 2022-Apr-25 14:25:31: There are 2 distinct particle types in the system.
INFO: 2022-Apr-25 14:25:31: Periodic flag for the system is set to false.
INFO: 2022-Apr-25 14:25:31: Finished reading system coordinates from epi_testing.input.
INFO: 2022-Apr-25 14:25:31: Reading boundary connectivity information from file: epi_testing.boundary
INFO: 2022-Apr-25 14:25:31: Finished reading boundary connectivity data from epi_testing.boundary.
INFO: 2022-Apr-25 14:25:31: Created cell list with 3468 cells.
INFO: 2022-Apr-25 14:25:31: Each cell has dimensions (2.9411764705882355,2.9411764705882355,3.3333333333333335).
INFO: 2022-Apr-25 14:25:31: Using cell lists for neighbour list builds.
INFO: 2022-Apr-25 14:25:31: Faces will be build using Delaunay triangulation.
INFO: 2022-Apr-25 14:25:31: Neighbour list.  Setting maximum face perimeter to 30.0.
INFO: 2022-Apr-25 14:25:31: Neighbour list. Using geometric centers for mesh dual.
INFO: 2022-Apr-25 14:25:31: Created neighbour list with cutoff 2.3999999999999999 and padding distance 0.5.
INFO: 2022-Apr-25 14:25:31: Adding particle to group g1.
INFO: 2022-Apr-25 14:25:31: Added 109 particles to group g1.
INFO: 2022-Apr-25 14:25:31: Adding group g1.
INFO: 2022-Apr-25 14:25:31: Adding particle to group g2.
INFO: 2022-Apr-25 14:25:31: Added 1000 particles to group g2.
INFO: 2022-Apr-25 14:25:31: Adding group g2.
WARNING: 2022-Apr-25 14:25:31: Constraint. Maximum number of iterations has not been set. Assuming 100
WARNING: 2022-Apr-25 14:25:31: Constraint. Tolerance has not been set. Assuming 1e-6.
WARNING: 2022-Apr-25 14:25:31: Constraint. No particle groups set. Assuming "all".
INFO: 2022-Apr-25 14:25:31: Planar constraint. Setting plane dimensions to lx = 100 and ly = 100.
INFO: 2022-Apr-25 14:25:31: Plane constraint. Particle motion will not be affected by the box boundaries.
WARNING: 2022-Apr-25 14:25:31: Plane constraint. No zpos specified. Assuming that the constraint plane is at z = 0.
INFO: 2022-Apr-25 14:25:31: Added  : plane to the list of constraints.
INFO: 2022-Apr-25 14:25:31: Adding constraint of type plane.
WARNING: 2022-Apr-25 14:25:31: Value object. No minimum value set. Assuming 0.
WARNING: 2022-Apr-25 14:25:31: Value object. No maximum value set. Assuming 1.0.
WARNING: 2022-Apr-25 14:25:31: Value object. No number of steps set. Assuming 1000.
INFO: 2022-Apr-25 14:25:31: Using constant value object.
WARNING: 2022-Apr-25 14:25:31: Number of particle types will be read from the intitial configuration.
INFO: 2022-Apr-25 14:25:31: Global area stiffness (K) for vertex-particle pair potential is set to 1.0.
INFO: 2022-Apr-25 14:25:31: Global perimeter stiffness (gamma) for vertex-particle pair potential is set to 0.1.
INFO: 2022-Apr-25 14:25:31: Global contact stiffness (lambda) for vertex-particle pair potential is set to -.60.
WARNING: 2022-Apr-25 14:25:31: Number of time steps between mesh updates in vertex-particle pair potential not set. Assuming default 0. No updates beyond those during the neighbour list and/or regular equiangulation steps for triangular lattices will be made.
INFO: 2022-Apr-25 14:25:31: Vertex-particle pair potential does not include additional terms arising at the boundary.
INFO: 2022-Apr-25 14:25:31: Added pair potential : vp to the list of pair interactions.
INFO: 2022-Apr-25 14:25:31: Pair potential vp has neighbour list. Neighbour list updates will be performed during the simulation.
INFO: 2022-Apr-25 14:25:31: Added vp to the list of pair potentials.
WARNING: 2022-Apr-25 14:25:31: Value object. No minimum value set. Assuming 0.
WARNING: 2022-Apr-25 14:25:31: Value object. No maximum value set. Assuming 1.0.
WARNING: 2022-Apr-25 14:25:31: Value object. No number of steps set. Assuming 1000.
INFO: 2022-Apr-25 14:25:31: Using constant value object.
WARNING: 2022-Apr-25 14:25:31: Number of particle types will be read from the intitial configuration.
INFO: 2022-Apr-25 14:25:31: Global line tension (lambda) for line tension pair potential is set to 0.1.
INFO: 2022-Apr-25 14:25:31: Global prefered distance (l0) for line tension pair potential is set to 0.0.
INFO: 2022-Apr-25 14:25:31: Added pair potential : line_tension to the list of pair interactions.
INFO: 2022-Apr-25 14:25:31: Pair potential line_tension has neighbour list. Neighbour list updates will be performed during the simulation.
INFO: 2022-Apr-25 14:25:31: Added line_tension to the list of pair potentials.
WARNING: 2022-Apr-25 14:25:31: Value object. No minimum value set. Assuming 0.
WARNING: 2022-Apr-25 14:25:31: Value object. No maximum value set. Assuming 1.0.
WARNING: 2022-Apr-25 14:25:31: Value object. No number of steps set. Assuming 1000.
INFO: 2022-Apr-25 14:25:31: Using constant value object.
WARNING: 2022-Apr-25 14:25:31: Number of particle types will be read from the intitial configuration.
INFO: 2022-Apr-25 14:25:31: Global boundary bending rigidity (kappa) is set to 0.5.
WARNING: 2022-Apr-25 14:25:31: No preferred angle (theta0) specified for boundary bending pair potential. Setting it to PI.
INFO: 2022-Apr-25 14:25:31: Added pair potential : boundary_bending to the list of pair interactions.
INFO: 2022-Apr-25 14:25:31: Pair potential boundary_bending has neighbour list. Neighbour list updates will be performed during the simulation.
INFO: 2022-Apr-25 14:25:31: Added boundary_bending to the list of pair potentials.
WARNING: 2022-Apr-25 14:25:31: Value object. No minimum value set. Assuming 0.
WARNING: 2022-Apr-25 14:25:31: Value object. No maximum value set. Assuming 1.0.
WARNING: 2022-Apr-25 14:25:31: Value object. No number of steps set. Assuming 1000.
INFO: 2022-Apr-25 14:25:31: Using constant value object.
WARNING: 2022-Apr-25 14:25:31: Number of particle types will be read from the intitial configuration.
INFO: 2022-Apr-25 14:25:31: Global potential strength (k) for soft pair potential is set to 10.0.
INFO: 2022-Apr-25 14:25:31: Global potential range (a) for soft pair potential is set to 1.0.
INFO: 2022-Apr-25 14:25:31: Added pair potential : soft to the list of pair interactions.
INFO: 2022-Apr-25 14:25:31: Pair potential soft has neighbour list. Neighbour list updates will be performed during the simulation.
INFO: 2022-Apr-25 14:25:31: Added soft to the list of pair potentials.
INFO: 2022-Apr-25 14:25:31: Soft pair potential. Setting strength to 10.0 for particle pair of types (1 and 2).
INFO: 2022-Apr-25 14:25:31: Soft pair potential. Setting range to 2.0 for particle pair of types (1 and 2).
INFO: 2022-Apr-25 14:25:31: Setting new parameters for soft.
INFO: 2022-Apr-25 14:25:31: Global coupling constant (tau) for active jamming polar alignment is set to 1.0.
INFO: 2022-Apr-25 14:25:31: Velocity alignment is set to use normalised velocity vectors. Alignment strength is independent of v0.
INFO: 2022-Apr-25 14:25:31: Added external aligner : ajpolar to the list of external alignments.
INFO: 2022-Apr-25 14:25:31: Added ajpolar to the list of external aligners.
INFO: 2022-Apr-25 14:25:31: Added logger. Logged quantities will be sent to cell.log.
INFO: 2022-Apr-25 14:25:31: Logs will be produced every 100 time steps.
INFO: 2022-Apr-25 14:25:31: Adding log quantity : area.
INFO: 2022-Apr-25 14:25:31: Adding log quantity : avg_perim.
INFO: 2022-Apr-25 14:25:31: Adding log quantity : size.
INFO: 2022-Apr-25 14:25:31: Adding log quantity : vp_energy.
INFO: 2022-Apr-25 14:25:31: Adding logger to file cell.log.
INFO: 2022-Apr-25 14:25:31: Dump type set to vtp
WARNING: 2022-Apr-25 14:25:31: No dump directory specified. Using current directory.
INFO: 2022-Apr-25 14:25:31: Dump will be sent to the file with base name cell with extension vtp.
INFO: 2022-Apr-25 14:25:31: Dumping will start after 0 time steps.
INFO: 2022-Apr-25 14:25:31: Dump will be produced every 200 time steps.
INFO: 2022-Apr-25 14:25:31: Each dumped time step will be stored in a separate file labelled by the time step.
INFO: 2022-Apr-25 14:25:31: Mesh will be included in the dump file.
INFO: 2022-Apr-25 14:25:31: Adding dump to file cell.
INFO: 2022-Apr-25 14:25:31: Parameter freq for dump cell is set to 200.
INFO: 2022-Apr-25 14:25:31: Setting flag include_mesh for dump cell.
INFO: 2022-Apr-25 14:25:31: Setting flag multi for dump cell.
INFO: 2022-Apr-25 14:25:31: Parameter start for dump cell is set to 0.
INFO: 2022-Apr-25 14:25:31: Parameter type for dump cell is set to vtp.
INFO: 2022-Apr-25 14:25:31: Dump type set to vtp
WARNING: 2022-Apr-25 14:25:31: No dump directory specified. Using current directory.
INFO: 2022-Apr-25 14:25:31: Dump will be sent to the file with base name cell_dual with extension vtp.
INFO: 2022-Apr-25 14:25:31: Dumping will start after 0 time steps.
INFO: 2022-Apr-25 14:25:31: Dump will be produced every 200 time steps.
INFO: 2022-Apr-25 14:25:31: Each dumped time step will be stored in a separate file labelled by the time step.
INFO: 2022-Apr-25 14:25:31: VTP file will contain dual mesh.
INFO: 2022-Apr-25 14:25:31: Adding dump to file cell_dual.
INFO: 2022-Apr-25 14:25:31: Setting flag dual for dump cell_dual.
INFO: 2022-Apr-25 14:25:31: Parameter freq for dump cell_dual is set to 200.
INFO: 2022-Apr-25 14:25:31: Setting flag multi for dump cell_dual.
INFO: 2022-Apr-25 14:25:31: Parameter start for dump cell_dual is set to 0.
INFO: 2022-Apr-25 14:25:31: Parameter type for dump cell_dual is set to vtp.
INFO: 2022-Apr-25 14:25:31: Dump type set to full
WARNING: 2022-Apr-25 14:25:31: No dump directory specified. Using current directory.
INFO: 2022-Apr-25 14:25:31: Dump will be sent to the file with base name cell with extension dat.
INFO: 2022-Apr-25 14:25:31: Dumping will start after 0 time steps.
INFO: 2022-Apr-25 14:25:31: Dump will be produced every 200 time steps.
INFO: 2022-Apr-25 14:25:31: Each dumped time step will be stored in a separate file labelled by the time step.
INFO: 2022-Apr-25 14:25:31: Include keys line into the dump file.
INFO: 2022-Apr-25 14:25:31: Adding dump to file cell.
INFO: 2022-Apr-25 14:25:31: Setting flag area for dump cell.
INFO: 2022-Apr-25 14:25:31: Setting flag boundary for dump cell.
INFO: 2022-Apr-25 14:25:31: Setting flag cell_area for dump cell.
INFO: 2022-Apr-25 14:25:31: Setting flag cell_perim for dump cell.
INFO: 2022-Apr-25 14:25:31: Setting flag coordinate for dump cell.
INFO: 2022-Apr-25 14:25:31: Setting flag director for dump cell.
INFO: 2022-Apr-25 14:25:31: Setting flag force for dump cell.
INFO: 2022-Apr-25 14:25:31: Parameter freq for dump cell is set to 200.
INFO: 2022-Apr-25 14:25:31: Setting flag id for dump cell.
INFO: 2022-Apr-25 14:25:31: Setting flag keys for dump cell.
INFO: 2022-Apr-25 14:25:31: Setting flag multi for dump cell.
INFO: 2022-Apr-25 14:25:31: Parameter start for dump cell is set to 0.
INFO: 2022-Apr-25 14:25:31: Setting flag tp for dump cell.
INFO: 2022-Apr-25 14:25:31: Parameter type for dump cell is set to full.
INFO: 2022-Apr-25 14:25:31: Setting flag velocity for dump cell.
INFO: 2022-Apr-25 14:25:31: Dump type set to face
WARNING: 2022-Apr-25 14:25:31: No dump directory specified. Using current directory.
INFO: 2022-Apr-25 14:25:31: Dump will be sent to the file with base name faces with extension fc.
INFO: 2022-Apr-25 14:25:31: Dumping will start after 0 time steps.
INFO: 2022-Apr-25 14:25:31: Dump will be produced every 200 time steps.
INFO: 2022-Apr-25 14:25:31: Each dumped time step will be stored in a separate file labelled by the time step.
INFO: 2022-Apr-25 14:25:31: Adding dump to file faces.
INFO: 2022-Apr-25 14:25:31: Parameter freq for dump faces is set to 200.
INFO: 2022-Apr-25 14:25:31: Setting flag multi for dump faces.
INFO: 2022-Apr-25 14:25:31: Parameter start for dump faces is set to 0.
INFO: 2022-Apr-25 14:25:31: Parameter type for dump faces is set to face.
INFO: 2022-Apr-25 14:25:31: Activity in self propulsion set to 0.03.
INFO: 2022-Apr-25 14:25:31: Added external potential : self_propulsion to the list of external forces.
INFO: 2022-Apr-25 14:25:31: Added self_propulsion to the list of external potentials.
INFO: 2022-Apr-25 14:25:31: Setting global integrator timestep to 0.025000000000000001.
WARNING: 2022-Apr-25 14:25:31: Value object. No minimum value set. Assuming 0.
WARNING: 2022-Apr-25 14:25:31: Value object. No maximum value set. Assuming 1.0.
WARNING: 2022-Apr-25 14:25:31: Value object. No number of steps set. Assuming 1000.
INFO: 2022-Apr-25 14:25:31: Using constant value object.
INFO: 2022-Apr-25 14:25:31: Using global (system-wide) integrator step size set to 0.025000000000000001.
INFO: 2022-Apr-25 14:25:31: Applying integrator to group internal.
WARNING: 2022-Apr-25 14:25:31: Brownian dynamics is a legacy integrator keep for backwards compatibility. It will be removed in a later release. Please consider using brawnian_pos and brownian_align instead.
INFO: 2022-Apr-25 14:25:31: Brownian dynamics integrator. Setting magnitude of active velocity to 0.0.
INFO: 2022-Apr-25 14:25:31: Brownian dynamics integrator. Setting rotational diffusion rate to 0.01.
INFO: 2022-Apr-25 14:25:31: Brownian dynamics integrator. Setting mobility to 1.0.
WARNING: 2022-Apr-25 14:25:31: Brownian dynamics integrator. Rotational mobility not set. Using default value 1.
INFO: 2022-Apr-25 14:25:31: Brownian dynamics integrator. Setting random number generator seed to 1.
WARNING: 2022-Apr-25 14:25:31: Brownian dynamics integrator. Assuming polar order parameter.
INFO: 2022-Apr-25 14:25:31: Adding integrator of type brownian (for group internal).
INFO: 2022-Apr-25 14:25:31: Starting simulation run for 100000 steps.
INFO: 2022-Apr-25 14:33:49: Built neighbour list 542 time. Average number of steps between two builds : 184.50184501845018.
INFO: 2022-Apr-25 14:33:49: Simulation took 0 hours, 8 minutes and 18 seconds (498 seconds).
INFO: 2022-Apr-25 14:33:49: Average 200.80522088353413 time steps per second.
