FROM python:3.12-slim

WORKDIR /app

RUN pip install --no-cache-dir "mistralai-workflows[mistralai]"

ENV PYTHONUNBUFFERED=1

COPY main.py ./

CMD ["python", "main.py"]
