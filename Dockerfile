FROM alpine:latest

COPY v2ray /usr/bin/v2ray/
COPY v2ctl /usr/bin/v2ray/
COPY config.json /etc/v2ray/config.json


RUN mkdir /var/log/v2ray/ &&\
    chmod +x /usr/bin/v2ray/v2ctl && \
    chmod +x /usr/bin/v2ray/v2ray 
    

ENV PATH /usr/bin/v2ray:$PATH

CMD v2ray -config=/etc/v2ray/config.json
    

EXPOSE 8080
