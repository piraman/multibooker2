(function() {
  define(['../order.module'], function(order) {
    'use strict';
    return order.controller('OrderCollectionController', function($scope, Restangular) {
      var orders, promise;
      $scope.limit = 100;
      $scope.offset = 1;
      $scope.orders = [];
      orders = Restangular.all('orders');
      promise = orders.getList({
        offset: $scope.offset,
        limit: $scope.limit
      });
      promise.then(function(orders) {
        console.log(orders);
        return $scope.orders = orders;
      });
      $scope.refresh = function() {
        promise = orders.getList({
          offset: $scope.offset,
          limit: $scope.limit
        });
        return promise.then(function(orders) {
          $scope.orders = orders;
          return $scope.$broadcast('ordersRefreshed');
        });
      };
      $scope.showQuickview = function($index) {
        return $scope.$broadcast('showQuickview', $index);
      };
      $scope.$on('orderUpdated', function(event, data) {
        return $scope.refresh();
      });
      return $scope.create = function() {};
    });
  });

}).call(this);
