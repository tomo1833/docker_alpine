# alpine3.11のOS取得
FROM alpine:3.11

# ビルドに必要なソフトウェアをインストール
RUN apk add --update --no-cache php7 php7-fpm

# 実行ディレクトリ
WORKDIR /usr/app/src