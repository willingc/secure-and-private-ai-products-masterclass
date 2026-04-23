#!/bin/bash

# Ensure the volume is writable
mkdir -p /models

# Download the model if it doesn't exist in the volume
if [ ! -f /models/qwen_35.llamafile ]; then
    echo "Model not found in volume. Downloading..."
    curl -L "https://huggingface.co/mozilla-ai/llamafile_0.10.0/resolve/main/Qwen3.5-0.8B-Q8_0.llamafile" -o /models/qwen_35.llamafile
    chmod +x /models/qwen_35.llamafile
else
    echo "Model already exists in volume. Skipping download."
fi

# Execute the llamafile
exec /models/qwen_35.llamafile --host 0.0.0.0 --port 8080 --nobrowser
