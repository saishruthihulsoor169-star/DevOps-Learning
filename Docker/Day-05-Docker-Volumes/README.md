# Docker Volumes

## 🎯 Objective

Learn how Docker Volumes provide persistent storage for containers.

---

## What is a Docker Volume?

A Docker Volume is a storage mechanism managed by Docker that stores data outside the container.

This allows data to remain available even if the container is deleted and recreated.

---

## Why Containers Lose Data

Containers are temporary.

If data is stored only inside the container, deleting the container also deletes the data.

Volumes solve this problem.

---

## Container vs Volume

| Container | Volume |
|-----------|--------|
| Temporary | Persistent |
| Runs applications | Stores data |
| Can be deleted safely | Keeps data after container deletion |

---

## PostgreSQL Example

```yaml
volumes:
  - postgres-data:/var/lib/postgresql/data
```

Everything PostgreSQL stores inside:

```
/var/lib/postgresql/data
```

is actually stored inside the Docker Volume.

---

## Useful Commands

Create Volume

```bash
docker volume create postgres-data
```

List Volumes

```bash
docker volume ls
```

Inspect Volume

```bash
docker volume inspect postgres-data
```

Remove Volume

```bash
docker volume rm postgres-data
```

---

## Real-World Uses

- PostgreSQL databases
- MySQL databases
- Redis persistence
- Application logs
- Uploaded files
- User data