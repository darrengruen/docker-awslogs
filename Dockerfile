FROM python:3.7.3

WORKDIR /app/logs

CMD ["--help"]
ENTRYPOINT [ "awslogs" ]

RUN pip install awslogs==0.11.0 \
  && useradd -m aws

USER aws

