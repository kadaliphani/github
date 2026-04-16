# 🚀 Spring Boot Docker CI/CD Project

This project is a beginner-friendly demonstration of how to:

- Build a Spring Boot application using **Java 17**
- Package it with **Maven**
- Containerize it using **Docker**
- Automate the build and deployment process using **GitHub Actions**

This setup ensures smooth Continuous Integration and Continuous Deployment (CI/CD) for Java microservices.

---

## 📚 Project Overview

This repository contains a simple Spring Boot application packaged into a Docker image. When changes are pushed to the `main` branch, GitHub Actions automatically runs tests, builds the JAR file, creates a Docker image, and pushes it to **Docker Hub**.

---

## 📦 Features

- Spring Boot backend written in Java 17
- Built with Maven (`pom.xml`)
- Dockerfile for building containerized applications
- GitHub Actions CI/CD pipeline
- Docker image pushed to Docker Hub on every `main` branch push

---

## 📁 Folder Structure

```
springboot-docker-ci-cd/
├── .github/workflows/     # GitHub Actions workflow
├── src/                   # Spring Boot application code
├── Dockerfile             # Container definition
├── pom.xml                # Maven project descriptor
└── README.md              # Project documentation
```

---

## 🐳 Docker Integration

After the application is built, it is packaged into a Docker image using the Dockerfile.

**Benefits:**
- Consistent runtime environment
- Easy to deploy anywhere (local, cloud, server)
- Reproducible builds

---

## ⚙️ CI/CD with GitHub Actions

A GitHub Actions workflow is configured to automate the following steps:

1. Checkout the code
2. Set up Java 17 environment
3. Run tests using Maven
4. Package the application
5. Build the Docker image
6. Authenticate to Docker Hub
7. Push the image to Docker Hub

This workflow runs every time changes are pushed to the `main` branch.

---

## 🔐 Secrets Required (in GitHub Settings)

To use Docker login in GitHub Actions, the following **secrets** should be added to your GitHub repo:

- `DOCKER_USERNAME` — Your Docker Hub username
- `DOCKER_PASSWORD` — Your Docker Hub password or access token

---

## 🧪 How to Run This Project Locally

1. Clone the repository:

```bash
git clone https://github.com/your-username/springboot-docker-ci-cd.git
cd springboot-docker-ci-cd
```

2. Build the application with Maven:

```bash
mvn clean package
```

3. Build the Docker image:

```bash
docker build -t springboot-app .
```

4. Run the container:

```bash
docker run -p 8080:8080 springboot-app
```

5. Visit the app in your browser:

```
http://localhost:8080
```

---

## 🌐 Docker Hub Deployment

Once your CI/CD pipeline runs, the Docker image will be automatically uploaded to your Docker Hub account under:

```
docker.io/<your-docker-username>/springboot-app:latest
```

---

## 🎯 Use Cases

- Ideal for learning CI/CD pipelines
- Perfect for deploying microservices with Java & Docker
- Great starting point for cloud deployments (AWS ECS, Kubernetes, etc.)

---

## 📄 License

This project is licensed under the **MIT License**.

---

## 👨‍💻 Author

Made with ❤️ by **[af1nzr](https://github.com/af1nzr)**  
Reach out if you want to extend the project, deploy to cloud, or integrate frontend!

