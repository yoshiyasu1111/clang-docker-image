# clang-docker-image

[docker hub](https://hub.docker.com/r/yoshiyasu1111/clang)

# build

```bash
$ docker buildx build . -t yoshiyasu1111/clang:v15.0.6
```

# ビルド時間

下のスペックでのビルド時間は約40分でした

- CPU ： i7-8700
- Memory ： 16GB（DDR4 8GB 2133MT/s ✕2）

# push

```bash
$ docker push yoshiyasu1111/clang:v15.0.6
```
