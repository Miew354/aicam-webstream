# Navigate to the project directory
cd "$(dirname "$0")"

# Close all existing camera processes
pkill -f picamera2
pkill -f libcamera

# Activate the virtual environment
source IMX500-Stream/bin/activate

# Run the application
python src/app.py --model /usr/share/imx500-models/imx500_network_efficientdet_lite0_pp.rpk --fps 24 --threshold 0.55 --iou 0.65 --max-detections 10 --labels src/labels/coco_labels.txt