FROM python:3.10

WORKDIR /app

COPY index.html /app

EXPOSE 5000

CMD ["python", "-m", "http.server", "5000"]
