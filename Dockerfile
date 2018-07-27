FROM flink
COPY docker-entrypoint-custom.sh /

COPY k8s.sh /
COPY submit-job.sh /

RUN ["chmod", "+x", "/submit-job.sh"]

RUN ["chmod", "+x", "/k8s.sh"]
RUN ["chmod", "+x", "/docker-entrypoint-custom.sh"]

ENTRYPOINT ["/docker-entrypoint-custom.sh"]