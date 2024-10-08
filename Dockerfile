FROM python:3.11-slim-buster

WORKDIR /miniproj

COPY requirements.txt .

RUN pip install -r requirements.txt 

COPY ./app ./app 

CMD ["python", "./app/app.py"]