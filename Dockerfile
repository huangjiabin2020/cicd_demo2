FROM openjdk:17
VOLUME /tmp
ADD target/cicd_demo2.jar app.jar
EXPOSE 8081
#ENTRYPOINT ["Bash","-DBash.security.egd=file:/dev/./urandom","-jar","/app.jar"]
ENTRYPOINT ["java", "-jar", "/app.jar"]
