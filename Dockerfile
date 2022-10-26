FROM python:3.8-slim-buster

LABEL maintainer="ImranHakan <inf20033@lehre.dhbw-stuttgart.de>"

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]