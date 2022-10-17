FROM ubuntu:20.04

RUN apt-get update -y && apt-get install -y python3-pip python3-dev

COPY ./requirements.txt /app/requirements.txt

WORKDIR /apps

RUN pip install -r requirements.txt

COPY . /apps

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]