FROM quay.io/drsylent/cubix/block2/homework-base:java17 as backapp
ENV CUBIX_HOMEWORK=attilaszegedi, APP_DEFAULT_MESSAGE=""
LABEL cubix.homework.owner=attilaszegedi

CMD ["java","-jar","app.jar"]
