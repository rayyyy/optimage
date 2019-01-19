FROM ubuntu:latest as prod

RUN apt-get update
RUN apt-get install -y jpegoptim
RUN apt-get install -y pngquant
RUN apt-get install -y ffmpeg

WORKDIR /root/projects