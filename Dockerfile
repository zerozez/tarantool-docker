FROM alpine:3.1

# Install all deps, tarantool and tarantool postgres connector from live 
RUN apk add --update --no-cache git cmake g++ make readline libstdc++ readline \
    libgomp binutils-libs readline-dev perl postgresql-dev && \
    git clone https://github.com/tarantool/tarantool.git /tarantool && \
    git clone https://github.com/tarantool/pg.git /tarantool-pq && \
    cd /tarantool && git submodule update --init --recursive && \
    cmake -DCMAKE_BUILD_TYPE=Release . && make && make install && \
    cd /tarantool-pq && git submodule update --init --recursive && \
    cmake -DCMAKE_BUILD_TYPE=Release . && make && make install && \
    apk del git cmake make perl postgresql-dev libxml2-dev python-dev \
    openssl-dev zlib-dev readline-dev libc-dev musl-dev gcc g++ python-doc \
    python-tests py-gdbm zlib-doc readline-dev musl-dbg musl-dev && \
    rm /var/cache/apk/* && rm -rf /tarantool*

EXPOSE 3301

COPY ["./run.sh", "/run.sh"]

ENTRYPOINT ["/run.sh"]
