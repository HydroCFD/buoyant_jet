# Jet Mesh Generation Using Gmsh

## Introduction

This repository contains a **Gmsh script** for generating structured computational meshes for a simple vertical **jet configuration**. The mesh is created in **nondimensional mode**, meaning the **jet diameter is set as the characteristic length scale equal to 1**.

The generated mesh is **compatible with**:

- **OpenFOAM** (finite volume CFD simulations)
- **Nek5000** (high-fidelity spectral-element simulations)

--

## Prerequisites

Before using this script, ensure you have the following installed:

- **[Gmsh](https://gmsh.info/)** (latest stable version)
- **[OpenFOAM](https://openfoam.org/)** (if using the mesh for OpenFOAM simulations)
- **[Nek5000](https://nek5000.mcs.anl.gov/)** (if using the mesh for Nek5000 simulations)

---

## Script Overview

This Gmsh script is structured into several sections:

### 🔹 Constants Definition

- Defines geometric parameters and **scaling factors**.
- The **characteristic length scale is 1** (jet diameter = 1).
- Ensures correct proportions for the computational domain.

### 🔹 Box Dimensions

- Defines the **bounding box** for the computational domain.
- Configures **jet boundaries, side openings, and distances**.

### 🔹 Extrusion Parameters

- Specifies **pipe length, domain height, and mesh refinement layers**.
- Uses **structured mesh progression factors** for smooth refinement.

### 🔹 Mesh Discretization

- Controls **element density** across different sections.
- Uses **Transfinite curves and surfaces** for structured meshing.
- Defines **progression factors** for refinement.

### 🔹 Boundary Definitions

- Assigns **physical boundary names** for solvers (inlet, outlet, walls, pipe walls, etc.).
- Defines the **fluid domain (flowDomain)** for OpenFOAM/Nek5000 compatibility.

---

## How to Use the Script

### **1️⃣ Running the Script in Gmsh**

#### **Option 1: Using the Gmsh GUI**

1. Open **Gmsh** and load the `mesh.geo` script.
2. Click **Mesh → Generate 3D**.
3. Export the mesh as `.msh`.

#### **Option 2: Using the Command Line**

```bash
gmsh -3 mesh.geo
```

````

- This generates a `.msh` file.

### **2️⃣ Generating a 3D Mesh**

By default, the script generates a **2D mesh**:

```cpp
Mesh 2;
```

To generate a **3D mesh**, **uncomment**:

```cpp
Mesh 3;
```

### **3️⃣ Ensuring Mesh Quality**

- The `Coherence;` command removes **duplicate nodes** and improves mesh consistency.

### **4️⃣ Setting the Mesh File Format**

- The mesh is saved in **version 2** for solver compatibility:

```cpp
Mesh.MshFileVersion = 2;
```

---

## Using the Mesh in OpenFOAM

To use the generated mesh in **OpenFOAM**, follow these steps:

1. **Convert `.msh` to OpenFOAM format**:
   ```bash
   gmshToFoam mesh.msh
   ```
2. **Check the mesh for consistency**:
   ```bash
   checkMesh
   ```
3. Modify **boundary conditions** in `constant/polyMesh/boundary` as needed.
4. Run **OpenFOAM solvers** with the mesh.

---

## Using the Mesh in Nek5000

To use the mesh in **Nek5000**, follow these steps:

1. Convert the `.msh` file to `.re2` format (use `gmsh2nek` or `visit`).
2. Ensure **correct boundary conditions** are assigned.
3. Run **Nek5000 pre-processing tools** for partitioning and initialization.

---

## Customizing the Mesh

### 🔧 **Adjusting Domain Size**

- Modify `x1`, `x2`, `z1`, and `z2` to **change domain width and side openings**.
- Modify `top` and `top2` to **adjust the height** of different regions.

### 🔧 **Refining the Mesh**

- Increase `np1`, `np2`, `np3`, etc., to **increase mesh density**.
- Modify `comp1`, `comp2`, etc., to **adjust mesh stretching**.

### 🔧 **Changing Extrusion Lengths**

- Modify `down1` and `down2` to **extend or shorten the pipe region**.
- Adjust `fex1`, `fex2` for **front and back extrusions**.

---

## Best Practices

✅ Always **check the mesh** before using it in simulations:

```bash
checkMesh
```

✅ Use **`Recombine Surface`** to generate structured **quadrilateral** elements.
✅ For **high-resolution simulations**, refine the `np` values.
✅ **Maintain the nondimensional scale** (jet diameter = 1) for consistency.

---

## Troubleshooting

### ❌ **Mesh Not Generating Correctly**

🔹 Ensure `Mesh 3;` is uncommented for **3D mesh generation**.
🔹 Run Gmsh in debug mode:

```bash
gmsh -3 mesh.geo -verbose
```

### ❌ **OpenFOAM Mesh Conversion Fails**

🔹 Ensure the `.msh` file is in **version 2** (`Mesh.MshFileVersion = 2`).
🔹 Remove **high-order elements** if necessary.

### ❌ **Nek5000 Mesh Issues**

🔹 Check the `.re2` file for **boundary condition assignments**.
🔹 Ensure the mesh is **structured and well-discretized**.

---

## 📌 Summary

This Gmsh script provides a **high-quality structured mesh** for **jet flow simulations**.
By following this guide, you can efficiently generate meshes and adapt them for **OpenFOAM and Nek5000**.

For **advanced modifications**, adjust **domain size, extrusion parameters, and mesh resolution** as needed.

---

### 🚀 **Contributing**

Feel free to **open an issue** or **submit a pull request** if you find a bug or want to suggest an improvement!

---

### 📝 **License**

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

---

### 📩 **Contact**

For questions or support, feel free to **open an issue** or contact me via **[GitHub Discussions](https://github.com/yourusername/yourrepo/discussions)**.

---

🚀 **Happy Meshing!**

```

### **Why This README Works Well for GitHub:**
✅ **Uses Markdown formatting** (headers, lists, and code blocks) for easy readability.
✅ **Step-by-step instructions** for both **GUI and CLI users**.
✅ **Common troubleshooting steps** for debugging.
✅ **Customization guide** for modifying the mesh.
✅ **Best practices** to ensure mesh quality.
✅ **License and contact information** for collaboration.

````
