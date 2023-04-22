# Use:
# $ docker build --tag helpdesk .
# $ docker images | grep helpdesk
# $ docker run -d -p 4200:80 --name helpdesk helpdesk
#

# ----------------------------------------------------------
# Install angular
# -------------------
# $ node -v
# $ npm -v
# $ npm install -g @angular/cli
# $ ng version

# Create new angular project
# -------------------
# $ ng new helpdesk
# $ cd helpdesk
# ng serve
# ----------------------------------------------------------

# baseImage
# first stage of build angular docker image
# -------------------
FROM node:alpine3.16 as build

RUN mkdir -p /app

WORKDIR /app

COPY package.json /app/
RUN npm install

COPY . /app/
RUN npm run build --prod


# Final Stage
# -------------------
FROM nginx:alpine
COPY --from=build /app/dist/helpdesk /usr/share/nginx/html