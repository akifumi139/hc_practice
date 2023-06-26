# REST APIとは
主にHTTPプロトコルを利用したサーバー・クライアント間の通信するためのインターフェース（API）である。

URIで提供するリソースを表現し、HTTPメソッドを使いそのリソースに対する操作を指定できる。

REST APIで使用されるHTTPメソッドは、GET（取得）・POST（登録）・PUT（更新）・DELETE（削除）である。

# リソースの定義（movieの場合）

|  URI  |  HTTP method  |　説明　|
| ----  | ---- | ---- |
|  /movies  |  GET  |  映画の一覧情報を取得  |
|  /movies/{id}  |  GET  |  特定の映画情報を取得  |
|  /movies  |  POST  | 映画情報を追加  |
|  /movies/{id}  |  PUT  |  特定の映画情報を更新　<br>IDが事前に決まっている場合は、映画情報の作成  |
|  /movies/{id}  |  WIP  |  特定の映画情報を削除  |