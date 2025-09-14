# Measles SEIR Model with School-Term Forcing

This MATLAB project simulates measles transmission using an SEIR (Susceptible–Exposed–Infectious–Recovered) model.  
It reproduces the seasonal, school-term-driven epidemic waves described in the following paper:
  Allotey, C. (2017). A comparison of existing measles models.
  https://mspace.lib.umanitoba.ca/items/ce6a3deb-a791-469f-96fd-b5172ef4cebe

## Overview
- **Model type:** Deterministic SEIR with demography (births ≈ deaths)
- **Features:**
  - School-term forcing of transmission (`school_term_forcing.m`)
  - Optional vaccination at birth (currently set to zero)
  - Adjustable initial conditions and simulation length
- **Outputs:** Time series of S, E, I, R populations, incidence, instantaneous \(R_0\), and effective \(R_e\).
