(function() {
  'use strict';
  angular.module('dashboardApp', ['ngRoute', 'ngResource']).config(function($routeProvider) {
    var templateUrlPrefix;
    templateUrlPrefix = '../dashboard/templates';
    return $routeProvider.when('/', {
      redirectTo: '/home'
    }).when('/home', {
      templateUrl: "" + templateUrlPrefix + "/pages/home/home.html",
      controller: 'HomeController'
    }).when('/addresses', {
      templateUrl: "" + templateUrlPrefix + "/entities/addresses/addresses.html",
      controller: 'AddressesController'
    }).when('/addresses/:addressId', {
      templateUrl: "" + templateUrlPrefix + "/entities/addresses/address.html",
      controller: 'AddressController'
    }).when('/orders', {
      templateUrl: "" + templateUrlPrefix + "/entities/orders/orders.html",
      controller: 'OrdersController'
    }).when('/orders/:orderId', {
      templateUrl: "" + templateUrlPrefix + "/entities/orders/order.html",
      controller: 'OrderController'
    }).otherwise({
      redirectTo: '/home'
    });
  });

}).call(this);
