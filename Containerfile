FROM fedora:latest
RUN dnf -y  upgrade  \
	&& dnf install -y tuxpaint \
	&& dnf install -y vim \
	&& dnf install -y httpd 
COPY myinfo.html /var/www/html/
EXPOSE 80/tcp
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND

