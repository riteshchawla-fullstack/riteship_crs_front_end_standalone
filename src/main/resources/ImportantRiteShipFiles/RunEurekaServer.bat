set "JAVA_HOME=C:\Program Files\Java\jdk-17"
set "MAVEN_HOME=R:\RiteShipCodeBases\apache-maven-3.8.8-bin\apache-maven-3.8.8"
cd R:\RiteShipCodeBases\riteship_crs_java_common_apis
R:
start R:\RiteShipCodeBases\apache-maven-3.8.8-bin\apache-maven-3.8.8\bin\mvn clean install
cd R:\RiteShipCodeBases\riteship_crs_eureka_server_discovery
start mvnw clean spring-boot:run
cd R:\RiteShipCodeBases\riteship_crs_config_server_microservice
start mvnw clean spring-boot:run