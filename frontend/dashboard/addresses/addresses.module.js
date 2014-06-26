(function() {
  define(['angular', 'restangular', 'uirouter'], function(angular) {
    'use strict';
    var addresses;
    addresses = angular.module('app.addresses', ['restangular', 'ui.router']);
    require(['./addresses/addresses.collection.controller', './addresses/addresses.document.controller']);
    return addresses;
  });

}).call(this);
