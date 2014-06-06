(function() {
  define(['services'], function() {
    'use strict';
    return angular.module('services').factory('Orders', function($resource) {
      var Orders;
      Orders = $resource('/api/orders/:orderid.json', {
        id: '@id',
        query: {
          method: 'GET',
          isArray: true
        },
        get: {
          method: 'GET'
        }
      });
      return Orders;
    });
  });

}).call(this);
