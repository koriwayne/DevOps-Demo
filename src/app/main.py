from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello from Docker!"}

@app.get("/health")
async def health():
    return {"status": "healthy"} 