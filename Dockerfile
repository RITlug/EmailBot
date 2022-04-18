FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY bot.py .
COPY keep_alive.py .

RUN [ "touch", "./bot.db"]

CMD [ "python", "./bot.py" ]
