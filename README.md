# Perl FastCGIスクリプト on Apache httpd + mod_fcgid on CentOS7 on  Docker

Apache httpdとmod_fcgiを使って、PerlのFastCGIスクリプトを動かします。
環境はDocker上のCentOS7です。

## 使い方
### イメージの作成

```bash
$ docker build -t fcgi .
```

### コンテナの起動

```bash
$ docker run --name fcgi -v $(pwd):/usr/local/lib/test_apache_fcgid -p 3000:80 -itd fcgi
```

### コンテナ内で操作

```bash
$ docker exec -it fcgi bash
```

## 静的HTML
↓にアクセスして、`Hello, html!`と表示されること。
http://localhost:3000/hello.html


## コンテナ内からテスト
↓にアクセスして、環境変数の内容がプリントされること。
http://localhost:3000/fcgi-bin/index.fcgi

## 後始末

```bash
$ docker kill fcgi
$ docker rm fcgi
$ docker rmi fcgi
```
