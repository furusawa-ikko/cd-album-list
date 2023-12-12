FROM python:3.10

COPY . /opt/cdli
WORKDIR /opt/cdli




EXPOSE 8000
CMD ["run", "-h", "0.0.0.0", "-p", "8000"]