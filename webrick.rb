 # webrick.rb
require 'webrick'

server = WEBrick::HTTPServer.new({ 
  :DocumentRoot => './',
  :BindAddress => '127.0.0.1',
  :Port => 8000
})

# GETを受け取る
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

server.start
