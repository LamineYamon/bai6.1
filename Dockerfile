# Sử dụng image Tomcat 9 + JDK 17
FROM tomcat:9.0.108-jdk17

# Xóa các app mặc định trong Tomcat (vd: ROOT, examples,…)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy toàn bộ project của bạn vào ROOT (để chạy tại "/")
COPY ./web /usr/local/tomcat/webapps/ROOT

# Mở port 8080 (Render sẽ dùng port này)
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
