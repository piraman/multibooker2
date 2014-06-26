(function() {
  define(['angular', 'restangular', 'uirouter', './addresses/addresses.module'], function(angular) {
    'use strict';
    var app;
    app = angular.module('app', ['restangular', 'ui.router', 'app.addresses']);
    app.constant('sid', 'bwPxKUPqWMoCTWQoolBnXdSkYnxudrYuQyTUQcKIBEMSjxBsHN');
    app.constant('apiBaseUrl', 'http://localhost:9004/api');
    app.config([
      '$httpProvider', 'RestangularProvider', '$stateProvider', '$urlRouterProvider', 'sid', function($httpProvider, RestangularProvider, $stateProvider, $urlRouterProvider, sid) {
        console.log(arguments);
        $urlRouterProvider.otherwise('/home');
        return $stateProvider.state('home', {
          template: '<div>home page</div>',
          url: '/home'
        });
      }
    ]);
    return app;
  });

}).call(this);
