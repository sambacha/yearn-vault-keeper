ARG VERSION=1.1.0
FROM python:3.6-slim

# Set up code directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install linux dependencies
RUN apt-get update && apt-get install -y libssl-dev -qq

COPY . ./ 

RUN pip install --no-cache -r requirements.txt

WORKDIR /usr/src/app


#CMD ["scripts/vault_keeper.py"]

ENTRYPOINT ["vault_keeper.py"]
CMD ["python vault_keeper.py"]
ARG $VERSION
