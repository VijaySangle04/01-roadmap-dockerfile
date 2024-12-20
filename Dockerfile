FROM python:alpine3.11
WORKDIR /app 
COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt
EXPOSE 5000
COPY . /app
CMD python ./launch.py