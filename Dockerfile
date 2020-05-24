FROM centos
MAINTAINER Kartikeya Mittal <Kartikeya0300@gmail.com>
RUN yum update -y
RUN yum install wget -y
RUN yum install python36 -y
RUN yum install python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install tensorflow==2.0.0
RUN pip3 install keras
WORKDIR /model
COPY mnist.py /model
RUN python3 mnist.py
CMD python3 ml.py

