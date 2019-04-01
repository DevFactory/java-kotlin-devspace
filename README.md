# DevSpace for Java and Kotlin development.

* Open JDK 8
* Kotlin v1.2.70
* Maven v3.5.4
* Gradle v4.9

#### Environment Variables

|Name|Value|
|------|-----|
|JAVA_HOME|`/usr/lib/jvm/java-1.8.0-openjdk-amd64`|
|M2_HOME|`/usr/local/apache-maven`|
|MAVEN_HOME|`/usr/local/apache-maven`|



## Getting Started

1. First install DevSpaces client application, follow the instructions [here](https://support.devspaces.io/article/22-devspaces-client-installation) to do this.

2. Clone this repository locally

3. To create a DevSpace, open a terminal then navigate to the cloned repository directory and run following command
```bash
devspaces create
```
This will open a build status window and shows you the progress of DevSpace creation. Once build is successful validated starts.

4. Once validation is completed. Run `devspaces ls` command to see the list of DevSpaces and corresponding status. Newly created DevSpace `java-kotlin` will be in "**Stopped**" status.

5. To start your DevSpace run following command
```bash
devspaces start java-kotlin
```
You will receive a notification when your DevSpace is ready to be used.

6. To get inside your DevSpace, run following command
```bash
devspaces exec java-kotlin
```

## Run Demo Spring Boot and Kotlin Application

1. From a new terminal, clone the demo application repository
```bash
git clone https://github.com/spring-guides/tut-spring-boot-kotlin.git
```

2. Navigate to cloned demo application directory
```bash
cd tut-spring-boot-kotlin
```

3. To synchronization code from your local machine to your DevSpace. Run following command
```bash
devspaces bind java-kotlin
```
This will synchronize files from your current working directory to your DevSpace. It might takes some time to complete, depending on the repository size.

4. Get inside your DevSpace by running following command
```bash
devspaces exec java-kotlin
```
5. Once you're inside DevSpace, you should be able see `tut-spring-boot-kotlin` project files under `/data` directory.

6. To build and test the application, navigate to `/data` directory then run the following code
```bash
mvn package
```
