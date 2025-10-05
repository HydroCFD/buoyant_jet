# Multi-Fidelity Modeling of Buoyant Jets

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

This repository contains the data, codes, and scripts associated with the paper:

> **Multifidelity Numerical Modeling and Bayesian Hierarchical Prediction of Desalination Discharges**  
> D. Goodarzi, M. Mohammadian, et al. (2025). _Submitted to Desalination._

---

## 📖 Overview

This work develops and evaluates a **multi-fidelity Gaussian Process (MFGP) framework** for predicting the mixing and dilution of buoyant jets in shallow ambient environments.

- **Low-fidelity (LF):** RANS simulations
- **High-fidelity (HF):** LES simulations
- **True/top-level (T):** Experimental PIV/LIF measurements

The numerical simulations (LF and HF) are carried out using a **custom OpenFOAM solver**:  
👉 [`pimpleDesalination`](https://github.com/HydroCFD/buoyant_jet/tree/main/OpenFOAM/Solver/pimpleDesalination), developed and maintained in the [HydroCFD/buoyant_jet](https://github.com/HydroCFD/buoyant_jet) repository.

This solver is the main CFD engine for generating the datasets used in the present multi-fidelity framework.

---

## 🔑 Features

- Three-level **Bayesian Hierarchical Co-Kriging** (HC-MFM) framework
- LES and RANS simulation cases
- Posterior calibration with experimental data
- Python scripts for:
  - Data preprocessing
  - Model calibration
  - Prediction & uncertainty quantification
  - RMSE/error statistics
  - Publication-quality plots (Matplotlib + LaTeX)

---

## 📂 Repository Structure
