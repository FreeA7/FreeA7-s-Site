#！/bin/bash
# Update this site
python3 motify_index.py
scp -r site/* tencentcloud:/root/webserver/staticsites/freea7
