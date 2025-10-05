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

The Bayesian hierarchical framework co-conditions LF and HF numerical predictions with experimental data to achieve robust and computationally efficient surrogate models.

---

## 🔑 Features

- Three-level **Bayesian Hierarchical Co-Kriging** (HC-MFM) framework
- LES and RANS datasets of inclined dense jets (Fr, Re, d₀ cases)
- Python scripts for:
  - Data preprocessing
  - Model calibration
  - Posterior prediction & uncertainty quantification
  - RMSE and error statistics
  - Publication-quality plots (Matplotlib + LaTeX styling)

---

## 📂 Repository Structure
