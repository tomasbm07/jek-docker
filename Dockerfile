FROM python:3.11

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "-m", "gunicorn", "app:app", "--workers=2", "--bind=0.0.0.0"]
