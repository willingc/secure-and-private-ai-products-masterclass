FROM python:3.12-slim

# System dependencies for torch, spacy, presidio, and general build tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy requirements first for better layer caching
COPY requirements.txt .

# Install CPU-only torch first to avoid pulling the large CUDA wheel,
# then install the rest of the requirements
RUN pip install --no-cache-dir \
    torch --index-url https://download.pytorch.org/whl/cpu \
    && pip install --no-cache-dir -r requirements.txt

# Download the spaCy model required by Presidio (notebook 04)
RUN python -m spacy download en_core_web_lg

# Copy all notebooks and supporting files into the image
COPY . .

# Jupyter configuration: disable token/password for easy classroom access.
# For production use, remove these flags and set a password instead.
RUN jupyter lab --generate-config && \
    echo "c.ServerApp.token = ''" >> /root/.jupyter/jupyter_lab_config.py && \
    echo "c.ServerApp.password = ''" >> /root/.jupyter/jupyter_lab_config.py && \
    echo "c.ServerApp.open_browser = False" >> /root/.jupyter/jupyter_lab_config.py && \
    echo "c.ServerApp.ip = '0.0.0.0'" >> /root/.jupyter/jupyter_lab_config.py

EXPOSE 8888

CMD ["jupyter", "lab", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
