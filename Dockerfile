FROM centos:7

RUN yum install -y wget
RUN yum groupinstall -y "Development Tools"

# apache
RUN yum install -y httpd
RUN yum install -y mod_fcgid
RUN useradd -U -s /sbin/nologin httpd
RUN mkdir /var/log/mobalog && chown httpd:httpd /var/log/mobalog
EXPOSE 80

# perl
RUN yum install -y perl  # TODO: latest
RUN yum install -y perl-devel
RUN yum install -y perl-App-cpanminus

# fcgi setting
RUN echo "Include /usr/local/lib/test_apache_fcgid/conf/httpd.conf" >>  /etc/httpd/conf/httpd.conf

# Run
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
