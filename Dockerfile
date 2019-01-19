FROM ubuntu:latest as prod

RUN apt-get update
RUN apt-get install -y jpegoptim
RUN apt-get install -y pngquant

WORKDIR /root/projects
COPY . .

# ENTRYPOINT ["sh", "/root/projects/start_optimize.sh"]
# CMD ["85"]