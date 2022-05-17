# Webサーバを立ち上げてWebの仕組みを知る（フォーム編）
## 課題1
- http://localhost:8000/fom.html で以下の画面が表示されるようにしてください。
  [![Image from Gyazo](https://i.gyazo.com/828f58dbcb5b21497e1cab4e2047f4dc.png)](https://gyazo.com/828f58dbcb5b21497e1cab4e2047f4dc)
## 課題2
- GETでのリクエスト時
  - ユーザーからの入力値をサーバ側で受け取りそれを用いてユーザーにレスポンスを返す。
  [![Image from Gyazo](https://i.gyazo.com/fc42e5c29f33e6b65dcd924603f3fa86.png)](https://gyazo.com/fc42e5c29f33e6b65dcd924603f3fa86)

- POSTでのリクエスト時
  - ユーザーからの入力値をサーバ側で受け取りそれを用いてユーザーにレスポンスを返す。
  [![Image from Gyazo](https://i.gyazo.com/6fca51e755feea949e93e65360bb0573.png)](https://gyazo.com/6fca51e755feea949e93e65360bb0573)

  - GETのように`mount_proc`を使って記述すると、ブラウザに以下のようなエラーが表示された。
  ```
  unsupported method `POST'.
  ```
  - 以下の参考記事を調べたところ、`WEBrick::HTTPServlet::AbstractServlet`を継承したクラスを作成して、`do_POST(request, response)`というインスタンスメソッドを使用しないといけないよう。
## 参考
- [class WEBrick::HTTPServlet::AbstractServlet](https://docs.ruby-lang.org/ja/latest/class/WEBrick=3a=3aHTTPServlet=3a=3aAbstractServlet.html)
- [WEBrickでPOST送信を定義](http://tessai99.livedoor.blog/archives/18521746.html)
- [WEBrickでPOSTが動かない](https://plaza.rakuten.co.jp/papi2y/diary/201006060000/)
