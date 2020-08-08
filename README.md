# docker_alpine_python

Alpine OS で動作する Python のコンテナです

## 1. Dockerビルドでimage作成

```sh
$ docker build -t img_alp_python .
```

Imageファイルの確認

```sh
$ docker images
```

## 2. Dockerコンテナの作成

ボリュームなし

```sh
$ docker run -itd --name com_alp_python img_alp_python
```

ボリュームあり

```sh
$ docker run -itd --volume {HOST_OS_PATH}:/usr/app/src --name com_alp_python img_alp_python
```
{HOST_OS_PATH}は絶対パスを指定
例) windowsの場合 c:\data1\data2\

コンテナの確認
```sh
$ docker ps
```

または

```sh
$ docker ps -a
```

## 3. Dockerコンテナ実行

コンテナの外側からPythonの実行

```sh
$ docker exec -it com_alp_python python3 main.py
```

コンテナにログイン

```sh
$ docker exec -it com_alp_python sh
```

## 4. Dockerコンテナ起動/停止/再起動

コンテナ起動

```sh
$ docker start com_alp_python
```

コンテナ停止

```sh
$ docker stop com_alp_python
```

コンテナ再起動

```sh
$ docker restart com_alp_python
```

## 5. Dockerコンテナ削除

コンテナ確認

```sh
$ docker ps -a
```

コンテナ削除

```sh
$ docker rm ｛コンテナID｝
```

## 6. Dockerイメージ削除

イメージ確認

```sh
$ docker images
```

イメージ削除

```sh
$ docker rmi ｛イメージID｝
```

