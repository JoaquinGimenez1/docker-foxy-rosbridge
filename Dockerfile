FROM ros:foxy-ros-core
LABEL maintaner="Joaquin Gimenez <jg@joaquingimenez.com>"

LABEL org.opencontainers.image.title: "foxy-rosbridge"
LABEL org.opencontainers.image.description: "Docker image with ros:foxy-ros-core and ros-bridge-suite running rosbridge server on launch"
LABEL org.opencontainers.image.url: "https://hub.docker.com/repository/docker/joaquingimenez1/foxy-rosbridge"
LABEL org.opencontainers.image.source: "https://github.com/JoaquinGimenez1/docker-foxy-rosbridge"
LABEL org.opencontainers.image.version: "1.0.0"

WORKDIR /

RUN apt update && apt install -y ros-foxy-rosbridge-suite

COPY init-rosbridge.sh .

RUN chmod +x init-rosbridge.sh

CMD ["/init-rosbridge.sh"]