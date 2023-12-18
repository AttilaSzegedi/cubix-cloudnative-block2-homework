FROM quay.io/drsylent/cubix/block2/homework-base:java17 as backapp
ENV CUBIX_HOMEWORK=attilaszegedi, APP_DEFAULT_MESSAGE=""
LABEL cubix.homework.owner=attilaszegedi

RUN mkdir /opt/app && chown 1001 -R /opt/app
USER 1001
WORKDIR /opt/app
COPY --chown=1001 target/*.jar app.jar

CMD ["java","-jar","app.jar"]