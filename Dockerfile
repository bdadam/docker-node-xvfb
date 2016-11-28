FROM node:7.2

MAINTAINER autoscout24

RUN apt-get update && apt-get install -y libgtk2.0-0 libnotify-bin libgconf-2-4 libnss3 xvfb libxss1

RUN Xvfb -ac -screen scrn 1280x800x24 :9.0 &

RUN export DISPLAY=:9.0

RUN npm i -g yarn
