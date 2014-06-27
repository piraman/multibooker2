(function() {
  define(['angular', 'restangular', 'uirouter'], function(angular) {
    'use strict';
    var addresses;
    addresses = angular.module('app.addresses', ['restangular', 'ui.router']);
    addresses.config([
      '$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
        console.log($stateProvider);
        return $stateProvider.state('addresses', {
          abstract: true,
          template: '<div>Addresses view wrapper</div><ui-view></ui-view>',
          url: '/addresses'
        }).state('addresses.collection', {
          templateUrl: './addresses/addresses.collection.template.html',
          url: '',
          resolve: {
            addresses: [
              'Restangular', function(Restangular) {
                return Restangular.all('addresses').getList();
              }
            ]
          }
        }).state('addresses.document', {
          templateUrl: './addresses/addresses.document.template.html',
          url: '/{addressId:[0-9]}'
        });
      }
    ]);
    require(['./addresses/addresses.collection.controller', './addresses/addresses.document.controller']);
    return addresses;
  });

}).call(this);
