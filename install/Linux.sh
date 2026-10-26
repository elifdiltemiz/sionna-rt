# Sionna RT setup on Linux (Ubuntu / Debian, with notes for Fedora and Arch)
# Open a terminal: Ctrl + Alt + T
# Lines starting with # are notes, not commands
 
# System info
uname -m                  # x86_64 is fine, aarch64 may not work (use Colab)
cat /etc/os-release | head -n 3
df -h ~                   # you need about 3 GB free
nvidia-smi                # lists your GPU if you have NVIDIA, an error here is fine
 
# Python, needs 3.10 or newer
python3 --version
# Ubuntu / Debian also need the venv package, even if python3 is already there:
sudo apt update
sudo apt install python3 python3-venv python3-pip
# Fedora: sudo dnf install python3 python3-pip
# Arch:   sudo pacman -S python python-pip
 
# LLVM (needed to run on CPU, good backup with an NVIDIA GPU)
llvm-config --version
# Not found?
sudo apt install llvm
# Fedora: sudo dnf install llvm-libs
# Arch:   sudo pacman -S llvm
 
# Project folder and virtual environment
mkdir -p ~/sionna-sms
cd ~/sionna-sms
python3 -m venv .venv
source .venv/bin/activate # (.venv) should now appear in the prompt
 
# Install
python -m pip install --upgrade pip
python -m pip install sionna-rt jupyterlab ipywidgets
 
# Check: prints cuda_... with an NVIDIA GPU, llvm_... otherwise
python -c "import sionna.rt, mitsuba as mi; print(mi.variant())"
 
# Error mentioning LLVM? Your distro's LLVM is probably too old (Ubuntu 22.04, Debian 12).
# Install LLVM 18 from apt.llvm.org and point Sionna to it:
#   wget https://apt.llvm.org/llvm.sh
#   chmod +x llvm.sh
#   sudo ./llvm.sh 18
#   sudo apt install llvm-18-dev
#   echo 'export DRJIT_LIBLLVM_PATH=/usr/lib/llvm-18/lib/libLLVM.so' >> ~/.bashrc
#   source ~/.bashrc
# Then activate the venv again and rerun the check
 
# Start JupyterLab
# In a new terminal, run cd ~/sionna-sms and source .venv/bin/activate first
jupyter lab