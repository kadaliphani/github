FROM openjdk:17
COPY src/Main.java /app/Main.java
WORKDIR /app
RUN javac Main.java
CMD ["java", "Main"]
