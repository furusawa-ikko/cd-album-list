FROM python:3.10 

COPY . /opt/kinotake 
WORKDIR /opt/kinotake 

RUN pip install -r requirements.txt 
ENV FLASK_APP app.py 

EXPOSE 8000 
CMD ["flask", "run", "-h", "0.0.0.0", "-p", "8000"]
