FROM fedora:latest
RUN dnf -y upgrade
RUN dnf install -y tuxpaint vim httpd
COPY myinfo.html /var/www/html/myinfo.html
RUN systemctl enable httpd.service
EXPOSE 80
