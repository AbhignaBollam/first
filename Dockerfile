FROM python:3.8.10
WORKDIR /app
COPY req.txt req.txt
RUN pip install -r req.txt

COPY ./myfirstnn.pickle /app/myfirstnn.pickle
COPY ./src /app/src
CMD ["python","./src/app.py"]