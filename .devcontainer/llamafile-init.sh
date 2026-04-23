#!/bin/bash
set -e

mkdir -p /models

if [ ! -s /models/qwen_35.llamafile ]; then
    echo "DEBUG: Downloading model..."
    curl -L "https://huggingface.co/mozilla-ai/llamafile_0.10.0/resolve/main/Qwen3.5-0.8B-Q8_0.llamafile" -o /models/qwen_35.llamafile
    chmod +x /models/qwen_35.llamafile
fi

echo "Starting llamafile server"
exec sh /models/qwen_35.llamafile --server --host 0.0.0.0 --port 8080
