# Getting Started

### Multiple instances of same app

- add the below in VM option in IntelliJ's run configuration

-Dspring.application.name=webrest -Dserver.port=30010 #till 30019 -Dspring.profiles.active=discovery

    
```bash
# create jar
mvn clean install

# in 1st terminal
java -jar target/enable-spring-boot-2-0.0.2-SNAPSHOT.jar -Dserver.port=30010 -Dspring.profiles.active=discovery

# 2nd terminal
java -jar target/enable-spring-boot-2-0.0.2-SNAPSHOT.jar -Dserver.port=30011 -Dspring.profiles.active=discovery

# 3rd terminal
java -jar target/enable-spring-boot-2-0.0.2-SNAPSHOT.jar -Dserver.port=30012 -Dspring.profiles.active=discovery

# etc

```