# HTTP/2に対応したウェブサーバーを簡単に構築！ Dockerfileでオリジナルの環境を構築する手順について
https://ics.media/entry/15266/ の写経

をPodman Desktopで試してみる


## イメージの作成
```
# $ docker build -t icsmedia/nginx-http2 .
$ podman build -t icsmedia/nginx-http2 .
```

## イメージの確認
```
# $ docker images
$ podman images

REPOSITORY                            TAG         IMAGE ID      CREATED         SIZE
localhost/icsmedia/nginx-http2        latest      296948579952  55 seconds ago  496 MB
docker.io/ehekatl/docker-nginx-http2  latest      8671a8e43920  8 years ago     496 MB
```

## イメージから起動する
```
# $ docker run -p 80:80 -p 443:443 -d icsmedia/nginx-http2
$ podman run -p 80:80 -p 443:443 -d icsmedia/nginx-http2

948879e53ed82e25e32297f9af06b68f31ddb51ab54450cb938204e52f10eec5
```

## https://localhost/にアクセスし、HTTP/2に対応しているか確認
今回は自己証明書を使用しているため、アクセス時に証明書のエラーが表示されますが、詳細情報を表示し、「localhostにアクセスする（安全ではありません）」のリンクから強制的にアクセスしてください。


