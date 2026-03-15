# Gunakan image Nginx yang ringan
FROM nginx:alpine


COPY . /usr/share/nginx/html


# Expose port 80
EXPOSE 80

# Jalankan Nginx
CMD ["nginx", "-g", "daemon off;"]