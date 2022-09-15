FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN npm install -g npm@latest
RUN npm install qrcode-terminal
RUN npm instal pm2 -g
ENV PM2_PUBLIC_KEY smfthykaakt6csh
ENV PM2_SECRET_KEY 3qpih5cm30gqrmt

COPY . .

EXPOSE 5000

CMD ["pm2-runtime", "index.js"]
