# Rubyの実行環境
 Rubyのバージョンは、Dockerfileをご確認ください。

## イメージの準備
```
docker build . -t ruby
```

## rubyファイルの実行
xxx.rbは、実行したいファイル名に適宜変更してお使いください。
```
docker run -it --rm -v .:/src ruby xxx.rb 
```