FROM python:3.8-buster
MAINTAINER James

RUN pip3 install --no-cache-dir gunicorn Flask asyncio botbuilder-core flask-SQLAlchemy gevent

RUN useradd -m AmongUS
RUN chown -R root:root /home/AmongUS
RUN chmod -R 755 /home/AmongUS

USER AmongUS
CMD ["tail","-f","/dev/null"]
