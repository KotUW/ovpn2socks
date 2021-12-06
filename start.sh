#!/usr/bin/bash
/usr/bin/docker run --rm --publish 1080:1080 \
	--device=/dev/net/tun \
	--cap-add=NET_ADMIN \
	--name ovpn2socks \
	--volume /home/evil/Downloads/Not3vil.ovpn:/home/use/a.ovpn \
	ovpn2socks
