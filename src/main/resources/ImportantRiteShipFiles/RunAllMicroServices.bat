set "JAVA_HOME=C:\Program Files\Java\jdk-17"
set "MAVEN_HOME=R:\RiteShipCodeBases\apache-maven-3.8.8-bin\apache-maven-3.8.8"
cd R:\RiteShipCodeBases\riteship_crs_front_end_standalone
R:
start mvnw clean spring-boot:run
cd R:\RiteShipCodeBases\riteship_crs_job_microservice
start mvnw clean spring-boot:run
cd R:\RiteShipCodeBases\riteship_crs_faq_microservice
start mvnw clean spring-boot:run
cd R:\RiteShipCodeBases\riteship_crs_employee_microservice
start mvnw clean spring-boot:run
cd R:\RiteShipCodeBases\riteship_crs_config_server_microservice
start mvnw clean spring-boot:run
cd R:\RiteShipCodeBases\riteship_crs_company_microservice
start mvnw clean spring-boot:run
cd R:\RiteShipCodeBases\riteship_crs_college_microservice
start mvnw clean spring-boot:run
cd R:\RiteShipCodeBases\riteship_crs_student_microservice
start mvnw clean spring-boot:run