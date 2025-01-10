# Raspberry Pi Ai Camera Stream
Allows quick visual testing of the AI cam on a headless raspberry pi via web interface using a modified version of the IMX500 [object detection example](https://github.com/raspberrypi/picamera2/blob/main/examples/imx500/imx500_object_detection_demo.py).  

## Installation and Running

   ```bash
   sudo chmod +x install.sh run.sh
   ```

1. **Run the installation script:**
   Make sure you have execution permissions for the script. Then run:
   ```bash
   ./install.sh
   ```

2. **Start the application:**
   Execute the following command to start the Flask server:
   ```bash
   ./run.sh
   ```
This project streams the camera feed from a Raspberry Pi AI camera to a web page using Flask.

## Usage

- Camera stream accessed at http://[raspberry-pi-ip]:5000/

