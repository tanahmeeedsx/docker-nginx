# 🐳 Docker Nginx Web Server

<div align="center">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" width="100" alt="Docker Logo" />

  <h3>Build. Containerize. Run.</h3>

  <p>A hands-on project to learn Docker by building a custom Nginx image and running a web server inside a container.</p>

  ![Docker](https://img.shields.io/badge/Docker-Containerization-2496ED?logo=docker&logoColor=white)
  ![Nginx](https://img.shields.io/badge/Nginx-Web_Server-009639?logo=nginx&logoColor=white)
  ![Linux](https://img.shields.io/badge/Linux-Environment-FCC624?logo=linux&logoColor=black)
  ![Status](https://img.shields.io/badge/Status-Completed-success)
</div>

---

## 📌 Overview

This project demonstrates how to containerize a simple web application using Docker and serve it through Nginx.

I created a custom Docker image, configured Nginx, and ran the container with port mapping to access the webpage from my local browser.

### What I Practised

- Building a custom Docker image
- Running and managing Docker containers
- Configuring Nginx with a custom configuration file
- Mapping host and container ports
- Accessing a containerized webpage through a browser
- Checking container status and troubleshooting issues

## 🛠️ Tech Stack

<div align="center">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" width="55" alt="Docker" />
  &nbsp;&nbsp;
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/nginx/nginx-original.svg" width="55" alt="Nginx" />
  &nbsp;&nbsp;
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg" width="55" alt="HTML5" />
  &nbsp;&nbsp;
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg" width="55" alt="Linux" />
</div>

- **Docker** — Image building and container management
- **Nginx** — Web server
- **HTML** — Webpage content
- **Linux** — Command-line environment

## 🏗️ Architecture

```text
        Dockerfile
             |
             v
        Docker Image
       docker-nginx:v1
             |
             v
       Docker Container
         nginx-demo
             |
             v
       Nginx Web Server
        Container :8080
             |
             v
       Port Mapping
       Host :8081
             |
             v
  http://localhost:8081
```

## 📂 Project Structure

```text
docker-nginx/
├── Dockerfile
├── index.html
├── nginx.conf
├── README.md
└── screenshots/
    ├── 01-docker-setup.png
    ├── 02-container-run.png
    ├── 03-dockerfile.png
    └── 04-nginx-webpage.png
```

## 📸 Implementation Screenshots

### 1. Docker Setup and Image Build

Initial Docker setup and image-building process.

![Docker Setup](screenshots/01-docker-setup.png)

### 2. Running the Docker Container

Running the Nginx container using the custom Docker image.

![Container Run](screenshots/02-container-run.png)

### 3. Dockerfile Configuration

The Dockerfile used to configure and build the custom Docker image.

![Dockerfile Configuration](screenshots/03-dockerfile.png)

### 4. Nginx Webpage

The webpage served by Nginx and accessed through the local browser.

**URL:** `http://localhost:8081`

![Nginx Webpage](screenshots/04-nginx-webpage.png)

## ⚙️ How to Run

### 1. Clone the Repository

```bash
git clone https://github.com/tanahmeeedsx/docker-nginx.git
cd docker-nginx
```

### 2. Build the Docker Image

```bash
docker build -t docker-nginx:v1 .
```

### 3. Run the Container

```bash
docker run -d \
  --name nginx-demo \
  -p 8081:8080 \
  docker-nginx:v1
```

### 4. Verify the Container

```bash
docker ps
```

### 5. Access the Webpage

Open your browser and visit:

```text
http://localhost:8081
```

## 🧰 Useful Docker Commands

| Command | Purpose |
|---|---|
| `docker images` | List available Docker images |
| `docker ps` | Show running containers |
| `docker ps -a` | Show all containers |
| `docker logs nginx-demo` | View container logs |
| `docker inspect nginx-demo` | Inspect container details |
| `docker stop nginx-demo` | Stop the container |
| `docker start nginx-demo` | Start the container |
| `docker rm -f nginx-demo` | Remove the container |
| `docker rmi docker-nginx:v1` | Remove the Docker image |

## 🎯 Key Learnings

Through this project, I gained hands-on experience with:

- Docker images and containers
- Writing and using a Dockerfile
- Nginx configuration
- Port mapping between host and container
- Running a web server inside a container
- Basic container verification and troubleshooting

This is a small project, but an important first step in my Docker and DevOps learning journey.

## 👨‍💻 Author

**Tanjim Ahmed (Tomal)**

- GitHub: [@tanahmeeedsx](https://github.com/tanahmeeedsx)
- LinkedIn: [Tanjim Ahmed](https://www.linkedin.com/in/tanahmedd/)

---

<div align="center">
  <p>Built as part of my hands-on learning journey in Docker, Linux, and DevOps.</p>
</div>
