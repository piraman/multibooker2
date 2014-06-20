(function() {
  define(['angular', './addresses/addresses.index', './menu/menu.index'], function(ng) {
    'use strict';
    var app;
    app = ng.module('app', ['addresses', 'menu']);
    app.constant('API', 'http://localhost:9004');
    app.constant('ROUTES', (function() {
      return {
        ADDRESSES: '/addresses',
        ADDRESS: '/addresses/:addressid',
        ADDRESS_CREATE: '/addresses/create'
      };
    })());
    app.config(function($routeProvider, $httpProvider, ROUTES) {
      $httpProvider.defaults.headers.common['X-Sid'] = 'bwPxKUPqWMoCTWQoolBnXdSkYnxudrYuQyTUQcKIBEMSjxBsHN';
      return $routeProvider.when(ROUTES.ADDRESSES, {
        templateUrl: './addresses/addresses.collection.template.html',
        controller: 'addresses.collection.controller'
      }).when(ROUTES.ADDRESS_CREATE, {
        templateUrl: './addresses/addresses.create.template.html',
        controller: 'addresses.create.controller'
      }).when(ROUTES.ADDRESS, {
        templateUrl: './addresses/addresses.element.template.html',
        controller: 'addresses.element.controller'
      }).otherwise({
        redirectTo: '/addresses'
      });
    });
    return app;
  });

}).call(this);
