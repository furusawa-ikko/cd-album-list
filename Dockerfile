FROM python:3.10

COPY . /opt/cdli
WORKDIR /opt/cdli

RUN pip install -r requirements.txt
ENV FLASK_APP app.py

EXPOSE 8000
CMD ["run", "8000", "-ti", "-p"]