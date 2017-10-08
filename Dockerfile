FROM alpine:3.6

RUN apk add --update curl openssl bind-tools docker bash nmap netcat-openbsd tcpdump && \
  rm -rf /var/cache/apk/*

ENTRYPOINT ["bash"]
