FROM suzukishunsuke/supervisor:0.1.0
RUN apk update && \
  apk upgrade && \
  pip install --upgrade pip supervisor && \
  rm -rf /var/cache/apk/*
VOLUME /var/log/supervisor /etc/supervisor
