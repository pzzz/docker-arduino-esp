FROM pschuller/arduino-base

LABEL maintainer="Peter Schuller <ps@pzzz.de>"

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
  && apk --update add --no-cache libstdc++ py-serial@testing

COPY arduino-cli.yaml .

RUN arduino-cli core update-index
