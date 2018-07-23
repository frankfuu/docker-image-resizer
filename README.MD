Building
```
docker build -t flankieflew:a2v2 .
```

Running
```
docker run -Pd \
-e DEFAULT_SOURCE="generic-web" \
-e GENERIC_WEB_URL="https://myaccount.blob.core.windows.net" \
-e NODE_ENV="development" \
flankieflew:a2v2
```
