FROM java:8-alpine
MAINTAINER "冯宇<yu.feng@shifudao.com>"

ENV GRADLE_VERSION 2.13
RUN cd /usr/share && \
    wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip && \
    unzip gradle-${GRADLE_VERSION}-bin.zip && \
    rm -f gradle-${GRAILS_VERSION}-bin.zip
RUN ln -s /usr/share/gradle-${GRADLE_VERSION}/bin/gradle /usr/bin/
RUN mkdir -p /app/
WORKDIR /app/

ENTRYPOINT ["gradle"]
