FROM alpine:3.6

RUN apk add --update curl openssl dumb-init bind-tools docker bash nmap && \
  rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/dumb-init", "curl"]
CMD ["--help"]
