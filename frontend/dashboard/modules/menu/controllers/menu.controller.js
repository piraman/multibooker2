(function() {
  define(['../menu.module'], function(menu) {
    return menu.controller('MenuController', function($scope) {
      return $scope.items = [
        {
          text: 'Addresses',
          link: 'address.collection'
        }, {
          text: 'Adderss 1',
          link: 'address.document({addressId: 1})'
        }, {
          text: 'Halls',
          link: 'hall.collection'
        }, {
          text: 'Hall 1',
          link: 'hall.document({hallId: 1})'
        }, {
          text: 'Home',
          link: 'home'
        }
      ];
    });
  });

}).call(this);
