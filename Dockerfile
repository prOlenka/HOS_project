# Используем официальный базовый образ OpenJDK 17
FROM eclipse-temurin:17-jre-alpine

# Аргумент для указания пути к JAR-файлу
ARG JAR_FILE=/project1/target/project1-0.0.1-SNAPSHOT.jar

# Устанавливаем рабочую директорию
WORKDIR /opt/app

# Копируем JAR-файл в контейнер
COPY ${JAR_FILE} app.jar

# Устанавливаем точку входа для запуска JAR-файла
ENTRYPOINT ["java", "-jar", "app.jar"]