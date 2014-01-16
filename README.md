reference-data
==============

Application to create reference data for Bahmni application


For devs -> To setup Reference data application, 

1. psql -U postgres < scripts/setupDB.sql (create database user and schema)

2. mvn liquibase:update (update db schema)

3. mvn clean install (build war)

4. mvn grails:exec -Dcommand=run-app (run application. Grails runs the application in embedded tomcat)
You should now be able to access the application at http://localhost:8080/reference-data