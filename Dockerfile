FROM python:3.8

# ENV FLASK_APP=app
LABEL version="0.1.0" author="Ruslan"

WORKDIR server
COPY . /server
RUN pip install -r requirements.txt


# CMD flask run -h 0.0.0.0 -p 8080
CMD ["python3", "server.py"]