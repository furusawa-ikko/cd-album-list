FROM python:3.10

COPY . /opt/cdli
WORKDIR /opt/cdli

RUN apt update
ENV FLASK_APP app.py

EXPOSE 8000
CMD ["flask", "run", "-h", "0.0.0.0", "-p", "8000"]