FROM dorowu/ubuntu-desktop-lxde-vnc
EXPOSE 8080

RUN apt update -y

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD run -p 6080:80 -p 5900:$PORT -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc
