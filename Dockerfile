FROM quay.io/drsylent/cubix/block2/homework-base:java17 as backapp
ENV VARIABLE CUBIX_HOMEWORK=attilaszegedi, APP_DEFAULT_MESSAGE=""
LABEL key="cubix.homework.attilaszegedi"

RUN mkdir /opt/backapp && chown 1001 -R /opt/backapp
USER 1001
WORKDIR /opt/backapp
COPY --chown=1001 ./backapp/target/cubix-second-homework-backapp-0.0.1-SNAPSHOT.jar cubix-second-homework-backapp-0.0.1-SNAPSHOT.jar

CMD ["java","-jar","cubix-second-homework-backapp-0.0.1-SNAPSHOT.jar"]

FROM quay.io/drsylent/cubix/block2/homework-base:java17 as frontapp
ENV VARIABLE CUBIX_HOMEWORK=attilaszegedi, APP_DEFAULT_MESSAGE=""
LABEL key="cubix.homework.attilaszegedi"

RUN mkdir /opt/frontapp && chown 1001 -R /opt/frontapp
USER 1001
WORKDIR /opt/frontapp


COPY --chown=1001 ./frontapp/target/cubix-second-homework-frontapp-0.0.1-SNAPSHOT.jar cubix-second-homework-frontapp-0.0.1-SNAPSHOT.jar
CMD ["java","-jar","cubix-second-homework-frontapp-0.0.1-SNAPSHOT.jar"]