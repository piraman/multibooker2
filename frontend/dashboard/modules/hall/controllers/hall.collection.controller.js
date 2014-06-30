(function() {
  define(['../hall.module'], function(hall) {
    'use strict';
    return hall.controller('HallCollectionController', function($scope, Restangular) {
      var halls, promise;
      $scope.halls = [];
      halls = Restangular.all('halls');
      promise = halls.getList();
      promise.then(function(halls) {
        return $scope.halls = halls;
      });
      $scope.refresh = function() {
        return halls.getList().then(function(halls) {
          $scope.halls = halls;
          return $scope.$broadcast('hallsRefreshed');
        });
      };
      $scope.showQuickview = function($index) {
        return $scope.$broadcast('showQuickview', $index);
      };
      $scope.$on('hallUpdated', function(event, data) {
        return $scope.refresh();
      });
      return $scope.create = function() {};
    });
  });

}).call(this);
