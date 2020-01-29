FROM ubuntu:18.04

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

RUN  apt-get update \
  && apt-get install -y wget 

RUN  wget "https://api.bintray.com/content/basespace/BaseSpaceCLI-EarlyAccess-BIN/latest/\$latest/amd64-linux/bs?bt_package=latest" -O /bin/bs \
  && chmod u+x /bin/bs

