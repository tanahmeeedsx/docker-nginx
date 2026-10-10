<<<<<<< HEAD
FROM  nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

=======
# Use the official unprivileged Nginx image for a safer container runtime.
FROM nginxinc/nginx-unprivileged:alpine

WORKDIR /usr/share/nginx/html

# Copy the webpage and Nginx configuration into the image.
COPY --chown=nginx:nginx index.html ./index.html
COPY --chown=nginx:nginx nginx.conf /etc/nginx/conf.d/default.conf

# The unprivileged Nginx image listens on port 8080 by default.
EXPOSE 8080

# Check that Nginx is responding to HTTP requests.
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -q -O /dev/null http://127.0.0.1:8080/ || exit 1
>>>>>>> 8ff227a (Update Docker Nginx project and screenshots)
