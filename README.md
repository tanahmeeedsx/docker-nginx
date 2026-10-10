<<<<<<< HEAD
# <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" width="54" height="54" alt="Docker Logo" valign="middle"/> Docker Nginx Web Server

<p align="center">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" alt="Docker Logo" width="150"/>
</p>

<p align="center">
  <strong>Build. Containerize. Deploy.</strong>
  <br/>
  A hands-on project demonstrating how to build a custom Docker image and serve a static website using Nginx.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Docker-Containerization-2496ED?logo=docker&logoColor=white" alt="Docker"/>
  <img src="https://img.shields.io/badge/Nginx-Web%20Server-009639?logo=nginx&logoColor=white" alt="Nginx"/>
  <img src="https://img.shields.io/badge/Platform-Linux-FCC624?logo=linux&logoColor=black" alt="Linux"/>
  <img src="https://img.shields.io/badge/Status-Completed-success" alt="Project Status"/>
</p>

---

## Project Overview

This project demonstrates how to containerize a custom HTML webpage using Docker and serve it through an Nginx web server.

Using the official `nginx:alpine` base image, I created a custom Docker image by copying an `index.html` file into Nginx's default web directory. I then launched a container and mapped host port `8080` to container port `80` to access the webpage through a browser.

## Technologies Used

<p>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" width="42" alt="Docker"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/nginx/nginx-original.svg" width="42" alt="Nginx"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg" width="42" alt="HTML5"/>
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg" width="42" alt="Linux"/>
</p>

- **Docker:** Image creation and container management
- **Nginx:** Web server for serving static content
- **Alpine Linux:** Lightweight base image
- **HTML:** Custom webpage content
- **Linux CLI:** Project setup and command-line operations
=======
#  Docker Nginx Web Server

<p align="center">
  <img src="https://www.docker.com/wp-content/uploads/2022/03/Moby-logo.png" width="220" alt="Docker Logo">
</p>

<p align="center">
  <strong>Build. Containerize. Run.</strong>
</p>

A hands-on Docker project demonstrating how to build a custom Docker image, configure Nginx, and serve a custom HTML webpage inside a container.

## Project Overview

This project is part of my hands-on learning journey with Docker, Linux, and DevOps. I built a custom Docker image for an Nginx web server, added a custom webpage and Nginx configuration, and ran the application inside a container.

The container is exposed on port `8081` on the host and listens on port `8080` inside the container.

## Technologies Used

- **Docker** — Image building and container management
- **Nginx** — Web server
- **HTML5** — Custom webpage
- **Linux CLI** — Project setup and troubleshooting
>>>>>>> 8ff227a (Update Docker Nginx project and screenshots)

## Project Architecture

```text
<<<<<<< HEAD
                 Dockerfile + index.html
                           |
                           v
                  Docker Image Build
                           |
                           v
                 my-docker-image:v1
                           |
                           v
                    Docker Container
                       my-docker
                           |
                           v
                   Nginx Web Server
                     Container :80
                           |
                     Port Mapping
                      Host :8080
                           |
                           v
                  http://localhost:8080
=======
Dockerfile + index.html + nginx.conf
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
             Nginx Server
            Container :8080
                  |
                  v
             Host :8081
                  |
                  v
       http://localhost:8081
>>>>>>> 8ff227a (Update Docker Nginx project and screenshots)
```

## Project Structure

```text
docker-nginx/
├── Dockerfile
<<<<<<< HEAD
├── index.html
├── README.md
└── screenshots/
    ├── 01-docker-build.png
    ├── 02-docker-run.png
    ├── 03-docker-images.png
    ├── 04-running-container.png
    ├── 05-Dockerfile.png
    └── 06-nginx-page.png
=======
├── README.md
├── index.html
├── nginx.conf
└── screenshots/
    ├── 01-docker-setup.png
    ├── 02-container-run.png
    ├── 03-container-status.png
    └── 04-nginx-webpage.png
>>>>>>> 8ff227a (Update Docker Nginx project and screenshots)
```

## Implementation and Screenshots

<<<<<<< HEAD
### 1. Build the Docker Image

Created a custom image using the `Dockerfile` and tagged it as `my-docker-image:v1`.

```bash
docker build -t my-docker-image:v1 .
```

![Docker image build](screenshots/01-docker-build.png)

### 2. Run the Docker Container

Started the container in detached mode and mapped host port `8080` to Nginx's container port `80`.

```bash
docker run -d --name my-docker -p 8080:80 my-docker-image:v1
```

![Docker container run](screenshots/02-docker-run.png)

### 3. Verify the Docker Image

Listed the locally available images to verify that the custom image was created.

```bash
docker images
```

![Docker images list](screenshots/03-docker-images.png)

### 4. Verify the Running Container

Checked the container status and port mapping.
=======
### 1. Docker Setup and Image Build

Configured the project files and built a custom Docker image.

```bash
docker build -t docker-nginx:v1 .
```

![Docker Setup](screenshots/01-docker-setup.png)

### 2. Run the Container

Started the Nginx container in detached mode and mapped host port `8081` to container port `8080`.

```bash
docker run -d \
  --name nginx-demo \
  -p 8081:8080 \
  docker-nginx:v1
```

![Container Run](screenshots/02-container-run.png)

### 3. Verify Container Status

Checked the running container and its port mapping.
>>>>>>> 8ff227a (Update Docker Nginx project and screenshots)

```bash
docker ps
```

<<<<<<< HEAD
The container should show an `Up` status and a port mapping similar to `0.0.0.0:8080->80/tcp`.

![Running Docker container](screenshots/04-running-container.png)

### 5. Dockerfile Configuration

Reviewed the Dockerfile used to build the custom Nginx image.

```dockerfile
FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
```

![Dockerfile configuration](screenshots/05-Dockerfile.png)

### 6. Access the Nginx Webpage

Opened the webpage served by the running container in a browser.

**Local URL:** [http://localhost:8080](http://localhost:8080)

![Nginx webpage](screenshots/06-nginx-page.png)

## Useful Docker Commands

| Command | Description |
|---|---|
| `docker build -t my-docker-image:v1 .` | Build a custom image |
| `docker images` | List Docker images |
| `docker run -d --name my-docker -p 8080:80 my-docker-image:v1` | Create and start a container |
| `docker ps` | Show running containers |
| `docker ps -a` | Show all containers |
| `docker logs my-docker` | View container logs |
| `docker stop my-docker` | Stop the container |
| `docker start my-docker` | Start an existing container |
| `docker rm my-docker` | Remove a stopped container |

## Key Learnings

- Writing a Dockerfile using an official base image.
- Building and tagging custom Docker images.
- Running containers in detached mode.
- Understanding host-to-container port mapping.
- Verifying container status and inspecting logs.
- Serving static HTML content using Nginx.
- Troubleshooting container startup errors and naming conflicts.
=======
The container was running with a healthy status.

![Container Status](screenshots/03-container-status.png)

### 4. Access the Nginx Webpage

Opened the custom webpage served by Nginx in a browser.

**Local URL:** http://localhost:8081

![Nginx Webpage](screenshots/04-nginx-webpage.png)

## Useful Docker Commands

| Command | Purpose |
|---|---|
| `docker build -t docker-nginx:v1 .` | Build the Docker image |
| `docker images` | List available images |
| `docker ps` | View running containers |
| `docker ps -a` | View all containers |
| `docker logs nginx-demo` | View container logs |
| `docker stop nginx-demo` | Stop the container |
| `docker start nginx-demo` | Start the container again |
| `docker rm nginx-demo` | Remove a stopped container |

## Key Learnings

- Building a custom Docker image with a Dockerfile
- Configuring Nginx for a containerized web server
- Running and monitoring Docker containers
- Understanding host-to-container port mapping
- Checking container health and troubleshooting naming conflicts
- Serving a custom HTML webpage through Nginx
>>>>>>> 8ff227a (Update Docker Nginx project and screenshots)

## Author

**Tanjim Ahmed (Tomal)**

[GitHub](https://github.com/tanahmeeedsx) · [LinkedIn](https://www.linkedin.com/in/tanahmedd/)

<<<<<<< HEAD
---

<p align="center">
  Built as part of my hands-on learning journey in Docker, Linux, and DevOps.
</p>
=======
Built as part of my hands-on learning journey in Docker, Linux, and DevOps.
>>>>>>> 8ff227a (Update Docker Nginx project and screenshots)
