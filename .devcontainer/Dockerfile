# .devcontainer/Dockerfile
FROM mcr.microsoft.com/vscode/devcontainers/java:openjdk11

# Install Tomcat
ARG TOMCAT_VERSION=10
RUN curl -O https://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_VERSION}/v${TOMCAT_VERSION}.0.2/bin/apache-tomcat-${TOMCAT_VERSION}.0.2.tar.gz \
    && tar xf apache-tomcat-${TOMCAT_VERSION}.0.2.tar.gz \
    && mv apache-tomcat-${TOMCAT_VERSION}.0.2 /usr/local/tomcat \
    && rm apache-tomcat-${TOMCAT_VERSION}.0.2.tar.gz

# Install MySQL Client
RUN apt-get update \
    && apt-get install -y mysql-client

# Copy initialization script
COPY init.sh /root/.devcontainer/