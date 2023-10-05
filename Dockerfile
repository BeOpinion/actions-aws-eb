FROM python:3.11.6-bookworm

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip install awsebcli --no-build-isolation cryptography==3.3.1

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
