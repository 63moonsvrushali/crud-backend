# Use Eclipse Temurin OpenJDK 17 base image
FROM eclipse-temurin:17-jdk-jammy

# Set working directory inside container
WORKDIR /app

# Copy the built jar file into the container
COPY target/crud-backend-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8085 (must match server.port)
EXPOSE 8085

# Run the jar when container starts
ENTRYPOINT ["java", "-jar", "app.jar"]

