FROM library/alpine

RUN apk update && \
    apk add ucarp && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /etc/ucarp/

COPY vip-*.sh /etc/ucarp/
COPY run-ucarp.sh /bin/

CMD /bin/run-ucarp.sh
