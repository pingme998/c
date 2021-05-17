FROM dorowu/ubuntu-desktop-lxde-vnc
EXPOSE 8080

RUN apt update -y

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
