(function() {
  define(['./addresses.module'], function(addresses) {
    'use strict';
    return addresses.controller('addresses.element.controller', function($scope, $routeParams, Address) {
      return Address.get();
    });
  });

}).call(this);
