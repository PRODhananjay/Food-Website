# Use lightweight nginx image
FROM nginx:alpine

# Create Apache-style directory
RUN mkdir -p /var/www/html

# Remove default nginx html
RUN rm -rf /usr/share/nginx/html/*

# Copy website files to Apache-style path
COPY . /var/www/html/

# Change nginx root to /var/www/html
RUN sed -i 's|root /usr/share/nginx/html;|root /var/www/html;|g' /etc/nginx/conf.d/defaul
