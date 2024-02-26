FROM openjdk:17
ADD build/libs/demo-project-1.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]