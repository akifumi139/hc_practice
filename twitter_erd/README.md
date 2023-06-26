# ER図をPDF出力する方法
build
```
docker build . -t erd
```

pdf作成

```
docker run -i erd < twitter.er > out.pdf
```