FROM joyzoursky/python-chromedriver:3.6

RUN pip install docker-compose
RUN apt-get update && apt-get install -y git
RUN pip install tox

RUN mkdir -p /app

COPY . /app
WORKDIR /app




