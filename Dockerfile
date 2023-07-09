# docker compose up --build --force-recreate

FROM debian:stable-slim
RUN apt-get update -y && \
    apt-get -y --no-install-recommends install pandoc && \
    apt-get clean && \
    rm -f /var/lib/apt/lists/*_*;
WORKDIR /public
COPY . /public
RUN ./gen.sh

FROM pierrezemb/gostatic
COPY --from=0 /public/ /srv/http/