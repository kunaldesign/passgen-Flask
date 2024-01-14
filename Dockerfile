FROM python:3.8.18-slim

RUN pip install --upgrade pip
RUN pip install gunicorn


WORKDIR /app
COPY . /app

RUN python -m pip install -r requirements.txt

EXPOSE 5000

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]