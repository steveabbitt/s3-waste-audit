# s3-waste-audit

A simple tool that pulls a list of all the S3 buckets in your AWS account and parses the data into a handy little list that can help you identify old, unused and data-heavy buckets. 

Output example:
```
Bucket Name: charlie-bucket
Creation Date: 2018-06-21
Total Objects: 56276
Total Size: 4.7 GiB
Newest Object: 2020-10-22 got/the/goldenTicket.txt
```

## Requirements

aws-cli fully configured and working. https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html

## Current caveats

It's currently not pretty. Or efficient. I had to get a job done and it is what it is right now. It ~~may~~ will take a long time to run on buckets with tons of objects. These things will all be fine-tuned soon.
