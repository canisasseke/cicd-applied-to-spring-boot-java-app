FROM openjdk:11-jre-slim
ENV APP_HOME /usr/apps
ENV APP_FILE cicd-applied-to-spring-boot-java-app-0.0.1-SNAPSHOT.jar
WORKDIR $APP_HOME
EXPOSE 8080
#COPY --from=MAVEN_BUILD /build/target/${APP_FILE} $APP_HOME/
COPY target/${APP_FILE} $APP_HOME/
CMD ["java", "-jar","/usr/apps/cicd-applied-to-spring-boot-java-app-0.0.1-SNAPSHOT.jar"]