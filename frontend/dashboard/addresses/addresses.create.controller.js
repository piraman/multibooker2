(function() {
  define(['./addresses.module'], function(addresses) {
    'use strict';
    return addresses.controller('addresses.create.controller', function($scope, $location, ROUTES, Addresses) {
      return $scope.save = function() {
        return Addresses.post({
          text: $scope.text
        }).then(function(res) {
          if (parseInt(res.code) === 0) {
            return $location.path(ROUTES.ADDRESSES);
          }
        });
      };
    });
  });

}).call(this);
