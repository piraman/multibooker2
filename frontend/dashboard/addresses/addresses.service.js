(function() {
  define(['./addresses.module'], function(addresses) {
    'use strict';
    return addresses.factory('Addresses', function($http, API) {
      var baseUrl;
      baseUrl = API + '/addresses';
      return {
        readCollection: function() {
          var res;
          res = $http.get(baseUrl).success(function(data, status, headers, config) {
            return data;
          }).error(function(data, status, headers, config) {
            return data;
          });
          return res;
        },
        create: function(data) {
          return $http.post(baseUrl, data).success(function(data, status, headers, config) {
            return data;
          }).error(function(data, status, headers, config) {
            return data;
          });
        },
        read: function(addressid) {
          return $http.get(baseUrl + '/' + addressid).success(function(data, status, headers, config) {
            return data;
          }).error(function(data, status, headers, config) {
            return data;
          });
        },
        update: function(addressid, data) {
          return $http.put(baseUrl + '/' + addressid, {
            data: data
          }).success(function(data, status, headers, config) {
            return data;
          }).error(function(data, status, headers, config) {
            return data;
          });
        },
        'delete': function(addressid, data) {
          return $http["delete"](baseUrl + '/' + addressid, {
            data: data
          }).success(function(data, status, headers, config) {
            return data;
          }).error(function(data, status, headers, config) {
            return data;
          });
        }
      };
    });
  });

}).call(this);
