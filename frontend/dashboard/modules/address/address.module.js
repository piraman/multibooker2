(function() {
  define(['angular', 'uirouter', 'restangular'], function(angular) {
    'use strict';
    var address;
    address = angular.module('app.address', ['ui.router', 'restangular']);
    address.config([
      '$stateProvider', function($stateProvider) {
        return $stateProvider.state('address', {
          abstract: true,
          template: '<div>Addresses view wrapper</div><ui-view></ui-view>',
          url: '/addresses'
        }).state('address.collection', {
          templateUrl: './modules/address/templates/address.collection.template.html',
          controller: 'AddressCollectionController',
          url: ''
        }).state('address.document', {
          templateUrl: './modules/address/templates/address.document.template.html',
          controller: 'AddressDocumentController',
          url: '/{addressId:[0-9]}'
        });
      }
    ]);
    return address;
  });

}).call(this);
