# Use a lightweight nginx image
FROM nginx:alpine

# Remove the default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site (HTML, CSS, JS) into nginx directory
COPY . /usr/share/nginx/html

# Expose port 80 (default for HTTP)
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
