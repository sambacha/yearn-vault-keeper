ARG VERSION=1.1.0
FROM python:3.6

# Set up code directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install linux dependencies
RUN apt-get update && apt-get install -y libssl-dev -qq

RUN apt-get update && apt-get install -y -qq

#RUN npm install -g ganache-cli

COPY . ./ 

RUN pip install -r requirements.txt

WORKDIR /usr/src/app
ARG $VERSION

CMD ["scripts/vault_keeper.py"]
