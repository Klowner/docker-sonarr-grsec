FROM linuxserver/sonarr:latest
MAINTAINER Mark Riedesel <mark@klowner.com>

RUN \
 apt-get update && \
 apt-get install paxctl && \
 	paxctl -c /usr/bin/mono && \
 	paxctl -c /usr/bin/mono-sgen && \
 	paxctl -m /usr/bin/mono && \
 	paxctl -m /usr/bin/mono-sgen && \

 apt-get clean && \
 rm -rf \
 	/tmp/* \
	/var/lib/apt/lists/* \
	/var/tmp/*


