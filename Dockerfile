FROM python:3.8-slim-buster

EXPOSE 5000

LABEL maintainer="ImranHakan <inf20033@lehre.dhbw-stuttgart.de>"

COPY . /app

WORKDIR /app

RUN pip3 install -r requirements.txt

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]