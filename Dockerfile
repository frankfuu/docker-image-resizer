FROM node:10.7

WORKDIR /srv/image-resizer-instance

RUN git clone https://github.com/frankfuu/image-resizer.git . \	
	&& yarn install --production \
	&& yarn cache clean 

EXPOSE 3001
CMD ["yarn", "start"]