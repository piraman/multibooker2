(function() {
  define(['../address.module'], function(address) {
    'use strict';
    return address.controller('AddressCollectionController', function($scope, Restangular) {
      var addresses, promise;
      $scope.addresses = [];
      addresses = Restangular.all('addresses');
      promise = addresses.getList();
      promise.then(function(addresses) {
        return $scope.addresses = addresses;
      });
      $scope.refresh = function() {
        return addresses.getList().then(function(addresses) {
          $scope.addresses = addresses;
          return $scope.$broadcast('addressesRefreshed');
        });
      };
      $scope.showQuickview = function($index) {
        return $scope.$broadcast('showQuickview', $index);
      };
      $scope.$on('addressUpdated', function(event, data) {
        return $scope.refresh();
      });
      return $scope.create = function() {};
    });
  });

}).call(this);
