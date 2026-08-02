# Day 4 - Docker Compose

## Objective

Learn how to run multiple Docker containers using Docker Compose.

---

## Services

### FastAPI

- Backend application
- Built using the local Dockerfile

### PostgreSQL

- Database
- Official PostgreSQL image

### Redis

- Cache
- Official Redis image

---

## Build and Start

```bash
docker compose up
```

---

## Stop Containers

```bash
docker compose down
```

---

## Difference Between Docker and Docker Compose

Docker:

- Runs a single container.
- Uses `docker run`.

Docker Compose:

- Runs multiple containers.
- Uses `docker compose up`.

---

## Architecture

Browser
↓

FastAPI

↓

PostgreSQL

↓

Redis

---

## Benefits

- One command starts the complete application.
- Easy onboarding for developers.
- Same environment for every developer.