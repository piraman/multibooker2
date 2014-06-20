(function() {
  var app, bodyParser, express, http, port, server, sid;

  port = 9004;

  sid = 'bwPxKUPqWMoCTWQoolBnXdSkYnxudrYuQyTUQcKIBEMSjxBsHN';

  express = require('express');

  bodyParser = require('body-parser');

  http = require('http');

  app = express();

  app.use(bodyParser.json());

  app.use(function(req, res, next) {
    var chunks, oldEnd, oldWhrite;
    oldWhrite = res.write;
    oldEnd = res.end;
    chunks = [];
    res.whrite = function(chunk) {
      chunks.push(chunk);
      return oldWhrite.apply(res, arguments);
    };
    res.end = function(chunk) {
      var body;
      if (chunk) {
        chunks.push(chunk);
      }
      body = Buffer.concat(chunks).toString('utf8');
      console.log('_______________________________________________________');
      console.log('REQUEST');
      console.log('');
      console.log('%s %s %s', req.method, req.url, JSON.stringify(req.body));
      console.log('');
      console.log('RESPONSE');
      console.log('');
      console.log('%s', body);
      console.log('_______________________________________________________');
      return oldEnd.apply(res, arguments);
    };
    return next();
  });

  app.all('*', function(req, res, next) {
    res.header('access-control-allow-origin', req.headers.origin);
    res.header('access-control-allow-methods', 'get, post, put, patch, delete, options');
    res.header('access-control-allow-credentials', false);
    res.header('access-control-allow-headers', 'X-Requested-With, x-http-method-override, content-type, accept, x-sid');
    return next();
  });

  app.options('*', function(req, res) {
    return res.send(200);
  });

  app.route('/addresses').get(function(req, res) {
    var mbreq, options;
    options = {
      host: '192.168.1.101',
      path: '/cgi-bin/b2e?request=<query><command>get</command><object>hall_addresses</object><sid>' + sid + '</sid></query>',
      method: 'GET'
    };
    mbreq = http.get(options, function(mbres) {
      mbres.setEncoding('utf8');
      return mbres.on('data', function(chunk) {
        return res.send([JSON.parse(chunk).results[0]]);
      });
    });
    return mbreq.end();
  }).post(function(req, res) {
    var mbreq, options;
    options = {
      host: '192.168.1.101',
      path: '/cgi-bin/b2e?request=<query><command>new</command><object>hall_addresses</object><addr>' + req.body.text + '</addr><sid>' + sid + '</sid></query>',
      method: 'GET'
    };
    mbreq = http.get(options, function(mbres) {
      mbres.setEncoding('utf8');
      return mbres.on('data', function(chunk) {
        return res.send(JSON.parse(chunk).results[0]);
      });
    });
    return mbreq.end();
  });

  app.route('/addresses/:addressid').get(function(req, res) {
    var mbreq, options;
    options = {
      host: '192.168.1.101',
      path: '/cgi-bin/b2e?request=<query><command>get</command><object>hall_addresses</object><where>ADDR_ID=' + req.params.addressid + '</where><sid>' + sid + '</sid></query>',
      method: 'GET'
    };
    mbreq = http.get(options, function(mbres) {
      mbres.setEncoding('utf8');
      return mbres.on('data', function(chunk) {
        return res.send(JSON.parse(chunk).results[0]);
      });
    });
    return mbreq.end();
  })["delete"](function(req, res) {
    var mbreq, options;
    options = {
      host: '192.168.1.101',
      path: '/cgi-bin/b2e?request=<query><command>remove</command><object>hall_addresses</object><addr_id>' + req.params.addressid + '</addr_id><objversion>' + req.query.objversion + '</objversion><sid>' + sid + '</sid></query>',
      method: 'GET'
    };
    mbreq = http.get(options, function(mbres) {
      mbres.setEncoding('utf8');
      return mbres.on('data', function(chunk) {
        return res.send(JSON.parse(chunk).results[0]);
      });
    });
    return mbreq.end();
  });

  server = app.listen(port, function() {
    return console.log('Listening on port ' + port);
  });

}).call(this);
