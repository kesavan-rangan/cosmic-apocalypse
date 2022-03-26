from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/user")
async def say_user(user: str = ""):
    if not user:
        return {"message": "name not specified"}
    else:
        return {"message": f"Hi {user}!!!"}
