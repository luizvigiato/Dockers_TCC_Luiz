# Use the official PostgreSQL image as the base image
FROM postgres:14

# Environment variables
# -------------------
ENV PG_SENTINEL_SOURCE=https://github.com/pgsentinel/pgsentinel

# Install PostgreSQL extensions
RUN apt-get update


RUN apt-get install make git gcc postgresql-server-dev-14 libpq-dev libical-dev -y

RUN rm pgsentinel -rf

RUN git clone https://github.com/pgsentinel/pgsentinel.git \
    && cd pgsentinel/src \
    && make \
    && make install

# Expose the PostgreSQL port
