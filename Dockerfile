
# Use an official Nginx image
FROM nginx:alpine

# Copy your website files into Nginx's public directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when container launches
CMD ["nginx", "-g", "daemon off;"]
