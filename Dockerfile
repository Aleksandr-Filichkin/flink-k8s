FROM flink
COPY docker-entrypoint-custom.sh /

RUN ["chmod", "+x", "/docker-entrypoint-custom.sh"]

ENTRYPOINT ["/docker-entrypoint-custom.sh"]