#Sionna RT

Ray tracing simulations for radio propagation with NVIDIA Sionna RT.

There are three ways to follow along: Google Colab, a local install with JupyterLab, or VS Code. Colab needs no setup. The other two need Python on your computer first.

The first exercise is in install/exercise.ipynb. It loads a model of Munich, places a transmitter and a receiver, computes the radio paths between them and shows them in 3D. The notebook is written for Colab and runs there as it is.

#Google Colab

[Open In Colab]([url](https://colab.research.google.com/github/elifdiltemiz/sionna-rt/blob/main/install/exercise.ipynb))

Open the exercise with the button above, or create a new notebook at colab.research.google.com
Runtime > Change runtime type > T4 GPU > Save
Run the cells from top to bottom. The first cell is !pip install sionna-rt, if you started a new notebook put that in the first cell yourself

A TraitError box may show up under the 3D view. The view still works.

Colab forgets everything when the session closes, so the install cell has to run again next time. To keep your edits, use File > Save a copy in Drive.

#Local terminal + JupyterLab

Pick the file for your system in the install folder and run the commands one by one:

macOS: macOS.sh, in Terminal
Windows: Windows.ps1, in PowerShell (not cmd)
Ubuntu / Debian: Linux.sh, in Terminal

Lines starting with # are notes. The files install Python and LLVM if needed, create a virtual environment called .venv, install Sionna RT and start JupyterLab.

Near the end there is a check line. It prints cuda_... if Sionna uses an NVIDIA GPU, metal_... for an Apple Silicon GPU and llvm_... for the CPU. All three work, the CPU is just slower.

#VS Code

VS Code takes a bit more work than Colab. It does not bring Python with it, and the virtual environment and the Sionna install are up to you.

Before you start, you need Python 3.10 or newer, and LLVM if your computer has no NVIDIA GPU or Apple Silicon. Both are covered in the first part of your system's file in install. Stop before the "Project folder" part, VS Code handles the rest.

Install the Python and Jupyter extensions (Ctrl + Shift + X)
File > Open Folder, create a folder named sionna-sms and open it
Ctrl + Shift + P > Python: Create Environment > Venv > pick your Python
Open a new terminal (Terminal > New Terminal) and run pip install sionna-rt ipykernel
Create a notebook (Ctrl + Shift + P > Create: New Jupyter Notebook), then Select Kernel > .venv

On macOS use Cmd instead of Ctrl.

#Running the exercise outside Colab

In JupyterLab or VS Code, open exercise.ipynb and change two things:

skip the first cell, Sionna RT is already installed
in the last cell delete the two google.colab lines and keep scene.preview(paths=paths)
Links
[Sionna documentation]([url](https://nvlabs.github.io/sionna/))
[Sionna RT on PyPI]([url](https://pypi.org/project/sionna-rt/))
