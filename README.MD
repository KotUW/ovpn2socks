# docker-ovpn2socks

An openvpn .ovpn format client confrugration to a socks proxy converter. Inspired by [docker-openvpn-client-socks](https://github.com/kizzx2/docker-openvpn-client-socks) but supports .ovpn format too. 

It depends on dante server for socks clint.

## Install

```sh
git clone #this repo
cd ovpn2socks
docker build . -t ovpn2socks
```

## Use

Just copy the `start.sh` file anywhere in your $PATH and make sure to change the volume path to point at your conf file (`.ovpn` file).

## Why?

I needed this when solving problems at tryhackme.com as there openvpn makes it very difficult to connect internet based sites. And I don't wanna run a VM (thm attackbox).

Also you can use arch strike containers for these tasks.
