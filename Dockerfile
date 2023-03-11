FROM openjdk:8
VOLUME /tmp
ADD target/cicd_demo2.jar app.jar
EXPOSE 8888
ENTRYPOINT ["bash", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]
