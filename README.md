# enable-spring-boot-2
Demo and Playground to explore Spring Boot 2 latest features

# Topics
1. Display all auto configuration classes
- IntelliJ IDEA option
- log
2. Inject properties
- default path: application.yaml, application.properties
- default path with profile sections
- specific path on classpath
3. @Configuration override
- Security
- Logging Pattern
- Metrics
- Health

## Checklist
- logging levels
- eureka client
- auto-configure H2
- git-plugin-for-actuator
- upgrade to latest Boot and Cloud versions

## Docker

- build
```bash
docker build /home/znevzz/Desktop/Projects/Spring/enable-spring-boot-2/ -t enable-spring-boot-2
```
- view
```bash
docker image ls
docker container ls
```
- run
```bash
docker run <IMAGE-ID>/<REPOSITORY> -p <INTERNAL-PORT:EXTERNAL-PORT>
docker run -p 8999:8999 enable-spring-boot-2
```
- delete
```bash
docker image rm <IMAGE-ID>
docker image rm <IMAGE-ID> -f
```
- enter container
```bash
docker exec -it <IMAGE-ID> bash
```