FROM python:3.7.3
WORKDIR /app/logs

RUN pip install awslogs \
  && useradd -m aws



USER aws

ENTRYPOINT [ "awslogs" ]
