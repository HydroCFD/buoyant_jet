<strong style="font-size: 20px;">🚧 This repository is under construction and will be completed later. 🚧</strong>

<div align="justify">

This directory contains Gmsh scripts for generating computational meshes corresponding to various jet configurations. The meshes are constructed in a **nondimensional framework**, where the **jet diameter is adopted as the characteristic length scale and normalized to unity**.

For user convenience, the provided scripts generate **low-resolution meshes** by default. However, users are encouraged to modify the mesh refinement levels according to their specific simulation requirements.

Converting Mesh for OpenFOAM

1. Convert the Gmsh mesh to OpenFOAM format using gmshToFoam:
2. gmshToFoam jet_mesh.msh
3. Modify the boundary file inside constant/polyMesh to ensure proper boundary definitions.
4. Run checkMesh to verify the conversion:
5. checkMesh

Converting Mesh for Nek5000

1. Convert the .msh file to Nek5000's re2 format using gmsh2nek:
2. gmsh2nek jet_mesh.msh jet_mesh
3. The output files (.re2 and .usr) can be used in Nek5000 for spectral element simulations.

</div>
