# Use a lightweight official Nginx image
FROM nginx:alpine

# Install security updates and remove package cache
RUN apk update && apk upgrade && apk add --no-cache \
    curl \
    && rm -rf /var/cache/apk/*

# Copy built assets from builder stage
COPY . /usr/share/nginx/html

# Copy nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Create necessary directories first
RUN mkdir -p /var/run/nginx

# Set proper permissions for nginx user (use default nginx user)
RUN chown -R nginx:nginx /usr/share/nginx/html && \
    chown -R nginx:nginx /var/cache/nginx && \
    chown -R nginx:nginx /var/log/nginx && \
    chown -R nginx:nginx /etc/nginx/conf.d && \
    chown -R nginx:nginx /var/run/nginx && \
    chmod 755 /var/run/nginx && \
    chmod 755 /var/cache/nginx && \
    chmod 755 /var/log/nginx

# Switch to non-root user
USER nginx

# Expose port 80
EXPOSE 8080

# Health check with better error handling
HEALTHCHECK --interval=30s --timeout=10s --start-period=10s --retries=3 \
    CMD curl -f http://localhost:8080/health || exit 1

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
