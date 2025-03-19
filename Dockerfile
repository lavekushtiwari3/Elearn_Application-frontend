FROM node 
WORKDIR /Code_Path
COPY . .
RUN npm install
RUN npm run build

RUN apt update
RUN apt install -y apache2

RUN service apache2 start

RUN cp -r build/* /var/www/html/
