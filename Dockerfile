FROM alpine

RUN apk --no-cache upgrade && apk --no-cache add tinc
ADD start.sh .

STOPSIGNAL SIGTERM
VOLUME ["/etc/tinc", "/var/cache/tinc"]
ENTRYPOINT ["/bin/sh", "start.sh"]
