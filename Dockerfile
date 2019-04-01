FROM ubuntu:16.04

LABEL description="Devspaces implementation for Java-Kotlin developer environmentecho "

ENV LANG=C.UTF-8 \
    JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64 \
    M2_HOME=/usr/local/apache-maven \
    MAVEN_HOME=/usr/local/apache-maven \
    PATH=${PATH}:/usr/local/apache-maven/bin:/opt/gradle/gradle-4.9/bin:/usr/lib/kotlinc/bin

RUN apt-get update && \
    apt-get install -y apt-utils \
    build-essential \
    curl \
	dialog \
    git \    	
    mc \
    nano \
    openjdk-8-jdk \
    sudo \  
    vim \
    wget && \
    apt-get clean
    
# Installing Kotlin    
RUN cd /usr/lib && \
    wget https://github.com/JetBrains/kotlin/releases/download/v1.2.70-eap-4/kotlin-compiler-1.2.70-eap-4.zip && \
    unzip kotlin-compiler-*.zip && \
    rm kotlin-compiler-*.zip && \
    rm kotlinc/bin/*.bat    
    
# Installing Maven and Gradle
RUN cd /usr/local && \
    wget http://www-eu.apache.org/dist/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz && \
    tar xzf apache-maven-3.5.4-bin.tar.gz && \
    ln -s apache-maven-3.5.4 apache-maven && \
    rm -f apache-maven-3.5.4-bin.tar.gz  && \
    mkdir /opt/gradle && \
    cd /opt/gradle && \
    wget https://services.gradle.org/distributions/gradle-4.9-bin.zip && \
    unzip -d /opt/gradle gradle-4.9-bin.zip && \
    rm -rf gradle-4.9-bin.zip
    
WORKDIR /data

CMD tail -f /dev/null