# Docker Volume Notes

## Key Points

- Containers are temporary.
- Volumes provide persistent storage.
- Data survives container recreation.
- Databases should always use volumes.
- Docker manages volumes automatically.

---

## Important Commands

docker volume create

docker volume ls

docker volume inspect

docker volume rm

---

## Interview Questions

### What is a Docker Volume?

Persistent storage managed by Docker.

### Why use Volumes?

To preserve application data even when containers are removed.

### What does `-v` do?

Mounts a volume or directory into a container.