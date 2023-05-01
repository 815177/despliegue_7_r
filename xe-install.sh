#!/bin/bash

#Descargar la imagen de Docker
docker pull gvenzl/oracle-xe:11.2.0.2

#Crear e iniciar el contenedor
docker run -d -p 1521:1521 --name oraclexe -e ORACLE_PASSWORD=1234 -e ALLOW_REMOTE=true -v oracle-volume:/opt/oracle/XE11/oradata gvenzl/oracle-xe:11.2.0.2

#Para entrar a la base de datos entrar primero al contenedor docker exec -it oraclexe /bin/bash
#Despues ejecutar sqlplus username/passwd@//localhost/service -> sqlplus oraclexe/w92LW4#p@//localhost/XE => sqlplus system/1234@//localhost/XE
