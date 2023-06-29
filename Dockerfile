# Use a imagem base do OpenJDK 11
FROM adoptopenjdk:11-jdk-hotspot

# Defina o diretório de trabalho no contêiner
WORKDIR /app

ARG JAR_FILE=target/*.jar

# Copie o JAR da aplicação para o contêiner
COPY ${JAR_FILE} service-registry.jar

# Defina as variáveis de ambiente, se necessário
# ENV VAR_NAME=value

# Expõe a porta em que a aplicação está escutando (se aplicável)
EXPOSE 8761

# Comando para iniciar a aplicação quando o contêiner for iniciado
CMD ["java", "-jar", "service-registry.jar"]


