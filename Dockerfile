FROM python:3.9

WORKDIR /app

ADD app.py ./app.py

RUN pip install torch flask nltk numpy

COPY . .

CMD ["python", "-m" , "flask" , "run" , "--host=127.0.0.1"]