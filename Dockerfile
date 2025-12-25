# Base image
FROM nginx:stable-alpine

# Remove default nginx site
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML files into nginx directory
COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

