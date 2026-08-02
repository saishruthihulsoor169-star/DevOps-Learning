# Dockerized FastAPI Application

## Overview

This project demonstrates how to containerize a FastAPI web application using Docker.

## Project Structure

```
Day-03-FastAPI-Docker/
├── main.py
├── requirements.txt
├── Dockerfile
└── README.md
```

## Build Image

```bash
docker build -t fastapi-demo .
```

## Run Container

```bash
docker run -p 8000:8000 fastapi-demo
```

## API Endpoints

### Home

```
GET /
```

Response

```json
{
  "message": "Hello from Docker!"
}
```

### Health Check

```
GET /health
```

Response

```json
{
  "status": "healthy"
}
```

##sample output

![alt text](<Screenshot (425).png>)

