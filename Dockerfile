FROM node:12.16.3

WORKDIR /code
ENV PORT 9000
COPY /package.json /code/package.json
RUN npm i
COPY /build/ /code/
CMD ["node","index.js"]