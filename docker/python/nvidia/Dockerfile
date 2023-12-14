# NVIDIA CUDAイメージを親イメージとして使用
FROM nvidia/cuda:12.1.1-runtime-ubuntu20.04

# このディレクトリにアプリケーションのソースコードを格納
WORKDIR /usr/src/ai-lab

# タイムゾーンを設定
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# パッケージリストを更新し、指定したパッケージをインストール
# 'rm -rf /var/lib/apt/lists/*'コマンドはイメージサイズを最小化するために使用
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-dev \
#     python3-distutils \
    python3-pip \
    python3-setuptools \
    python3-opencv \
    opencv-data \
    wget \
    libopencv-dev \
    libopencv-core-dev \
    && rm -rf /var/lib/apt/lists/*

COPY ./docker/python/requirements.txt requirements.txt

# # 必須ライブラリをインストール
RUN pip install --no-cache-dir --upgrade pip \
    && pip install torch torchvision torchaudio \
    && pip install jupyterlab \
    && pip install scikit-learn \
    && pip install -r requirements.txt

# アプリケーションのソースコードをコピー
COPY ./ai-lab /usr/src/ai-lab/

# Pythonパスを追加
ENV PYTHONPATH=/usr/src/ai-lab/src

# Jupyter Labを起動
CMD ["jupyter-lab", "--ip=0.0.0.0", "--allow-root", "--port=8888", "--no-browser", "--LabApp.token=''"]
