FROM python:3.10-slim

WORKDIR /app

# NUEVO: Actualizar los paquetes del sistema operativo para mitigar vulnerabilidades HIGH
RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py ./

EXPOSE 5000

CMD ["python", "app.py"]