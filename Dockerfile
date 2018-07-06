FROM alpine:3.7
MAINTAINER Name tai@thoozl.com
# Using random port. Run docker ps to see which one!
EXPOSE 8080/tcp
RUN apk add --update nodejs nodejs-npm 
RUN npm install npm@latest -g
# Run it twice inside an OR so that it ignores the ENOENT error , but fails on any other error
RUN npm i -g quasar-cli@0.16.4 vue@2.5.16 vue-cli@2.9.6 || npm i -g quasar-cli@0.16.4 vue@2.5.16 vue-cli@2.9.6
# Run your COPY command here, and don't forget the NPM install (or yarn install) afterwards!
#COPY ./ /your/ubild/location
#RUN npm install
# automatically opening the browser from inside a docker container will cause some errors, so disable that.
#RUN sed -i "s/open:\ true/open:\ false/" quasar.conf.js
#CMD quasar build
