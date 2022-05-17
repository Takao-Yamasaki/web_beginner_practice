# Webサーバを立ち上げてWebの仕組みを知る（静的ページ編）
## 1. 環境構築
- webrickの動作確認をしようとしたところ、次のようなエラー。
- 調べると、WEBrickは、Ruby3.0で標準ライブラリから削除されたとのこと。
- rubygemsから利用する必要がある。
```
❯ ruby webrick.rb
<internal:/Users/takao.yamasaki/.rbenv/versions/3.1.1/lib/ruby/3.1.0/rubygems/core_ext/kernel_require.rb>:85:in `require': cannot load such file -- webrick (LoadError)
from <internal:/Users/takao.yamasaki/.rbenv/versions/3.1.1/lib/ruby/3.1.0/rubygems/core_ext/kernel_require.rb>:85:in `require'
from webrick.rb:2:in `<main>'
```
- GemFileを作成
```
bundle init
Writing new Gemfile to /Users/takao.yamasaki/Documents/web_beginner_practice/Gemfile
```
- bundleを実行
```
bundle
Fetching gem metadata from https://rubygems.org/.
Resolving dependencies...
Using bundler 2.3.7
Fetching webrick 1.7.0
Installing webrick 1.7.0
Bundle complete! 1 Gemfile dependency, 2 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
```
### 参考
- [library webrick](https://docs.ruby-lang.org/ja/latest/library/webrick.html)
## 2. WEBrickを使ってWebサーバを作ってください。

## 課題1
- http://localhost:8000 にアクセスした際に以下の画面が表示されることを確認する
[![Image from Gyazo](https://i.gyazo.com/18934746c82fa1d58e2022b8bb7a57cc.png)](https://gyazo.com/18934746c82fa1d58e2022b8bb7a57cc)

## 課題2
- 静的なファイルindex.htmlを作成し、http://localhost:8000/ にアクセスした際に以下の画面が表示されることを確認する
[![Image from Gyazo](https://i.gyazo.com/8620bca774b83ff3231e84b6361f14ba.png)](https://gyazo.com/8620bca774b83ff3231e84b6361f14ba)

## 課題3
- 同様に http://localhost:8000/users にアクセスした際に以下の画面が表示されることを確認する。各人物の名前をクリックするとそれぞれの詳細ページに遷移する。（= 詳細ページを表示するためのリクエストを送る）
- 一覧ページ
[![Image from Gyazo](https://i.gyazo.com/19abb1996896d646e79879a65b617987.png)](https://gyazo.com/19abb1996896d646e79879a65b617987)
- 太郎（詳細ページ）
[![Image from Gyazo](https://i.gyazo.com/12ec811e5c604ff07fe9bbcc2729cd5d.png)](https://gyazo.com/12ec811e5c604ff07fe9bbcc2729cd5d)
- 次郎（詳細ページ）
[![Image from Gyazo](https://i.gyazo.com/a21a2418013c68591ad2e0697368ec60.png)](https://gyazo.com/a21a2418013c68591ad2e0697368ec60)
- 三郎（詳細ページ）
[![Image from Gyazo](https://i.gyazo.com/503387d39533a98b407836b6dae40a40.png)](https://gyazo.com/503387d39533a98b407836b6dae40a40)