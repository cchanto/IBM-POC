FROM python:3.8-slim-buster
RUN apt-get update -y

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . /app

EXPOSE 8080
ENTRYPOINT ["python"]

CMD ["__init__.py"]
