#!/bin/bash
echo "Waiting for Ollama to be ready..."
until curl -s http://ollama:11434/api/tags > /dev/null 2>&1; do
  sleep 2
done
echo "Ollama is up — pulling gemma3..."
curl -s http://ollama:11434/api/pull -d '{"name": "gemma3:1b"}'
echo "Done!"

