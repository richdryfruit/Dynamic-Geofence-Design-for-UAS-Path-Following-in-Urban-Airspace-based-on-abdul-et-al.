% 1. Define the exact absolute path from your Simulink error
savePath = 'C:\Users\Sunetra\MATLAB\Projects\dynamicgeofenc\UnitCylinder.stl';

% 2. Generate unit cylinder coordinates (radius 1, 36 facets for smoothness)
[X, Y, Z] = cylinder(1, 36); 

% 3. Center the cylinder vertically around the origin (from -0.5 to 0.5)
Z = Z - 0.5; 

% 4. Convert the surface data into a triangulated patch
fv = surf2patch(X, Y, Z, 'triangles');

% 5. Create a standard MATLAB triangulation object
TR = triangulation(fv.faces, fv.vertices);

% 6. Write the STL file directly to the required folder
stlwrite(TR, savePath);

% 7. Confirm success in the command window
disp(['Success! UnitCylinder.stl has been saved to: ', savePath]);