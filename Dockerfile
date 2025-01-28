FROM quay.io/astronomer/astro-runtime:12.6.0

USER root

# Install JDK-17 for amd64 (Intel/AMD processors)
RUN apt update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get install -y ant && \
    apt-get clean;

# Set JAVA_HOME for amd64
ENV JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64
RUN export JAVA_HOME

USER astro