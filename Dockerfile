FROM debian:sid-slim

RUN apt-get update                             \
 && apt-get install -y --no-install-recommends \
    ca-certificates curl firefox               \
 && rm -fr /var/lib/apt/lists/*                \
 && curl -L https://github.com/mozilla/geckodriver/releases/download/v0.25.0/geckodriver-v0.25.0-linux64.tar.gz | tar xz -C /usr/local/bin \
 && apt-get purge -y ca-certificates curl

CMD ["geckodriver", "--host", "0.0.0.0"]
