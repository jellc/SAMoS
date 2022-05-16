INFO: 2022-Apr-20 07:23:31: Messages will be sent to messages.msg.
INFO: 2022-Apr-20 07:23:31: Simulation box is fixed with size (lx,ly,lz) = (1000,1000,10).
INFO: 2022-Apr-20 07:23:31: Generated group 'all' containing all particles.
INFO: 2022-Apr-20 07:23:31: Reading particle coordinates from file: patch.dat
INFO: 2022-Apr-20 07:23:31: Column 1 of input file is : id.
INFO: 2022-Apr-20 07:23:31: Column 2 of input file is : x.
INFO: 2022-Apr-20 07:23:31: Column 3 of input file is : y.
INFO: 2022-Apr-20 07:23:31: Column 4 of input file is : nx.
INFO: 2022-Apr-20 07:23:31: Column 5 of input file is : ny.
INFO: 2022-Apr-20 07:23:31: Column 6 of input file is : nvx.
INFO: 2022-Apr-20 07:23:31: Column 7 of input file is : nvy.
INFO: 2022-Apr-20 07:23:31: Column 8 of input file is : nvz.
INFO: 2022-Apr-20 07:23:31: Column 9 of input file is : area.
INFO: 2022-Apr-20 07:23:31: Read data for 1000 particles.
INFO: 2022-Apr-20 07:23:31: There are 1 distinct particle types in the system.
INFO: 2022-Apr-20 07:23:31: Periodic flag for the system is set to false.
INFO: 2022-Apr-20 07:23:31: Finished reading system coordinates from patch.dat.
INFO: 2022-Apr-20 07:23:31: Created cell list with 162450 cells.
INFO: 2022-Apr-20 07:23:31: Each cell has dimensions (3.5087719298245612,3.5087719298245612,5).
INFO: 2022-Apr-20 07:23:31: Using cell lists for neighbour list builds.
INFO: 2022-Apr-20 07:23:31: Neighbour list.  Setting maximum face perimeter to 30.0.
INFO: 2022-Apr-20 07:23:31: Neighbour list. Using geometric centers for mesh dual.
INFO: 2022-Apr-20 07:23:31: Created neighbour list with cutoff 3 and padding distance 0.5.
WARNING: 2022-Apr-20 07:23:31: Constraint. Maximum number of iterations has not been set. Assuming 100
WARNING: 2022-Apr-20 07:23:31: Constraint. Tolerance has not been set. Assuming 1e-6.
WARNING: 2022-Apr-20 07:23:31: Constraint. No particle groups set. Assuming "all".
INFO: 2022-Apr-20 07:23:31: Planar constraint. Setting plane dimensions to lx = 1000 and ly = 1000.
INFO: 2022-Apr-20 07:23:31: Plane constraint. Particle motion will not be affected by the box boundaries.
WARNING: 2022-Apr-20 07:23:31: Plane constraint. No zpos specified. Assuming that the constraint plane is at z = 0.
INFO: 2022-Apr-20 07:23:31: Added  : plane to the list of constraints.
INFO: 2022-Apr-20 07:23:31: Adding constraint of type plane.
WARNING: 2022-Apr-20 07:23:31: Value object. No minimum value set. Assuming 0.
WARNING: 2022-Apr-20 07:23:31: Value object. No maximum value set. Assuming 1.0.
WARNING: 2022-Apr-20 07:23:31: Value object. No number of steps set. Assuming 1000.
INFO: 2022-Apr-20 07:23:31: Using constant value object.
WARNING: 2022-Apr-20 07:23:31: Number of particle types will be read from the intitial configuration.
INFO: 2022-Apr-20 07:23:31: Global area stiffness (K) for vertex-particle pair potential is set to 5.0.
INFO: 2022-Apr-20 07:23:31: Global perimeter stiffness (gamma) for vertex-particle pair potential is set to 0.0.
INFO: 2022-Apr-20 07:23:31: Global contact stiffness (lambda) for vertex-particle pair potential is set to 0.0.
WARNING: 2022-Apr-20 07:23:31: Number of time steps between mesh updates in vertex-particle pair potential not set. Assuming default 0. No updates beyond those during the neighbour list and/or regular equiangulation steps for triangular lattices will be made.
INFO: 2022-Apr-20 07:23:31: Vertex-particle pair potential does not include additional terms arising at the boundary.
INFO: 2022-Apr-20 07:23:31: Added pair potential : vp to the list of pair interactions.
INFO: 2022-Apr-20 07:23:31: Pair potential vp has neighbour list. Neighbour list updates will be performed during the simulation.
INFO: 2022-Apr-20 07:23:31: Added vp to the list of pair potentials.
INFO: 2022-Apr-20 07:23:31: Added logger. Logged quantities will be sent to cell2.log.
INFO: 2022-Apr-20 07:23:31: Logs will be produced every 10 time steps.
INFO: 2022-Apr-20 07:23:31: Adding log quantity : area.
INFO: 2022-Apr-20 07:23:31: Adding log quantity : avg_perim.
INFO: 2022-Apr-20 07:23:31: Adding log quantity : size.
INFO: 2022-Apr-20 07:23:31: Adding log quantity : vp_energy.
INFO: 2022-Apr-20 07:23:31: Adding logger to file cell2.log.
WARNING: 2022-Apr-20 07:23:31: Value object. No minimum value set. Assuming 0.
WARNING: 2022-Apr-20 07:23:31: Value object. No maximum value set. Assuming 1.0.
WARNING: 2022-Apr-20 07:23:31: Value object. No number of steps set. Assuming 1000.
INFO: 2022-Apr-20 07:23:31: Using constant value object.
WARNING: 2022-Apr-20 07:23:31: Integrator is setting its own time step size. While this is allowed, it may cause odd behaviour in case different integrators set different internal step size.
INFO: 2022-Apr-20 07:23:31: Internal integrator time step set to 0.1.
WARNING: 2022-Apr-20 07:23:31: No group has been set. Assuming group 'all'.
WARNING: 2022-Apr-20 07:23:31: Brownian dynamics is a legacy integrator keep for backwards compatibility. It will be removed in a later release. Please consider using brawnian_pos and brownian_align instead.
INFO: 2022-Apr-20 07:23:31: Brownian dynamics integrator. Setting magnitude of active velocity to 0.0.
INFO: 2022-Apr-20 07:23:31: Brownian dynamics integrator. Setting rotational diffusion rate to 0.0.
INFO: 2022-Apr-20 07:23:31: Brownian dynamics integrator. Setting mobility to 1.0.
WARNING: 2022-Apr-20 07:23:31: Brownian dynamics integrator. Rotational mobility not set. Using default value 1.
INFO: 2022-Apr-20 07:23:31: Brownian dynamics integrator. Setting random number generator seed to 1.
WARNING: 2022-Apr-20 07:23:31: Brownian dynamics integrator. Assuming polar order parameter.
INFO: 2022-Apr-20 07:23:31: Adding integrator of type brownian (for group all).
INFO: 2022-Apr-20 07:23:31: Starting simulation run for 10000 steps.
