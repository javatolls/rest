FROM alpine:3.8
RUN apk update && apk upgrade && \
    printf "Build of alpine:3.8, date: %s\n" && \
    apk add wget --no-cache && \
    mkdir /shd/ && chmod -R 777 /shd/ && cd /shd/ && \
    wget https://downloads.mamp.info/MAMP-PRO/releases/5.2/MAMP_MAMP_PRO_5.2.pkg
