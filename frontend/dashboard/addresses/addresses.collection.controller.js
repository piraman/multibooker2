(function() {
  define(['./addresses.module'], function(addresses) {
    'use strict';
    return addresses.controller('addresses.collection.controller', function($scope, Addresses) {
      return Addresses.readCollection(function(data, status, headers, config) {
        console.log(arguments);
        return $scope.addresses = data;
      });
    });
  });

}).call(this);
