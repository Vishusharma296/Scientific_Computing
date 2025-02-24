#!/bin/bash

# Define the virtual environment name
VENV_NAME="MVE_Sci-com1"

# Remove any existing virtual environment
if [ -d "$VENV_NAME" ]; then
    echo "Removing existing virtual environment: $VENV_NAME..."
    rm -rf $VENV_NAME
fi

# Create and activate the virtual environment
echo "Creating virtual environment: $VENV_NAME..."
python3 -m venv $VENV_NAME
source $VENV_NAME/bin/activate

# Upgrade pip and install dependencies
echo "Upgrading pip..."
pip install --upgrade pip setuptools wheel

# Install numerical computing libraries
echo "Installing numerical computing libraries..."
pip install numpy pandas==2.0 scipy sympy mpmath statsmodels

# Install plotting libraries
echo "Installing plotting libraries..."
pip install matplotlib seaborn

# Verify installation
echo "Verifying installations..."
python -c "import numpy, pandas, scipy, sympy, mpmath, statsmodels, matplotlib, seaborn; print('All libraries installed successfully.')"

echo "Installation complete! Activate the virtual environment using: source $VENV_NAME/bin/activate"

