(function() {
  define(['./addresses.module'], function(addresses) {
    'use strict';
    return addresses.controller('addresses.collection.controller', function($scope, Addresses) {
      return Addresses.readCollection();
    });
  });

}).call(this);
