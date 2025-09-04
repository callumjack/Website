ARG UMAMI_VERSION=mysql-v2.15.1
FROM docker.umami.is/umami-software/umami:$UMAMI_VERSION as umami

FROM uselagoon/node-18:latest

COPY --from=umami /app /app
COPY lagoon/entrypoints/10-environment.sh /lagoon/entrypoints/10-environment.sh
#COPY package.json /app/package.json


# Install OpenSSL and required dependencies
RUN apk upgrade --update-cache --available && \
    apk add openssl && \
    rm -rf /var/cache/apk/*

EXPOSE 3000

ENV HOSTNAME 0.0.0.0
ENV PORT 3000

CMD ["yarn", "start-docker"]

