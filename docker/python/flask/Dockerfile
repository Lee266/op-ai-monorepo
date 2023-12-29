FROM python:3.10-slim

WORKDIR /usr/src/ai-lab

COPY ./ai-lab/src/app /usr/src/ai-lab/src/app
COPY ./ai-lab/app.py /usr/src/ai-lab/

COPY ./docker/python/flask/requirements.txt requirements.txt

RUN pip install --no-cache-dir --upgrade pip \
    && pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "/usr/src/ai-lab/app.py"]
