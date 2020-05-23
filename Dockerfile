# alpine3.11のOS取得
FROM alpine:3.11

# ビルドに必要なソフトウェアをインストール
RUN apt-get update && \
    apt-get install -y python3

# 実行ディレクトリ
WORKDIR /usr/app/src
