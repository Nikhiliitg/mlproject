FROM python:3.12.4-slim-bookworm
WORKDIR /app
COPY . /app

RUN apt update -y && apt install awscli -y

RUN pip install -r requirment.txt
CMD [ "python3","app.py" ]