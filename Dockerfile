FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        python3-pip \
        python3-setuptools \
        python3-wheel && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir --upgrade pip
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

CMD bash -c "jupyter notebook --port=8888 --ip=0.0.0.0 --allow-root --notebook-dir='/root/shared' --NotebookApp.token=''"
