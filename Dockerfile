# pull official base image
FROM node:20-alpine

# set working directory
WORKDIR /app

# install app dependencies
COPY package.json ./
RUN yarn install

# add app
COPY . .

# build app
RUN yarn run build

# Expose port
EXPOSE 3000

# start app
CMD ["yarn", "start"]
