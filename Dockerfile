FROM python:3.10

COPY . /opt/cdli
WORKDIR /opt/cdli

RUN init


EXPOSE 8000
CMD ["python", "manage.py" "runserver", "0.0.0.0", "8000"]