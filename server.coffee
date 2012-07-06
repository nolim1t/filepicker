connect = require 'connect'
app = connect()
.use(connect.static('public'))
.use(connect.bodyParser())
.use (req, res) ->
  # default route
	console.log req.url
	res.statusCode = 404
	res.end 'Not Found'

app.listen(3000)
