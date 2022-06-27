FROM fedora:latest
RUN dnf -y upgrade
RUN dnf install -y tuxpaint vim httpd htop
COPY myinfo.html /var/www/html/myinfo.html
RUN systemctl enable httpd.service
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80