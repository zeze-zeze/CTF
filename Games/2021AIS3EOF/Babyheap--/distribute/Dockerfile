FROM ubuntu:hirsute
MAINTAINER James

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install xinetd libc6:i386 -qy
RUN useradd -m Babyheap--
RUN chown -R root:root /home/Babyheap--
RUN chmod -R 755 /home/Babyheap--

CMD ["/usr/sbin/xinetd","-dontfork"]
