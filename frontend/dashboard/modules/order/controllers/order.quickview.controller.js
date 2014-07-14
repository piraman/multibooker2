(function() {
  define(['../order.module'], function(order) {
    'use strict';
    return order.controller('OrderQuickviewController', function(Restangular, $scope) {
      var index;
      index = null;
      $scope.quickviewVisible = false;
      $scope.$on('showQuickview', function(event, $index) {
        index = $index;
        $scope.quickviewVisible = true;
        return $scope.order = $scope.orders[index];
      });
      $scope.$on('ordersRefreshed', function(event, data) {
        return $scope.order = $scope.orders[index];
      });
      return $scope.save = function() {
        return $scope.order.put().then(function() {
          return $scope.$emit('orderUpdated');
        });
      };
    });
  });

}).call(this);
