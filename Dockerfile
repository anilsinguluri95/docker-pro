FROM python:3.9-slim

LABEL name="anil"

WORKDIR /app

# Install PostgreSQL development package
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    gcc \
    libpq-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY . /app

RUN pip install --no-cache-dir -r HRMS-Server/requirements.txt

CMD ["python", "HRMS-Server/app.py"]

