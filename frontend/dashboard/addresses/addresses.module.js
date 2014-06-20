(function() {
  define(['angular', 'ngRoute', 'ngResource'], function(ng) {
    'use strict';
    var addresses;
    addresses = ng.module('addresses', ['ngRoute', 'ngResource']);
    return addresses;
  });

}).call(this);
