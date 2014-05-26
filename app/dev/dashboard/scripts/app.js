(function() {
  'use strict';
  angular.module('dashboardApp', ['ngRoute']).config(function($routeProvider) {
    return $routeProvider.when('/', {
      redirectTo: '/home'
    }).when('/home', {
      templateUrl: '../dashboard/views/home.html',
      controller: 'HomeController'
    }).otherwise({
      redirectTo: '/home'
    });
  });

}).call(this);
