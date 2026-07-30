# Day 3 - Dockerfile

## Objective

Learn how to build a custom Docker image using a Dockerfile.

---

## Project Structure

```
Day-03-Dockerfile/
│
├── app.py
├── requirements.txt
├── Dockerfile
└── README.md
```

---

## Dockerfile Instructions

### FROM

```dockerfile
FROM python:3.12
```

Uses the official Python 3.12 image as the base.

---

### WORKDIR

```dockerfile
WORKDIR /app
```

Creates and switches to the `/app` directory inside the container.

---

### COPY

```dockerfile
COPY . .
```

Copies all project files into the container.

---

### RUN

```dockerfile
RUN pip install -r requirements.txt
```

Installs project dependencies while building the image.

---

### CMD

```dockerfile
CMD ["python", "app.py"]
```

Runs the application when the container starts.

---

## Build the Image

```bash
docker build -t my-python-app .
```

---

## Run the Container

```bash
docker run my-python-app
```

Expected Output:

```
Hello from Docker!
```