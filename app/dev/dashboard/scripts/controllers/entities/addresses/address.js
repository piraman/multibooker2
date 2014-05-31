(function() {
  'use strict';
  angular.module('dashboardApp').controller('AddressController', function($scope, $routeParams, Address) {
    return Address.get($routeParams.addressId).success(function(data, status, func) {
      console.log(arguments);
      return $scope.addressData = JSON.stringify(data);
    });
  });

}).call(this);
