FROM python:3.11-slim

WORKDIR /app

# Устанавливаем зависимости
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Копируем код бота
COPY . .

# Директория для БД
RUN mkdir -p /app/db

ENV PYTHONUNBUFFERED=1

CMD ["python", "bot.py"]
