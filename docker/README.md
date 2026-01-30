# Docker & Containers – Flask and Redis Application

## Overview

In this project, I built a multi-container application using Docker and Docker Compose. The application consists of a Python Flask web service and a Redis database, running as separate containers on the same Docker network.

This project reinforced core container concepts including image building, container networking, environment-based configuration, and persistent storage.

## Architecture

Browser → Flask (Docker container) → Redis (Docker container)

## What I built

- A Flask web application exposing two routes
- A Redis database used to store application state
- A custom Docker image for the Flask application
- A Docker Compose configuration to orchestrate both services
- Persistent Redis storage using a Docker named volume

## Application behaviour

The Flask application provides the following routes:

- `/`  
  Displays a welcome message to confirm the service is running.

- `/count`  
  Increments and displays a visit counter stored in Redis.  
  Each page refresh increases the counter by one.

Redis is used as a shared state store, allowing the counter to persist independently of the Flask container.

## Steps completed

1. Created a Flask application with two routes (`/` and `/count`)
2. Integrated Redis using the Python Redis client
3. Dockerised the Flask application using a custom Dockerfile
4. Used the official Redis Docker image
5. Configured Docker Compose to:
   - run both services on the same network
   - allow service-to-service communication using service names
6. Passed Redis configuration into Flask using environment variables
7. Exposed the Flask service to the host machine on port 5002
8. Added a Docker named volume to persist Redis data across container restarts

## How to run

1. docker compose up --build

- To run in detached mode:

docker compose up -d --build

2. To stop the containers.

docker compose down

## Note:

- Redis data will persist unless volumes are explicitly removed.

## What I learned

- How Docker images are built from Dockerfiles

- How Docker Compose simplifies multi-container applications

- Service discovery and networking between containers

- Using Redis as a shared state store

- Persisting container data using Docker volumes

- Separating configuration from application code using environment variables

This project forms part of my ongoing DevOps learning and builds on earlier work with Linux, networking, and cloud infrastructure. The concepts explored here will be extended further in future modules covering CI/CD and Kubernetes.
