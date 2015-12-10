FROM quay.io/opaugam/marathon-helloworld-sample-crow

ADD BUILD /opt/crow/BUILD
ADD build/endpoint /opt/crow/endpoint
CMD exec /usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf
