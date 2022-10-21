# Set base image using temurin
FROM eclipse-temurin:11-jre

ENV JAR_FILE target/*.jar
ENV APP_HOME=/opt/app

RUN mkdir $APP_HOME
COPY $JAR_FILE $APP_HOME
WORKDIR $APP_HOME

ENV JAVA_OPTS="-Xms128M -Xmx128M"

ENTRYPOINT java $JAVA_OPTS -jar hello-world-*.jar