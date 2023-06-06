FROM python:2.7.14

WORKDIR /app

COPY . /app

RUN apt install zlib1g-dev libjpeg-dev libpng-dev -y
RUN pip install -r requirements.txt

CMD ["./ares.py", "initdb"]
