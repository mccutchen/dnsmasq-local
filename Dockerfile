FROM alpine:3
RUN apk --no-cache add dnsmasq
ADD dnsmasq.conf /etc/dnsmasq.conf
CMD ["dnsmasq", "--no-daemon", "-C", "/etc/dnsmasq.conf"]
