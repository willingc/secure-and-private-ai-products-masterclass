#!/bin/bash
echo "DEBUG: Starting init script..."

mkdir -p /models

if [ ! -s /models/qwen_35.llamafile ]; then
    echo "DEBUG: Downloading model..."
    # Add -v to curl to see what's happening
    curl -Lv "https://huggingface.co/mozilla-ai/llamafile_0.10.0/resolve/main/Qwen3.5-0.8B-Q8_0.llamafile" -o /models/qwen_35.llamafile
    chmod +x /models/qwen_35.llamafile
fi

echo "DEBUG: Attempting to execute..."
# Use sh to execute and redirect errors to a file 
sh /models/qwen_35.llamafile --host 0.0.0.0 --port 8080 --nobrowser > /models/server.log 2>&1 &

echo "DEBUG: Server started in background. Sleeping to keep container alive."
# This keeps the container (and DNS) alive for 1 hour even if the server fails
sleep 3600
