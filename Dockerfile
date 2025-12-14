FROM tomcat:11.0-jdk21-temurin

# Eliminar aplicaciones por defecto
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiar tu WAR al contenedor
COPY LPI_T2_ARIZAPANA_ALEJO_JOSUE.war /usr/local/tomcat/webapps/ROOT.war

# Exponer puerto 8080
EXPOSE 8080

# Iniciar Tomcat
CMD ["catalina.sh", "run"]

