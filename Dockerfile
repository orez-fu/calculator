FROM nginx:1.24.0-alpine

# Copy thư mục build vào trong nginx tại thư mục /usr/share/nginx/html
COPY build /usr/share/nginx/html

# Khai báo cổng nginx hoạt động
EXPOSE 80

# Lệnh chạy nginx khi container được khởi tạo từ image
ENTRYPOINT ["nginx", "-g", "daemon off;"]