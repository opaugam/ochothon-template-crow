FROM autodeskcloud/pod:1.0.7

ADD BUILD /opt/{{tag}}/BUILD
ADD resources/pod /opt/{{tag}}/pod
ADD resources/hook.py /opt/{{tag}}/
ADD resources/static /opt/{{tag}}/static
ADD resources/supervisor /etc/supervisor/conf.d
CMD exec /usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf
