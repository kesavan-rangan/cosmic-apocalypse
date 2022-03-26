FROM python:3.9-slim
WORKDIR /cosmic-api
COPY requirements.txt requirements.txt
COPY . .
RUN pip install --no-cache-dir --upgrade -r requirements.txt
#RUN chmod +x /cosmic-api/bootstrap.sh && /cosmic-api/bootstrap.sh
CMD ["uvicorn", "cosmic-api.app:app", "--host", "0.0.0.0", "--port", "8000"]
EXPOSE 8000
