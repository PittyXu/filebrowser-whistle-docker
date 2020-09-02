# filebrowser-whistle-docker

## Filebrowser version
2.6.2

https://github.com/filebrowser/filebrowser

## Whistle version
2.5.17

http://wproxy.org/


## For docker
docker run -d --name whistle --restart=always -p 8899:8899 zlee/whistle

```
docker run \
    -v /path/to/root:/srv \
    -v /path/filebrowser.db:/database.db \
    -v /path/.filebrowser.json:/.filebrowser.json \
    -p 80:80 \
    -p 8899:8899 \
    pittyxu/filebrowser-whistle
```

.filebrowser.json
```
{
  "port": 80,
  "baseURL": "",
  "address": "",
  "log": "stdout",
  "database": "/database.db",
  "root": "/srv"
}
```
