FROM autodeskcloud/pod:1.0.7

RUN apt-get update && apt-get install -y build-essential libtcmalloc-minimal4 libssl-dev libboost-all-dev cmake
RUN ln -s /usr/lib/libtcmalloc_minimal.so.4 /usr/lib/libtcmalloc_minimal.so

ADD BUILD /opt/crow/BUILD
ADD resources/endpoint /opt/crow/endpoint
ADD resources/pod /opt/crow/pod
ADD resources/supervisor /etc/supervisor/conf.d
CMD exec /usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf