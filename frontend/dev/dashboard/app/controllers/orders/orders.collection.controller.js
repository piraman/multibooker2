(function() {
  define(['controllers'], function() {
    'use sctrict';
    return angular.module('controllers').controller('OrdersCollectionController', function($scope) {
      return $scope.items = ['dscds', 'dssdcds', 'fdvdfvdf'];
    });
  });

}).call(this);
