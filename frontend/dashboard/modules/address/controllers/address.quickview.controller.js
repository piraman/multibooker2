(function() {
  define(['../address.module'], function(address) {
    'use strict';
    return address.controller('AddressQuickviewController', function($scope) {
      var index;
      index = null;
      $scope.quickviewVisible = false;
      $scope.$on('showQuickview', function(event, $index) {
        index = $index;
        $scope.quickviewVisible = true;
        return $scope.address = $scope.addresses[$index];
      });
      $scope.$on('addressesRefreshed', function(event, data) {
        return $scope.address = $scope.addresses[index];
      });
      return $scope.save = function() {
        return $scope.address.put().then(function() {
          return $scope.$emit('addressUpdated');
        });
      };
    });
  });

}).call(this);
