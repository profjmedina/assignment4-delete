FROM fedora:latest
RUN dnf -y upgrade
RUN dnf install -y tuxpaint vim httpd
RUN cp my-info.html /var/www/html/myinfo.html
RUN systemctl start httpd.service
EXPOSE 80
