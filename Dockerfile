FROM python:3.7-stretch

RUN apt-get update && apt-get install -y libpq-dev gcc #libpq postgresql-dev postgresql

COPY . /reinas
WORKDIR /reinas
RUN pip install -r requirements.txt
#CMD python reinas/queens.py 8
CMD pytest -q test/tests.py --numero 8
EXPOSE 5000
