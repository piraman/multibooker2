(function() {
  define(['./menu.module'], function(menu) {
    return menu.controller('MenuController', function($scope) {
      return $scope.items = [
        {
          text: 'Addresses',
          link: 'addresses.collection'
        }, {
          text: 'Adderss 1',
          link: 'addresses.document({addressId: 1})'
        }, {
          text: 'Home',
          link: 'home'
        }
      ];
    });
  });

}).call(this);
