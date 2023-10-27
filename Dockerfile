# Используем базовый образ Python
FROM python:3.8

# Создаем и устанавливаем рабочую директорию
WORKDIR /app

# Копируем зависимости проекта (requirements.txt) в контейнер
COPY myproject/requirements.txt .

# Устанавливаем зависимости проекта
RUN pip install -r requirements.txt

# Копируем все файлы проекта в контейнер
COPY myproject/ .

# Определяем команду для запуска приложения
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
