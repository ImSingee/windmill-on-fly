FROM caddy:2-alpine AS caddy

FROM ghcr.io/windmill-labs/windmill:latest

EXPOSE 80
EXPOSE 8000

ENV DENO_PATH /usr/bin/deno
ENV PYTHON_PATH /usr/local/bin/python3

COPY --from=caddy /usr/bin/caddy /usr/bin/caddy
COPY Caddyfile /etc/caddy/Caddyfile

COPY --chmod=+x run.sh /usr/bin/run.sh

ENTRYPOINT ["/usr/bin/run.sh"]
