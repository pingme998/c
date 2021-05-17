FROM dorowu/ubuntu-desktop-lxde-vnc
EXPOSE 8080

RUN apt update -y

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD run -p $PORT:80 -p 5900:5900 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc
