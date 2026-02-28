# Gunakan image Nginx yang ringan
FROM nginx:alpine

# Hapus default config nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copy file HTML, CSS, dan assets ke web root Nginx
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Jalankan Nginx
CMD ["nginx", "-g", "daemon off;"]