# Sionna RT

Ray-tracing simulations for wireless signal propagation using [NVIDIA Sionna RT](https://nvlabs.github.io/sionna/).

## Installation Options

There are three ways to run the exercises:

1. **Google Colab**: no local installation required
2. **JupyterLab**: run Sionna RT locally
3. **VS Code**: run the exercises in a Python environment

Colab needs no setup. JupyterLab and VS Code need Python on your computer first.

## Google Colab

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/elifdiltemiz/sionna-rt/blob/main/install/exercise.ipynb)

1. Open the exercise with the button above, or create a new notebook at [colab.research.google.com](https://colab.research.google.com/)
2. Select **Runtime → Change runtime type**
3. Choose **T4 GPU** and click **Save**
4. In the first cell, run `!pip install sionna-rt` (the exercise notebook already has it)
5. Run the notebook cells in order

A `TraitError` box may appear under the 3D view. The view still works.

Colab forgets everything when the session closes, so run the install cell again next time. To keep your edits, use **File → Save a copy in Drive**.

## Local Installation with JupyterLab

Select the installation script for your operating system:

* **Windows:** [`install/Windows.ps1`](install/Windows.ps1), in PowerShell (not cmd)
* **macOS:** [`install/macOS.sh`](install/macOS.sh), in Terminal
* **Linux:** [`install/Linux.sh`](install/Linux.sh), in Terminal

Run the commands one by one. Lines starting with `#` are notes, not commands.

Near the end there is a check line. It prints:

* `cuda_...` if Sionna uses an **NVIDIA GPU**
* `metal_...` for an **Apple Silicon GPU**
* `llvm_...` for the **CPU** (works, just slower)

## VS Code

VS Code needs a bit more work than Colab: you install Python yourself and set up the environment.

**Before you start:** you need **Python 3.10 or newer**, and **LLVM** if your computer has no NVIDIA GPU or Apple Silicon. Both are in the first part of your system's script in [`install`](install). Stop before the "Project folder" part.

1. Install the **Python** and **Jupyter** extensions (**Ctrl + Shift + X**)
2. **File → Open Folder**, create a folder named `sionna-sms` and open it
3. **Ctrl + Shift + P → Python: Create Environment → Venv**, then pick your Python
4. Open a new terminal (**Terminal → New Terminal**). The line should start with `(.venv)`. If it doesn't, activate it:
    * Windows: `.\.venv\Scripts\Activate.ps1`
    * macOS / Linux: `source .venv/bin/activate`
5. Install Sionna RT: `python -m pip install sionna-rt ipykernel`
6. Open `install/exercise.ipynb`, then **Select Kernel → .venv**

On macOS use **Cmd** instead of Ctrl.

## Exercise

The notebook is located at [`install/exercise.ipynb`](install/exercise.ipynb). It is ready to run in Colab as it is.

In this exercise, you will:

* Load a 3D model of Munich
* Add a transmitter and a receiver
* Compute radio propagation paths
* Visualize the paths in 3D

**Running it in JupyterLab or VS Code:** skip the first cell (Sionna RT is already installed), and in the last cell delete the two `google.colab` lines and keep only `scene.preview(paths=paths)`.

## Support

**Office Hours:** Monday–Friday, 13:30–17:00

**Location:** Computer Lab 363, 3rd Floor

**Contact:** You can email any time

* Elif Diltemiz: [Elif.Diltemiz@stud.uni-regensburg.de](mailto:Elif.Diltemiz@stud.uni-regensburg.de)
* Zehra Özcan: [zehra12ozcn@gmail.com](mailto:zehra12ozcn@gmail.com)

## Useful Links

* [Sionna Documentation](https://nvlabs.github.io/sionna/)
* [Sionna RT on PyPI](https://pypi.org/project/sionna-rt/)

---

University of Regensburg · Security of Mobile Systems
