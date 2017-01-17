FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/             # copy your requirements file to the container
RUN pip install -r requirements.txt     # run pip to install the necessary packages
ADD . /code/
