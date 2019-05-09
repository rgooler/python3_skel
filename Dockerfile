FROM ubuntu:18.04
RUN mkdir /app 
ADD . /app/
WORKDIR /app
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends python3 python3-pip python3-setuptools python3-wheel build-essential python3-dev && \
    pip3 install -r requirements.txt && \
    apt-get remove --purge -y python3-pip python3-setuptools python3-wheel build-essential python3-dev && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/python3", "/app/main.py"]
