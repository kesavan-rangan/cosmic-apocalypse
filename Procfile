release: chmod +x bootstrap.sh && bash bootstrap.sh
web: gunicorn -w 4 -k uvicorn.workers.UvicornWorker cosmic-api.app:app
