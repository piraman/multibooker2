(function() {
  'use strict';
  angular.module('dashboardApp', ['ngRoute', 'ngAnimate']).config(function($routeProvider) {
    return $routeProvider.when('/', {
      redirectTo: '/home'
    }).when('/home', {
      templateUrl: '../dashboard/views/home.html'
    }).when('/orders', {
      templateUrl: '../dashboard/views/table.html'
    }).otherwise({
      redirectTo: '/home'
    });
  });

}).call(this);
