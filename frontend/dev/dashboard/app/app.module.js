(function() {
  define(['ngRoute', 'HomeController', 'OrdersCollectionController', 'OrdersDocumentController', 'OrdersCreateController', 'Orders'], function() {
    'use scrict';
    angular.module('app', ['ngRoute', 'controllers', 'services']).config(function($routeProvider) {
      return $routeProvider.when('/home', {
        templateUrl: 'app/templates/home/home.template.html',
        controller: 'HomeController'
      }).when('/orders', {
        templateUrl: 'app/templates/orders/orders.collection.template.html',
        controller: 'OrdersCollectionController'
      }).when('/orders/create', {
        templateUrl: 'app/templates/orders/orders.create.template.html',
        controller: 'OrdersCreateController',
        resolve: {
          order: function(Orders) {
            return new Orders();
          }
        }
      }).when('/orders/:orderid', {
        templateUrl: 'app/templates/orders/orders.document.template.html',
        controller: 'OrdersDocumentController',
        resolve: {
          order: function(Orders, $route) {
            return Orders.get({
              id: $route.current.params.orderid
            }).$promise;
          }
        }
      }).otherwise({
        redirectTo: '/home'
      });
    });
    return angular.bootstrap(document, ['app']);
  });

}).call(this);
