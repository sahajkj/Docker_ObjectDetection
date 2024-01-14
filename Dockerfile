FROM python:3.9.12-slim-buster
WORKDIR /code
COPY iWebLens_server.py /code 
COPY ./yolo_tiny_configs /code
COPY requirements.txt /code
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "iWebLens_server.py"]
