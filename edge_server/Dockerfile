# Start with a small base image.
FROM alpine:3.18

# Add labels
LABEL org.opencontainers.image.authors="ctnormand1@gmail.com"
LABEL org.opencontainers.image.source="https://github.com/ctnormand1/container-fundamentals"
LABEL org.opencontainers.image.description="Containter Fundamentals - Static Website Image"
LABEL org.opencontainers.image.licenses=APACHE2
LABEL server_type="edge_server"

# Add the --no-cache flag to avoid caching indices
RUN apk update --no-cache && apk add --no-cache nginx

# Copy the necessary files and expose port 80
COPY config/nginx.conf /etc/nginx/
COPY web_content/ /var/www
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
