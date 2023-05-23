RUN apk update

RUN apk add bash

RUN apk add git

ENV REPO=https://github.com/villazon/ds-2023

ADD git-clone.sh /app/

WORKDIR /app

ENTRYPOINT ["sh", "/app/git-clone.sh"]



