FROM tomcat:9.0.108-jdk17

# Xóa các app mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy các file JSP, HTML, CSS
COPY ./web /usr/local/tomcat/webapps/ROOT

# Copy file .class, web.xml và thư viện đã biên dịch (đúng thư mục!)
COPY ./build/WEB-INF /usr/local/tomcat/webapps/ROOT/WEB-INF

EXPOSE 8080
CMD ["catalina.sh", "run"]
