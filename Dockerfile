FROM debian:12.4

ENV jdupes_version=1.27.3

RUN apt-get update && \
    apt-get install -y wget xz-utils

RUN wget https://codeberg.org/jbruchon/jdupes/releases/download/v$jdupes_version/jdupes-$jdupes_version-linux-x86_64.pkg.tar.xz 

RUN tar -xf jdupes-$jdupes_version-linux-x86_64.pkg.tar.xz

RUN mv jdupes-$jdupes_version-linux-x86_64/jdupes* /usr/local/bin

RUN rm -rf jdupes-*


