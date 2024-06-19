# syntax docker dockerfile:1

FROM python:3

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Define o diretório de trabalho dentro do contêiner
WORKDIR /clientes-leo-api

# Copia os arquivos de requisitos primeiro para tirar proveito do cache do Docker
COPY requirements.txt /clientes-leo-api

# Lista os arquivos no diretório de trabalho para depuração
RUN ls -la /clientes-leo-api/
RUN cat /clientes-leo-api/requirements.txt

RUN pip install -r /clientes-leo-api/requirements.txt

COPY . /clientes-leo-api/cp-docker/

# Exibe a estrutura de diretórios para depuração
RUN ls -la /clientes-leo-api/cp-docker/

# Corrige o comando sed para evitar erros com o caractere '*'
RUN sed -i "s/ALLOWED_HOSTS = \[\]/ALLOWED_HOSTS = \['\*'\]/" /clientes-leo-api/cp-docker/setup/settings.py

# RUN sed -i "s/ALLOWED_HOSTS = \[\]/ALLOWED_HOSTS = \['\*'\]/" /clientes-leo-api/setup/settings.py

RUN python /clientes-leo-api/cp-docker/manage.py migrate

RUN python /clientes-leo-api/cp-docker/manage.py loaddata clientes.json

ENTRYPOINT python manage.py runserver 0.0.0.0:8008

EXPOSE 8008
