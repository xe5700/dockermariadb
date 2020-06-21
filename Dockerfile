FROM mariadb:10.4

RUN apt-get update && \
    apt-get install -y mariadb-plugin-tokudb

ENV LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libjemalloc.so.1

EXPOSE 3306
CMD ["mysqld"]