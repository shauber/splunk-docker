docker run -d \
	--name splunk \
	-v /data/splunk/etc:/opt/splunk/etc \
	-v /data/splunk/var:/opt/splunk/var \
	-p 8000:8000 \
	-p 5514:5514 \
	-p 5514:5514/udp \
	-e 'SPLUNK_START_ARGS=--accept-license' \
	-e 'SPLUNK_PASSWORD=Oct.23.18' \
	--restart=always \
	splunk/splunk:latest
