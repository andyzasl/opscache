FROM ubuntu:14.10

RUN apt-get update \
 && apt-get install -y squid3 python python-pip supervisor \
 && mv /etc/squid3/squid.conf /etc/squid3/squid.conf.dist \
 && rm -rf /var/lib/apt/lists/* # 20140928

RUN pip install devpi

ADD squid.conf /etc/squid3/squid.conf

ADD start_squid /start_squid
ADD start /start

ADD etc/supervisor /etc/supervisor

RUN chmod 755 /start*
RUN mkdir /pypi-packages

EXPOSE 3128
EXPOSE 8080
VOLUME ["/var/spool/squid3"]
VOLUME ["/var/log/squid3"]
VOLUME ["/pypi-packages"]
CMD ["/start"]
