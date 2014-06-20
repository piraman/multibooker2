(function() {
  define(['./addresses.module'], function(addresses) {
    'use strict';
    return addresses.controller('addresses.element.controller', function($scope, $routeParams, Addresses) {
      return Addresses.read($routeParams.addressid, function(data, status, headers, config) {
        var address, column, i, _i, _len, _ref;
        address = {
          data: {}
        };
        _ref = data.data_columns;
        for (i = _i = 0, _len = _ref.length; _i < _len; i = ++_i) {
          column = _ref[i];
          column = column.toLowerCase();
          address.data[column] = data.data[0][i];
        }
        $scope.address = address;
        return $scope.save = function() {
          return Addresses.update($routeParams.addressid, address.data, function(data, status, headers, config) {
            return console.log(arguments);
          });
        };
      });
    });
  });

}).call(this);
