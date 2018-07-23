FROM node:7

# https://github.com/yarnpkg/yarn/issues/2266
RUN yarn global add node-gyp

WORKDIR /srv/image-resizer-instance

RUN git clone https://github.com/frankfuu/image-resizer.git . \	
	&& yarn install --production \
	&& yarn cache clean 

EXPOSE 3001
CMD ["yarn", "start"]