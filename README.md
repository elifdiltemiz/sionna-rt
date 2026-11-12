
# Security of Mobile Systems

### University of Regensburg | Erasmus+ Internship Projects

---
## exercises colab links for class - before starting

notebook1( lecture): https://colab.research.google.com/drive/1W5aDUaIQ_47uETDXh200sRXYa0FV0nGY?usp=sharing

notebook2( free-space): https://colab.research.google.com/drive/1LUyPkr8dMVcj5Ae7P8FwbMzOYEPP7vzQ?usp=sharing

notebook3( munich): https://colab.research.google.com/drive/1qpT4WgVkXUd4duRsOmcp6O93rB9HMoUI?usp=sharing

## About This Repository

This repository documents practical exercises, technical implementations, and simulation-based projects developed during an **Erasmus+ internship at the University of Regensburg, Germany**.

The work focuses on **wireless communication, radio signal propagation, and mobile system security**, combining theoretical concepts with practical experiments and Python-based simulations.

This repository collects our work with NVIDIA Sionna RT, a ray-tracing library for simulating radio wave propagation. It includes installation resources that explain how to set up Sionna RT locally and in Google Colab, and interactive Jupyter Notebooks starts with the detailed fundamentals explaining in which simple scenes with a base station, receivers and buildings are built step by step. Each notebook is organized around research questions: we first state the question, then run the simulation, and finally explain the results. The experiments examine how the received signal strength (RSS) and the path gain depend on distance, frequency, obstacles and building materials, and how reflection, refraction and diffraction shape the signal that reaches the receiver. The results are compared with theoretical models such as the free-space path loss formula and visualized with plots and 3D scene previews, so that effects like shadowing, material losses and multipath interference become directly visible.

---

## Project Overview

The repository is organized into topic-based folders covering different aspects of wireless communication systems and related technologies.

Each folder provides relevant documentation, implementations, or experimental work. Additional projects and research activities can be integrated into this structure as the work progresses.


| Project | Description | Documentation |
|---|---|---|
| **Sionna RT Installation** | Installation and environment setup for Sionna RT on Windows, Linux, and macOS, including installation scripts and setup exercises. | [View Installation Guide](install/README.md) |
| **01 - Wireless Fundamentals** | Frequency, wavelength, free-space path loss (FSPL), and received power calculations. | [View Notebook](Project-01-Wireless-Fundamentals/SMS_Exercise1_Revised_Student.ipynb) |
| **02 - Building Effects** | Investigation of building obstructions, concrete and wood materials, and their effects on received signal strength (RSS). | [Basic Notebook](Project-02-Building-Effects/building_effects.ipynb) / [Research Questions](Project-02-Building-Effects/researchQAs.ipynb) |
| **03 - Multipath Propagation** | Reflection, diffraction, scattering, LOS/NLOS comparisons, and propagation mechanism analysis using Sionna RT. | [Basic Notebook](Project-03-Multipath-Propagation/multipathPropagation.ipynb) / [Research Questions](Project-03-Multipath-Propagation/Research_Questions.ipynb) |



---

## Technologies and Tools

The projects use a combination of programming languages, simulation frameworks, and development environments.

- **Python** - Programming, numerical calculations, and simulation analysis.
- **Jupyter Notebook** - Interactive coding, explanations, and experimental documentation.
- **NVIDIA Sionna RT** - Ray-tracing-based wireless propagation simulations.
- **Mitsuba 3** - 3D scene representation and rendering.
- **NumPy** - Numerical computations and array operations.
- **Matplotlib** - Data visualization and graphical analysis.
- **Google Colab / VS Code** - Development and execution environments.

---

## Research Focus

The work combines theoretical knowledge with practical implementations to explore different aspects of wireless communication and mobile systems.

Through computational exercises and simulation-based experiments, the projects investigate signal propagation behavior, wireless communication characteristics, and the influence of environmental conditions on radio signals.

---

## Repository Structure

```text


sionna-rt/
│
├── install/
│   ├── exercise.ipynb
│   ├── Linux.sh
│   ├── macOS.sh
│   ├── README.md
│   └── Windows.ps1
│
├── Project-01-Wireless-Fundamentals/
│   └── SMS_Exercise1_Revised_Student (1).ipynb
│
├── Project-02-Building-Effects/
│   ├── building_effects.ipynb
│   └── researchQAs.ipynb
│
├── Project-03-Multipath-Propagation/
│   ├── multipathPropagation.ipynb
│   └── Research_Questions.ipynb
│
└── README.md


```

---

## How to Use

### 1. Clone the Repository

Clone the repository to your local computer using Git:

```bash
git clone https://github.com/elifdiltemiz/sionna-rt
```

Open the downloaded repository in **VS Code** or **JupyterLab**.

### 2. Set Up the Environment

For Sionna RT installation and environment configuration, refer to the [Installation Guide](install/README.md).

The installation folder provides platform-specific scripts and supporting resources for:

- **Windows**
- **Linux**
- **macOS**

### 3. Explore the Projects

Navigate to a project folder and open the corresponding Jupyter Notebook.

Run the notebook cells sequentially to explore the theoretical explanations, Python implementations, simulations, visualizations, and experimental results.

### Requirements

Software dependencies depend on the selected project.

- **Basic computational exercises:** Python, NumPy, and Matplotlib.
- **Ray-tracing simulations:** NVIDIA Sionna RT and its compatible dependencies.

---

## Authors and Contact

This repository was developed collaboratively during an **Erasmus+ internship at the University of Regensburg**.

### Zehra Özcan

- **Email:** zehra12ozcn@gmail.com

### Elif Diltemiz

- **Email:** diltemizeliff@gmail.com

---

## Acknowledgment

We would like to thank the **University of Regensburg** for providing the opportunity to explore wireless communication and mobile system security through practical exercises, technical implementations, and simulation-based research during our Erasmus+ internship.

---

**University of Regensburg | Erasmus+ Internship | 2026**
