FROM mongo

COPY ./services/db/mongo/scripts /home/mongodb/scripts

COPY ./secrets/mongo/ /home/mongodb/ssl

COPY ./services/db/mongo/mongod.conf /home/mongodb

RUN apt-get update && apt-get install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt-get update

RUN apt-get install python3.9 -y

WORKDIR /home/mongodb

RUN ["chmod", "+x", "-R", "/home/mongodb/scripts/"]

CMD ["/home/mongodb/scripts/run.sh"]
