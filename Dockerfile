# Use an official NVIDIA CUDA image with Python as a parent image
FROM nvidia/cuda:12.1.0-base-ubuntu20.04

# Install Python 3.10
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get install -y python3.10 python3.10-distutils python3.10-dev python3.10-venv

# Update symbolic links for default Python version
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1

# Set the working directory
WORKDIR /app

SHELL ["/bin/bash", "-c"]

# Dockerイメージの基本的なライブラリのインストール
RUN apt-get update && \
    apt-get install -y libgl1-mesa-dev

# Update pip and setuptools
RUN python3 -m ensurepip && \
    python3 -m pip install --upgrade pip setuptools

# Jupyter notebookのインストール
RUN pip install notebook
