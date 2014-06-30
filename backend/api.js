(function() {
  var app, bodyParser, express, extend, http, makeMultibookerRequestString, makeRequestUrl, multibookerHost, multibookerRequestEndpoint, port, server, sid;

  port = 9004;

  sid = 'bwPxKUPqWMoCTWQoolBnXdSkYnxudrYuQyTUQcKIBEMSjxBsHN';

  multibookerHost = 'http://192.168.1.101';

  multibookerRequestEndpoint = '/cgi-bin/b2e?request=';

  makeMultibookerRequestString = function(object) {
    var key, string, value;
    string = '<query>';
    for (key in object) {
      value = object[key];
      string += "<" + key + ">" + value + "</" + key + ">";
    }
    return string += "<sid>" + sid + "</sid></query>";
  };

  makeRequestUrl = function(queryObject) {
    return multibookerHost + multibookerRequestEndpoint + makeMultibookerRequestString(queryObject);
  };

  express = require('express');

  extend = require('node.extend');

  bodyParser = require('body-parser');

  http = require('http');

  app = express();

  app.use(bodyParser.json());

  app.all('*', function(req, res, next) {
    res.header('access-control-allow-origin', req.headers.origin);
    res.header('access-control-allow-methods', 'GET, POST, PUT, PATCH, DELETE, OPTIONS');
    res.header('access-control-allow-credentials', false);
    res.header('access-control-allow-headers', 'X-Requested-With, x-http-method-override, content-type, accept, mb-sid');
    return next();
  });

  app.options('*', function(req, res) {
    return res.send(200);
  });

  app.route('/addresses').get(function(req, res) {
    var mbreq, query;
    query = {
      command: 'get',
      object: 'hall_addresses'
    };
    return mbreq = http.get(makeRequestUrl(query), function(mbres) {
      return mbres.pipe(res);
    });
  });

  app.route('/addresses/:addressId').get(function(req, res) {
    var mbreq, query;
    query = extend(req.body, {
      command: 'get',
      object: 'hall_addresses',
      where: 'addr_id = ' + req.params.addressId
    });
    return mbreq = http.get(makeRequestUrl(query), function(mbres) {
      return mbres.pipe(res);
    });
  }).put(function(req, res) {
    var mbreq, query;
    req.body.addr_id = req.body.id;
    delete req.body.id;
    query = extend(req.body, {
      command: 'modify',
      object: 'hall_addresses'
    });
    return mbreq = http.get(makeRequestUrl(query), function(mbres) {
      return mbres.pipe(res);
    });
  });

  app.route('/halls').get(function(req, res) {
    var mbreq, query;
    query = {
      command: 'get',
      object: 'hall'
    };
    return mbreq = http.get(makeRequestUrl(query), function(mbres) {
      return mbres.pipe(res);
    });
  });

  app.route('/halls/:hallId').get(function(req, res) {
    var mbreq, query;
    query = extend(req.body, {
      command: 'get',
      object: 'hall',
      where: 'hall_id = ' + req.params.hallId
    });
    return mbreq = http.get(makeRequestUrl(query), function(mbres) {
      return mbres.pipe(res);
    });
  }).put(function(req, res) {
    var mbreq, query;
    req.body.hall_id = req.body.id;
    delete req.body.id;
    query = extend(req.body, {
      command: 'modify',
      object: 'hall'
    });
    return mbreq = http.get(makeRequestUrl(query), function(mbres) {
      return mbres.pipe(res);
    });
  });

  server = app.listen(port, function() {
    return console.log('Listening on port ' + port);
  });

}).call(this);
