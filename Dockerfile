FROM python:3.10 

COPY . /opt/cdli
WORKDIR /opt/cdli 

RUN apt-get update


EXPOSE 8000 
CMD ["python", "manage.py", "run", "-h", "0.0.0.0", "-p", "8000"]
