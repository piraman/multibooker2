(function() {
  define(['./menu.module'], function(menu) {
    'use strict';
    return menu.controller('menu.controller', function($scope) {
      return $scope.items = [
        {
          route: '#/addresses',
          text: 'Addressess'
        }, {
          route: '#/addresses/201',
          text: 'Address 201'
        }, {
          route: '#/addresses/244',
          text: 'Address 244'
        }, {
          route: '#/addresses/create',
          text: 'Create address'
        }
      ];
    });
  });

}).call(this);
