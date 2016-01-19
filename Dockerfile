FROM alpine:3.3
MAINTAINER Tim Dettrick <t.dettrick@uq.edu.au>

RUN apk add --update haveged && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/sbin/haveged","-F","-v","1"]
