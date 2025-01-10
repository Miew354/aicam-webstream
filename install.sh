#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update package list and install system dependencies
sudo apt update
sudo apt install python3-pip python3-venv libopencv-dev python3-flask python3-picamera2 -y 

# Install IMX500 firmware
sudo apt install imx500-all -y

# Create a virtual environment
cd "$(dirname "$0")"
python3 -m venv IMX500-Stream
source IMX500-Stream/bin/activate

# Install/Upgrade pip and related modules
pip install --upgrade pip
pip install opencv-python
pip install -r requirements.txt

#ensure dependencies are present in virtual environment
python3 -m venv --system-site-packages IMX500-Stream

# Activate the virtual environment
source IMX500-Stream/bin/activate
# Uninstall existing NumPy
pip uninstall -y numpy

echo "Setup complete. You can now run the application using './run.sh'."

# Reboot option:
read -p "Reboot recommended. Reboot now? (y/n): " choice
if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
    sudo reboot
fi