FROM node:18

EXPOSE 3000

WORKDIR /app
COPY package.json .
COPY yarn.lock .
RUN ["yarn", "install", "--frozen-lockfile"]
COPY . .

ENTRYPOINT ["yarn", "start"]
