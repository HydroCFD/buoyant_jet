# ❗ Note: This mesh is for training purposes **Adjust the sizes and refinements as needed**.

**Important:** This script generates the mesh in a **vertical orientation**. Rotate it to the desired angle before use.

### **Rotating the Mesh to a 60° Inclination**

By default, the mesh is generated **vertically**. To tilt the jet to **60 degrees**, use the following command in **OpenFOAM**:

```bash
rotateMesh "(1 0 0)" "(0.866 -0.5 0)"
```
