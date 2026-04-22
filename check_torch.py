import torch
if torch.backends.mps.is_available():
    print("MPS (Metal Performance Shaders) is available.")
    device = torch.device("mps")
else:
    print("MPS not available, using CPU.")
    device = torch.device("cpu")

