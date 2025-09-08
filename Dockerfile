FROM tomcat:9.0.108-jdk17

# Xóa app mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy JSP, HTML, CSS
COPY ./web /usr/local/tomcat/webapps/ROOT

# Copy cấu hình + servlet đã biên dịch + thư viện
COPY ./WEB-INF /usr/local/tomcat/webapps/ROOT/WEB-INF

EXPOSE 8080
CMD ["catalina.sh", "run"]
