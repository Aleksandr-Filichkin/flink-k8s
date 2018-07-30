FROM flink
COPY docker-entrypoint-custom.sh /

COPY submit-flink-job.sh /
COPY app.jar /

RUN ["chmod", "+x", "/app.jar"]

RUN ["chmod", "+x", "/submit-flink-job.sh"]
RUN ["chmod", "+x", "/docker-entrypoint-custom.sh"]

ENTRYPOINT ["/docker-entrypoint-custom.sh"]
