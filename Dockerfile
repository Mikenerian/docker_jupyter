FROM python:3.10

WORKDIR /app

SHELL ["/bin/bash", "-c"]

# Dockerイメージの基本的なライブラリのインストール

RUN apt-get update

RUN apt-get install libgl1-mesa-dev -y

RUN pip install --upgrade pip

# Jupyter notebookのインストール

RUN pip install notebook