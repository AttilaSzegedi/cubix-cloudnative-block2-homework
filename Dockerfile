FROM quay.io/drsylent/cubix/block2/homework-base:java17 as frontapp
ENV VARIABLE CUBIX_HOMEWORK=attilaszegedi, APP_DEFAULT_MESSAGE=""
LABEL key="cubix.homework.attilaszegedi"

RUN mkdir /opt/app && chown 1001 -R /opt/app
USER 1001
WORKDIR /opt/app

COPY --chown=1001 ./backapp/target/cubix-second-homework-backapp-0.0.1-SNAPSHOT.jar cubix-second-homework-backapp-0.0.1-SNAPSHOT.jar
COPY --chown=1001 ./frontapp/target/cubix-second-homework-frontapp-0.0.1-SNAPSHOT.jar cubix-second-homework-frontapp-0.0.1-SNAPSHOT.jar
CMD ["java", "-jar","java -jar cubix-second-homework-frontapp-0.0.1-SNAPSHOT.jar--back.url=http://localhost:8081","java", "-jar""java -jar cubix-second-homework-backapp-0.0.1-SNAPSHOT.jar --server.port=8081"]


#CMD "docker build -t frontapp -f ./frontapp/Dockerfile-frontapp ." "docker build -t backapp -f ./backapp/Dockerfile-backapp ." 