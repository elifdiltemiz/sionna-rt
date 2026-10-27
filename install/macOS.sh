# Sionna RT setup on macOS
# Open Terminal: Cmd + Space, type "Terminal"
# Lines starting with # are notes, not commands

# System info
uname -m                  # arm64 = Apple Silicon (GPU via Metal), x86_64 = Intel (CPU only)
sw_vers -productVersion
df -h ~                   # you need about 3 GB free

# Python, needs 3.10 or newer
python3 --version
# Not found or older than 3.10? Install 3.12 from
# https://www.python.org/downloads/macos/ and reopen Terminal

# LLVM (required on Intel, good backup on Apple Silicon)
brew --prefix llvm 2>/dev/null && ls "$(brew --prefix llvm)/lib/libLLVM.dylib"
# brew not found? Install Homebrew from https://brew.sh first
# If no libLLVM.dylib was listed:
brew install llvm

# Project folder and virtual environment
mkdir -p ~/sionna-sms
cd ~/sionna-sms
python3.12 -m venv .venv  # or: python3 -m venv .venv if python3 is already 3.10+
source .venv/bin/activate # (.venv) should now appear in the prompt

# Install
python -m pip install --upgrade pip
python -m pip install sionna-rt jupyterlab

# Check: prints metal_... on Apple Silicon, llvm_... on Intel
python -c "import sionna.rt, mitsuba as mi; print(mi.variant())"

# Start JupyterLab
# In a new Terminal, run cd ~/sionna-sms and source .venv/bin/activate first
jupyter lab