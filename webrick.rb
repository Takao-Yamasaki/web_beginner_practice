 # webrick.rb
require 'webrick'

# POSTで送る
class ServletAction < WEBrick::HTTPServlet::AbstractServlet
  def do_POST(req, res)
    q = req.query
    res.body = <<~"HTML"
      <html>
        <head>
          <meta charset="utf-8">
          <title>POST</title>
        </head>
        <body>
          <p>フォームデータは#{q}です。</p>
          <p>こんにちは#{q['user_name']}さん。あなたの年齢は#{q['user_age']}ですね。</p>
        </body>
      </html>
    HTML
    res.status = 200
    res['Content-Type'] = 'text/html'
  end
end

# HTTPServerを定義
server = WEBrick::HTTPServer.new({ 
  :DocumentRoot => './',
  :BindAddress => '127.0.0.1',
  :Port => 8000
})

# GETで送る
server.mount_proc("/form_get") do |req, res|
  q = req.query
  body = <<~"HTML"
    <html>
      <head>
        <meta charset="utf-8">
        <title>GET</title>
      </head>
      <body>
        <p>クエリパラメータは#{q}です。</p>
        <p>こんにちは#{q['user_name']}さん。あなたの年齢は#{q['user_age']}ですね。</p>
      </body>
    </html>
  HTML

  res.status = 200
  res['Content-Type'] = 'text/html'
  res.body = body
end

# POSTで送る
server.mount("/form_post", ServletAction)

server.start
