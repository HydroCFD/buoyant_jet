# Desalination Jet Solver (Non-Dimensional Form)

This repository contains a **custom OpenFOAM solver** developed for simulating **desalination outfalls** using a **non-dimensional formulation**. The solver is for dense jet flows, where buoyancy and momentum interact, as seen in brine discharges into ambient water bodies.

---

## Solver Overview

This solver is based on the Navier-Stokes equations and scalar transport in **non-dimensional form**, using:

- **Reynolds number \( Re \)**: Characterizing inertial vs. viscous forces.
- **Froude number \( Fr \)**: Capturing the ratio of inertial to buoyancy forces.

By working in a non-dimensional framework, this solver allows for **generalizable** and **scalable** analysis across different discharge configurations, flow regimes, and ambient conditions without being tied to a specific set of dimensional parameters.

---

## Features

- Designed for **inclined dense jets**, such as those in desalination brine discharges.
- Non-dimensional variables reduce complexity and enhance generalization.
- Captures jet trajectory, mixing, and dilution.
- Compatible with a wide range of OpenFOAM versions (see below).

---

## OpenFOAM Compatibility

The solver is fully functional with:

- OpenFOAM 6
- OpenFOAM 7
- OpenFOAM 8
- OpenFOAM v2306 and higher

Tested across these versions to ensure consistent behavior.

---

## 🔬 References

This solver and its methodology are based on the approach developed in:

**Numerical simulation of desalination brine discharges: effects of inlet boundary conditions** Danial Goodarzi, Abdolmajid Mohammadian, Saleh Rezaeiravesh, _Desalination_, Under review.

**Comment on “Venturi nozzles for desalination brine discharges” [Amiri, N. S., Abessi, O., & Roberts, P. J., *Desalination*, Volume 573, 2024, 117193]**. _Desalination_, 574, 118105.  
📄 [read here](https://doi.org/10.1016/j.desal.2024.118105)

📌 _Please cite these papers if you use the solver in your research._

---

## How to Compile

1. Source the OpenFOAM environment for your version:
   ```bash
   source /opt/openfoamX/etc/bashrc  # Replace X with your version
   ```
2. Navigate to the solver directory:
   ```bash
   cd [YourSolverDirectory]
   ```
3. Compile with:
   ```bash
   wmake
   ```

The executable will be generated in your `$FOAM_USER_APPBIN`.

---

## Directory Structure

```
/pimpleDesalination/
├── Make/
│   ├── files
│   └── options
├── pimpleDesalination.C
├── README.md
```

---

## Running a Simulation

Prepare your case directory with standard OpenFOAM structure:

- `system/` → controlDict, fvSchemes, fvSolution
- `constant/` → transportProperties (non-dimensionalized)
- `0/` → initial and boundary conditions (for velocity, pressure, scalar)

Then run:

```bash
pimpleDesalination
```

---

## Notes

- Ensure input parameters are non-dimensional (e.g., velocity scaled by reference velocity, lengths by a reference length, etc.).
- Adjust boundary conditions and turbulence models as needed for specific jet configurations (inclined, vertical, etc.).

---

## Contributing

Feel free to fork, modify, and improve the solver. Issues and pull requests are welcome!
