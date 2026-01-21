# Multi-Fidelity Modeling of Thermal Jets and Desalination Discharges

<!-- [![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE) -->

This repository contains codes, datasets, and scripts associated with the paper:

> **Multifidelity Numerical Modeling and Bayesian Hierarchical Prediction of the Desalination Discharges**  
> D. Goodarzi, A. Mohammadian (2025). _Submitted to Desalination._

---

## 📖 Overview

This work develops a **Bayesian hierarchical multi-fidelity Gaussian Process (MFGP) framework** to predict the dynamics of buoyant jets and desalination discharges under shallow ambient conditions.

- **Low-fidelity (LF):** RANS simulations
- **High-fidelity (HF):** LES simulations
- **True values (TV):** Experimental validation (PIV, LIF)

The numerical datasets are generated using the **custom OpenFOAM solver** 👉 [`pimpleDesalination`](https://github.com/HydroCFD/buoyant_jet/tree/main/OpenFOAM/Solver/pimpleDesalination), which extends `pimpleFoam` to include coupled advection–diffusion equations for salinity/temperature transport. This solver is the main CFD engine for both RANS and LES cases reported in the paper.

The multi-fidelity framework leverages the computational efficiency of RANS, the physical accuracy of LES, and validation against PIV/LIF measurements to deliver robust surrogate models with quantified uncertainty.

---

## 🔑 Key Contributions

- **Scenario 1:** 60° inclined desalination jet in shallow ambient
  - 24 RANS (LF) + 11 LES (TV), with 4 LES selected as HF
  - LES validated against high-resolution **PIV** data
  - Predictions of **surface dilution**, **return point dilution**, and **horizontal displacement**

- **Scenario 2:** Vertical thermal jet
  - RANS (LF), LES (HF), and **LIF experimental** data (TV)
  - Predictions of **concentration fields** under varying Frd

- **Bayesian Hierarchical MFGP model**
  - Three-level structure (LF → HF → TV)
  - RW–Metropolis MCMC inference
  - Anisotropic Matérn-5/2 kernels with ARD
  - Provides predictive means, variances, and 95% credible intervals

- **Computational savings:**
  - LES required O(10⁴–10⁵) CPU hours for statistically converged results
  - RANS required O(10¹–10²) CPU hours
  - MFGP achieves LES-level accuracy with a fraction of the cost

---

## 📂 Repository Structure
