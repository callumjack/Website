#!/bin/sh

echo " ==> Setting Umami database URL"

# Check required environment variables
for var in DB_USERNAME DB_PASSWORD DB_HOST DB_PORT DB_DATABASE; do
    if [ -z "$(eval echo \$$var)" ]; then
        echo "Error: Required environment variable $var is not set"
        exit 1
    fi
done

export DATABASE_URL="mysql://${DB_USERNAME}:${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_DATABASE}"
echo "OK!"

echo " ==> Setting HASH_SALT"
if [ -z "${HASH_SALT}" ]; then
    export HASH_SALT=$(openssl rand -base64 32)
else
    echo "Using existing HASH_SALT"
fi
echo "OK!"

