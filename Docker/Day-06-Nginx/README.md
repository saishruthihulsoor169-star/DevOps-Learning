# Day 6 - Nginx Reverse Proxy

## Objective

Learn how Nginx works as a reverse proxy in front of a FastAPI application.

---

## Architecture

Browser

↓

Nginx

↓

FastAPI

↓

PostgreSQL

↓

Docker Volume

---

## Why Not Expose FastAPI Directly?

- Better security
- Load balancing
- SSL termination
- Static file serving
- Improved performance

---

## Reverse Proxy

Nginx receives requests from users and forwards them to the FastAPI application using:

```nginx
proxy_pass http://app:8000;
```

The service name `app` comes from Docker Compose networking.

---

## Start Application

```bash
docker compose up --build
```

---

## Stop Application

```bash
docker compose down
```

##sample output

![alt text](<Screenshot (428).png>)
![alt text](<Screenshot (427).png>)