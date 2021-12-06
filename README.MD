# docker-ovpn2socks

An openvpn .ovpn format client confrugration to a socks proxy converter. Inspired by [docker-openvpn-client-socks](https://github.com/kizzx2/docker-openvpn-client-socks) but supports .ovpn format too. It uses dante server for socks client.

## Install

```sh
git clone #this repo
cd ovpn2socks
docker build . -t ovpn2socks
```

## Use

Just copy the `start.sh` file anywhere in your $PATH and make sure to change the volume path to point at your conf file (`.ovpn` file).

## Why?

I needed this when solving problems at tryhackme.com as there openvpn makes it very difficult to connect to quic based or udp based websites. And I don't wanna run a VM.
