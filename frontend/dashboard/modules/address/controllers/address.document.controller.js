(function() {
  define(['../address.module'], function(address) {
    'use strict';
    return address.controller('AddressDocumentController', function() {
      return {
        resolve: {
          Address: [
            '$stateParams', 'Restangular', function($stateParams, Restangular) {
              return Restangular.one('addresses', $stateParams.addressId).get();
            }
          ]
        }
      };
    });
  });

}).call(this);
