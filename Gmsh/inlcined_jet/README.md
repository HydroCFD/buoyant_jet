# ❗ Note: This mesh is for training purposes, and adjust the refinements based on the need!

❗ Note: The mesh is initially generated in a **vertical orientation**.

### **Rotating the Mesh to a 60° Inclination**

By default, the mesh is created **vertically**. To tilt the jet to **60 degrees**, use the following command in **OpenFOAM**:

```bash
rotateMesh "(1 0 0)" "(0.866 -0.5 0)"
```

This transformation rotates the mesh around the **X-axis**, aligning the jet at a **60-degree inclination**.

The generated mesh is **compatible with OpenFOAM**.
