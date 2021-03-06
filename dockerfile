FROM python:3

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev 


COPY requirements.txt .

RUN pip install -r requirements.txt


COPY httpsrv_Nicholas.py .

EXPOSE 5000

ENTRYPOINT ["python3","httpsrv_Nicholas.py"]

