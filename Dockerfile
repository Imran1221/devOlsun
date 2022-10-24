FROM ubuntu:16.04

LABEL maintainer="ImranHakan <inf20033@lehre.dhbw-stuttgart.de>"

RUN apt-get update -y 
RUN apt-get install -y python-pip python-dev

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]