FROM python:3.7.5-slim

COPY ./requirements.txt /app/requirements.txt

RUN pip install "importlib_metadata==1.5.2" 

WORKDIR /app


RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]