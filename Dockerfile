FROM suzukishunsuke/python2:0.1.0
RUN apk update && \
  apk upgrade && \
  pip install --upgrade pip supervisor && \
  ln -s /etc/supervisor/supervisord.conf /etc/supervisord.conf && \
  mkdir -p /etc/supervisor/conf.d /var/log/supervisor && \
  rm -rf /var/cache/apk/*
COPY supervisord.conf /etc/supervisor
CMD /usr/bin/supervisord
