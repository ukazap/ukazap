FROM debian:stable-slim
WORKDIR /public
COPY . /public
RUN ./gen.sh

FROM pierrezemb/gostatic
COPY --from=0 /public/ /srv/http/