(function() {
  'use sctrict';
  angular.module('application', ['ngRoute', 'headbar', 'menu', 'dock', 'order']).config(function($routeProvider) {
    return $routeProvider.when('/home', {
      templateUrl: 'application/modules/home/home.template.html'
    }).when('/orders', {
      templateUrl: 'application/modules/order/order.list.template.html',
      controller: 'OrderListController'
    }).when('/orders/:orderid', {
      templateUrl: 'application/modules/order/order.item.template.html',
      controller: 'OrderItemController'
    }).when('/orders/create', {
      templateUrl: 'application/modules/order/order.create.template.html',
      controller: 'OrderCreateController'
    }).when('/orders/:orderid/tickets', {
      templateUrl: 'application/modules/order/order.tickets.template.html',
      controller: 'OrderTicketsController'
    }).otherwise({
      redirectTo: '/home'
    });
  });

  angular.module('application').controller('ApplicationController', function($scope) {
    return $scope.title = 'multibooker angular';
  });

}).call(this);
