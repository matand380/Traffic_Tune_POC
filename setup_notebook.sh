#!/bin/bash

# Activate Conda environment
conda init zsh
source ~/.zshrc
conda update -n base -c defaults conda
conda create --name myenv python=3.8
conda activate myenv

# Install Python dependencies
pip install -r requirements.txt

# Setup TensorBoard logging directory
mkdir -p tensorboard_logs

# Print GPU availability
python -c "import tensorflow as tf; print('Num GPUs Available: ', len(tf.config.experimental.list_physical_devices('GPU')))"

echo "Setup complete. Ready to run notebooks."
