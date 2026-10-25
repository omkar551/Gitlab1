# Multi-stage lightweight production Dockerfile
FROM nginx:alpine

# Metadata
LABEL maintainer="Student Project <student@devops.edu>"
LABEL version="1.4.0"
LABEL description="DevPulse - Modern DevOps Dashboard & Infrastructure Portal"

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy website files to Nginx document root
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY app.js /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Healthcheck probe for Docker container health monitoring
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://localhost/ || exit 1

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
