FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install -y -q build-essential python-gdal python-simplejson
RUN apt-get install -y python python-pip wget
RUN apt-get install -y python-dev
RUN pip install virtualenv
RUN mkdir dock-flask
ADD requirements.txt /dock-flask/requirements.txt
ADD run.py /dock-flask/run.py
RUN virtualenv /dock-flask/env/
RUN /dock-flask/env/bin/pip install wheel
RUN /dock-flask/env/bin/pip install -r /dock-flask/requirements.txt
