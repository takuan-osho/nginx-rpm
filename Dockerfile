FROM centos:6.7
MAINTAINER SHIMIZU Taku

# setup
RUN yum install -y rpmbuild tar wget gcc
RUN yum install -y pcre pcre-devel zlib zlib-devel openssl openssl-devel

# install nginx-build
ADD  https://github.com/cubicdaiya/nginx-build/releases/download/v0.7.3/nginx-build-linux-amd64-0.7.3.tar.gz .
RUN tar xzvf nginx-build-linux-amd64-0.7.3.tar.gz
RUN mv /nginx-build /usr/bin/
