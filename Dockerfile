FROM alpine
RUN apk add --no-cache --progress dante-server openvpn && \
	mkdir -p /home/use && \
	rm -rf /var/cache/apk/*
COPY sockd.conf /etc/
WORKDIR /home/use/

# Figure this one out.
# COPY a.ovpn /home/use/a.ovpn

COPY up.sh /home/use/up.sh

# EXPOSE 1080
ENTRYPOINT ["/bin/sh", "-c", \
			"/usr/sbin/openvpn --config /home/use/a.ovpn --script-security 2 --up /home/use/up.sh"]
