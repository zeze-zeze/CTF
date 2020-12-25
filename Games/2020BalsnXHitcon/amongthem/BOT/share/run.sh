#!/bin/bash

#cp [REDACTED].db [REDACTED].db

gunicorn \
  --bind 0.0.0.0:10101 \
  --workers 1 \
  --worker-class "gevent" \
  --access-logfile - \
  --error-logfile - \
  --chdir /home/AmongUS/ \
  app:app
