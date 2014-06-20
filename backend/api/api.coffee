port = 9004
sid = 'bwPxKUPqWMoCTWQoolBnXdSkYnxudrYuQyTUQcKIBEMSjxBsHN'

express = require 'express'
bodyParser = require 'body-parser'
http = require 'http'
app = do express

app.use do bodyParser.json
app.use (req, res, next) ->
	oldWhrite = res.write
	oldEnd = res.end
	chunks = []
	res.whrite = (chunk) ->
		chunks.push chunk
		oldWhrite.apply res, arguments
	res.end = (chunk) ->
		if chunk then chunks.push chunk
		body = Buffer.concat chunks
		.toString('utf8')
		console.log '_______________________________________________________'
		console.log 'REQUEST'
		console.log ''
		console.log '%s %s %s', req.method, req.url, JSON.stringify req.body
		console.log ''
		console.log 'RESPONSE'
		console.log ''
		console.log '%s', body
		console.log '_______________________________________________________'
		oldEnd.apply res, arguments
	do next

app.all '*', (req, res, next) ->
	res.header 'access-control-allow-origin', req.headers.origin
	res.header 'access-control-allow-methods', 'get, post, PUT, patch, delete, options'
	res.header 'access-control-allow-credentials', false
	res.header 'access-control-allow-headers', 'X-Requested-With, x-http-method-override, content-type, accept, x-sid'
	do next

app.options '*', (req, res) ->
	res.send 200

app.route '/addresses'
.get (req, res) ->
	options =
		host: '192.168.1.101'
		path: '/cgi-bin/b2e?request=<query><command>get</command><object>hall_addresses</object><sid>' + sid + '</sid></query>'
		method: 'GET'
	mbreq = http.get options, (mbres) ->
		mbres.setEncoding 'utf8'
		mbres.on 'data', (chunk) ->
			res.send [JSON.parse(chunk).results[0]]
	do mbreq.end
.post (req, res) ->
	options =
		host: '192.168.1.101'
		path: '/cgi-bin/b2e?request=<query><command>new</command><object>hall_addresses</object><addr>' + req.body.text + '</addr><sid>' + sid + '</sid></query>'
		method: 'GET'
	mbreq = http.get options, (mbres) ->
		mbres.setEncoding 'utf8'
		mbres.on 'data', (chunk) ->
			res.send JSON.parse(chunk).results[0]
	do mbreq.end

app.route '/addresses/:addressid'
.get (req, res) ->
	options =
		host: '192.168.1.101'
		path: '/cgi-bin/b2e?request=<query><command>get</command><object>hall_addresses</object><where>ADDR_ID=' + req.params.addressid + '</where><sid>' + sid + '</sid></query>'
		method: 'GET'
	mbreq = http.get options, (mbres) ->
		mbres.setEncoding 'utf8'
		mbres.on 'data', (chunk) ->
			res.send JSON.parse(chunk).results[0]
	do mbreq.end
.put (req, res) ->
	options =
		host: '192.168.1.101'
		path: '/cgi-bin/b2e?request=<query><command>modify</command><object>hall_addresses</object><addr_id>' + req.params.addressid + '</addr_id><addr>' + req.body.addr + '</addr><objversion>' + req.body.objversion + '</objversion><sid>' + sid + '</sid></query>'
		method: 'GET'
	mbreq = http.get options, (mbres) ->
		console.log mbres.headers
		mbres.setEncoding 'utf8'
		mbres.on 'data', (chunk) ->
			res.send JSON.parse(chunk).results[0]
	do mbreq.end
.delete (req, res) ->
	options =
		host: '192.168.1.101'
		path: '/cgi-bin/b2e?request=<query><command>remove</command><object>hall_addresses</object><addr_id>' + req.params.addressid + '</addr_id><objversion>' + req.query.objversion + '</objversion><sid>' + sid + '</sid></query>'
		method: 'GET'
	mbreq = http.get options, (mbres) ->
		mbres.setEncoding 'utf8'
		mbres.on 'data', (chunk) ->
			res.send JSON.parse(chunk).results[0]
	do mbreq.end

server = app.listen port, ->
	console.log 'Listening on port ' + port













# app.get '/addresses', (req, res) ->
# 	options =
# 		host: '192.168.1.101'
# 		path: '/cgi-bin/b2e?request=<query><command>get</command><object>hall_addresses</object><sid>' + sid + '</sid></query>'
# 		method: 'GET'
# 	mbreq = http.get options, (mbres) ->
# 		mbres.setEncoding 'utf8'
# 		mbres.on 'data', (chunk) ->
# 			res.send chunk
# 	do mbreq.end

# app.get '/addresses/:addressid', (req, res) ->
# 	options =
# 		host: '192.168.1.101'
# 		path: '/cgi-bin/b2e?request=<query><command>get</command><object>hall_addresses</object><sid>' + sid + '</sid><where>ADDR_ID=' + req.params.addressid + '</where></query>'
# 		method: 'GET'
# 	mbreq = http.get options, (mbres) ->
# 		mbres.setEncoding 'utf8'
# 		mbres.on 'data', (chunk) ->
# 			res.send chunk
# 	do mbreq.end

# app.post '/addresses', (req, res) ->
# 	res.on 'data', (chunk) ->
# 		console.log chunk.text



















# port = 9004
# sid = 'bwPxKUPqWMoCTWQoolBnXdSkYnxudrYuQyTUQcKIBEMSjxBsHN'

# router = express.Router caseSensitive: no, strict: yes
# router.use (req, res, next) ->
# 	console.log '%s %s %s', req.method, req.url, req.body
# router.all '*', (req, res, next) ->
# 	res.header 'Access-Control-Allow-Origin', req.headers.origin
# 	res.header 'Access-Control-Allow-Methods', 'GET, POST, PUT, PATCH, DELETE, OPTIONS'
# 	res.header 'Access-Control-Allow-Credentials', false
# 	res.header 'Access-Control-Allow-Headers', 'X-Requested-With, X-HTTP-Method-Override, Content-Type, Accept'
# 	do next
# router.options '*', (req, res, next) ->
# 	res.send 200
# router.route '/addresses'
# .get (req, res, next) ->
# 	options =
# 		host: '192.168.1.101'
# 		path: '/cgi-bin/b2e?request=<query><command>get</command><object>hall_addresses</object><sid>' + sid + '</sid></query>'
# 		method: 'GET'
# 	console.log options
# 	mbreq = http.get options, (mbres) ->
# 		mbres.setEncoding 'utf8'
# 		console.log mbres
# 		mbres.on 'data', (chunk) ->
# 			console.log chunk
# 			res.send chunk
# 	do mbreq.end
# app.use '/api', router
# app.listen port, ->
# 	console.log 'Listening on port ' + port

# app.get '/addresses', (req, res) ->
# 	options =
# 		host: '192.168.1.101'
# 		path: '/cgi-bin/b2e?request=<query><command>get</command><object>hall_addresses</object><sid>' + sid + '</sid></query>'
# 		method: 'GET'
# 	mbreq = http.get options, (mbres) ->
# 		mbres.setEncoding 'utf8'
# 		mbres.on 'data', (chunk) ->
# 			res.send chunk
# 	do mbreq.end


# app = do express



# app.use do bodyParser.json
# app.use (req, res, next) ->
# 	console.log '%s %s %s', req.method, req.url, JSON.stringify req.body
# 	do next

# router = do express.Router
# router.use (req, res, next) ->
# 	console.log '%s %s %s', req.method, req.url, JSON.stringify req.body
# 	do next
# router.get

# app.use '/api', router





# app.all '*', (req, res, next) ->
# 	res.header 'Access-Control-Allow-Origin', req.headers.origin
# 	res.header 'Access-Control-Allow-Methods', 'GET, POST, PUT, PATCH, DELETE, OPTIONS'
# 	res.header 'Access-Control-Allow-Credentials', false
# 	res.header 'Access-Control-Allow-Headers', 'X-Requested-With, X-HTTP-Method-Override, Content-Type, Accept'
# 	do next

# app.options '*', (req, res) ->
# 	res.send 200

# app.get '/addresses', (req, res) ->
# 	options =
# 		host: '192.168.1.101'
# 		path: '/cgi-bin/b2e?request=<query><command>get</command><object>hall_addresses</object><sid>' + sid + '</sid></query>'
# 		method: 'GET'
# 	mbreq = http.get options, (mbres) ->
# 		mbres.setEncoding 'utf8'
# 		mbres.on 'data', (chunk) ->
# 			res.send chunk
# 	do mbreq.end

# app.get '/addresses/:addressid', (req, res) ->
# 	options =
# 		host: '192.168.1.101'
# 		path: '/cgi-bin/b2e?request=<query><command>get</command><object>hall_addresses</object><sid>' + sid + '</sid><where>ADDR_ID=' + req.params.addressid + '</where></query>'
# 		method: 'GET'
# 	mbreq = http.get options, (mbres) ->
# 		mbres.setEncoding 'utf8'
# 		mbres.on 'data', (chunk) ->
# 			res.send chunk
# 	do mbreq.end

# app.post '/addresses', (req, res) ->
# 	res.on 'data', (chunk) ->
# 		console.log chunk.text

# server = app.listen 9004, ->
# 	console.log 'Listening on port 9004'

# var http = require('http');
# http.createServer(function (req, res) {
#   res.writeHead(200, {'Content-Type': 'text/plain'});
#   res.end('Hello World\n');
# }).listen(1337, '127.0.0.1');
# console.log('Server running at http://127.0.0.1:1337/');
# app.get '/addresses', (req, res) ->
# 		http.get 'http://192.169.1.101/cgi-bin/b2e?request=<query></query>'
# 	data = [
# 		['1', 'address 1']
# 		['2', 'address 2']
# 	]
# 	headers = ['id', 'address']
# 	res.send data: data, headers: headers
# app.get '/addresses/:addressid', (req, res) ->
# 	res.send data: 'address' + req.params.addressid