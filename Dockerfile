FROM ubuntu:latest

RUN apt-get update && \
    apt-get -y install git python python-dbus python-gobject python-pip libssl-dev libffi-dev

RUN git clone https://github.com/sintax1/scadasim-plc.git

WORKDIR /scadasim-plc

RUN make

EXPOSE 502

ENTRYPOINT python scadasim_plc/plc.py
