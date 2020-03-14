# Khai báo build từ image nào, ở đây mình dùng phiên bản carbon tức là nodejs version 8.10.0 LTS
FROM node:carbon
 
# Mô tả về người build docker image
MAINTAINER Si Hoang <sihoang.io>
 
# Khai báo đường dẫn của code chúng ta trong image, mình sẽ để ở /usr/src
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
 
# Copy toàn bộ source của project vào trong image
COPY . .
 
# Download các dependencies
RUN npm install
 
# Vì ta listen app ở cổng 6789 nên ta sẽ EXPOSE ra tại cổng 6789
EXPOSE 6789
 
# Và cuối cùng ta dùng CMD để chạy App
CMD ["npm","start"]