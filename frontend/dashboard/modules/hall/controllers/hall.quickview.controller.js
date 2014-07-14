(function() {
  define(['../hall.module'], function(hall) {
    'use strict';
    return hall.controller('HallQuickviewController', function(Restangular, $scope) {
      var index;
      index = null;
      $scope.quickviewVisible = false;
      $scope.$on('showQuickview', function(event, $index) {
        index = $index;
        $scope.quickviewVisible = true;
        return $scope.hall = $scope.halls[index];
      });
      $scope.$on('hallsRefreshed', function(event, data) {
        return $scope.hall = $scope.halls[index];
      });
      return $scope.save = function() {
        return $scope.hall.put().then(function() {
          return $scope.$emit('hallUpdated');
        });
      };
    });
  });

}).call(this);
