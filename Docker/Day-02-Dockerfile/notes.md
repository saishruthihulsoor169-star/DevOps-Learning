# Dockerfile Notes

## Dockerfile

A Dockerfile is a text file containing instructions for Docker to build an image.

---

## Common Instructions

### FROM
Specifies the base image.

### WORKDIR
Sets the working directory.

### COPY
Copies files into the image.

### RUN
Executes commands during image build.

### CMD
Specifies the default command when the container starts.

---

## RUN vs CMD

RUN:
- Executes while building the image
- Used for installing software

CMD:
- Executes when the container starts
- Used to start the application