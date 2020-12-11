#! /bin/bash

BUCKETS=$(aws s3 ls | awk '{ print $3 }' | sort | tr '\n' ' ')

for bucket in $BUCKETS; do
    echo "Bucket Name: $bucket"
    echo "Creation Date: $(aws s3 ls | grep $bucket | tail -n 1 | awk '{ print $1 }')"
    echo "$(aws s3 ls --summarize --human-readable --recursive $bucket | grep -E -- 'Total Objects|Total Size' | awk '{$1=$1};1')"
    echo "Newest Object: $(aws s3 ls --recursive $bucket | sort | tail -n 1 | awk '{print $1 " " $4}')"
    echo
done