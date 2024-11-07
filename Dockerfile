FROM  alpine:3.8

COPY app.py test.py /app/

WORKDIR /app

RUN pip install flask pytest flake8

EXPOSE 5000

CMD ["python", "app.py"]

