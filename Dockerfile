# alpine3.11のOS取得
FROM alpine:3.11

# ビルドに必要なソフトウェアをインストール
RUN apk add --update --no-cache python3

# 実行ディレクトリ
WORKDIR /usr/app/src
