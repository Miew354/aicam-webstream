# Raspberry Pi Camera Stream
## Installation and Running

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

- Camera stream accessed at http://<raspberry-pi-ip>:5000/

## Dependencies

- Flask
- OpenCV
