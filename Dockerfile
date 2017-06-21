FROM debian:sid

RUN apt-get update                                       \
 && apt-get install -y --no-install-recommends           \
    ca-certificates curl firefox                         \
 && rm -fr /var/lib/apt/lists/*

RUN curl -L https://github.com/mozilla/geckodriver/releases/download/v0.17.0/geckodriver-v0.17.0-linux64.tar.gz | tar xz -C /usr/local/bin

CMD ["geckodriver", "--host", "0.0.0.0"]
