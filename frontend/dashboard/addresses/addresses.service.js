(function() {
  define(['./addresses.module'], function(addresses) {
    'use strict';
    return addresses.factory('Addresses', function($http, API) {
      var baseUrl;
      baseUrl = API + '/addresses';
      return {
        readCollection: function(cb) {
          return $http.get(baseUrl).success(function(data, status, headers, config) {
            return cb(data, status, headers, config);
          }).error(function(data, status, headers, config) {
            return cb(data, status, headers, config);
          });
        },
        create: function(data, cb) {
          return $http.post(baseUrl, data).success(function(data, status, headers, config) {
            return cb(data, status, headers, config);
          }).error(function(data, status, headers, config) {
            return cb(data, status, headers, config);
          });
        },
        read: function(addressid, cb) {
          return $http.get(baseUrl + '/' + addressid).success(function(data, status, headers, config) {
            return cb(data, status, headers, config);
          }).error(function(data, status, headers, config) {
            return cb(data, status, headers, config);
          });
        },
        update: function(addressid, data, cb) {
          return $http.put(baseUrl + '/' + addressid, data).success(function(data, status, headers, config) {
            return cb(data, status, headers, config);
          }).error(function(data, status, headers, config) {
            return cb(data, status, headers, config);
          });
        },
        'delete': function(addressid, data, cb) {
          return $http["delete"](baseUrl + '/' + addressid, {
            data: data
          }).success(function(data, status, headers, config) {
            return cb(data, status, headers, config);
          }).error(function(data, status, headers, config) {
            return cb(data, status, headers, config);
          });
        }
      };
    });
  });

}).call(this);
