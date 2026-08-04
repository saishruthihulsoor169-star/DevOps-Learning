from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {
        "message": "Hello from FastAPI behind Nginx!"
    }

@app.get("/health")
def health():
    return {
        "status": "healthy"
    }