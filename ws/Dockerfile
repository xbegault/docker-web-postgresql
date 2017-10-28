FROM node:6.5.0

#RUN mkdir /var/node

#WORKDIR /var/node
RUN mkdir /tmp/npmbox
ADD ./npmbox /tmp/npmbox
WORKDIR /tmp/npmbox
RUN tar --no-same-owner --no-same-permissions -xzf nodemon.npmbox
RUN npm install --global --cache ./.npmbox.cache --optional --cache-min 99999 --shrinkwrap false nodemon

WORKDIR /var/node/runtime

#CMD ["node", "/var/node/runtime/api.js"]

#RUN npm install nodemon -g

#COPY ./entrypoint.sh /
#RUN chmod a+rwx /entrypoint.sh
#ENTRYPOINT ["/entrypoint.sh"]

CMD ["nodemon", "--legacy-watch", "/var/node/runtime/api.js"]
#CMD ["bash"]
