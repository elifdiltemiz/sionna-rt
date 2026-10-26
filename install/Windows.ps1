# Sionna RT setup on Windows
# Open PowerShell: Start menu, type "PowerShell" (not as administrator)
# Lines starting with # are notes, not commands
 
# System info
$env:PROCESSOR_ARCHITECTURE   # AMD64 is fine, ARM64 is not supported (use Colab)
Get-PSDrive C                 # you need about 3 GB free
nvidia-smi                    # lists your GPU if you have NVIDIA, an error here is fine
echo $env:USERPROFILE         # Different characters, spaces or OneDrive in it? Keep the project in C:\sionna-sms
 
# Python, needs 3.10 or newer
py --version
# "not recognized" or older than 3.10? Install 3.12 from
# https://www.python.org/downloads/windows/ and tick "Add python.exe to PATH"
# then reopen PowerShell
# If typing python opens the Microsoft Store, ignore it and use py
 
# LLVM (needed to run on CPU, good backup with an NVIDIA GPU)
Test-Path "C:\Program Files\LLVM\bin\LLVM-C.dll"
# If it printed False:
winget install LLVM.LLVM
# No winget? Download LLVM-<version>-win64.exe from
# https://github.com/llvm/llvm-project/releases and tick "Add LLVM to the system PATH"
setx DRJIT_LIBLLVM_PATH "C:\Program Files\LLVM\bin\LLVM-C.dll"
# Reopen PowerShell after this
 
# Project folder and virtual environment
mkdir C:\sionna-sms
cd C:\sionna-sms
py -3.12 -m venv .venv        # or: py -m venv .venv if py --version is already 3.10+
.\.venv\Scripts\Activate.ps1  # (.venv) should now appear in the prompt
# "running scripts is disabled"? Run this once, answer Y, then activate again:
# Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
 
# Install
python -m pip install --upgrade pip
python -m pip install sionna-rt jupyterlab ipywidgets
 
# Check: prints cuda_... with an NVIDIA GPU, llvm_... otherwise
python -c "import sionna.rt, mitsuba as mi; print(mi.variant())"
 
# Start JupyterLab
# In a new PowerShell, run cd C:\sionna-sms and .\.venv\Scripts\Activate.ps1 first
jupyter lab