#!/bin/sh

# run flink job
exec flink run /app.jar > /app.out &

exit 0
