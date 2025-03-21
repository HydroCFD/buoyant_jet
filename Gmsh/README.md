🚧 #This repository is under construction and will be completed later. 🚧
🚧 #This repository is under construction and will be completed later. 🚧
🚧 #This repository is under construction and will be completed later. 🚧

# This repository is under construction and will be completed later.

<div align="justify">

This directory contains Gmsh scripts for generating computational meshes corresponding to various jet configurations. The meshes are constructed in a **nondimensional framework**, where the **jet diameter is adopted as the characteristic length scale and normalized to unity**.

For user convenience, the provided scripts generate **low-resolution meshes** by default. However, users are encouraged to modify the mesh refinement levels according to their specific simulation requirements.

**Converting Mesh for OpenFOAM**

1. gmshToFoam jet_mesh.msh
2. Modify the boundary file inside constant/polyMesh to ensure proper boundary definitions.
3. Run checkMesh to verify the conversion

**Converting Mesh for Nek5000**

1. gmsh2nek jet_mesh.msh jet_mesh
2. Modify .usr to set the boundary conditions

</div>
