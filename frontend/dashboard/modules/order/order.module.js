(function() {
  define(['angular', 'uirouter', 'restangular'], function(angular) {
    'use strict';
    var order;
    order = angular.module('app.order', ['ui.router', 'restangular']);
    order.config([
      '$stateProvider', function($stateProvider) {
        return $stateProvider.state('order', {
          abstract: true,
          template: '<div>Orders view wrapper</div><ui-view></ui-view>',
          url: '/orders'
        }).state('order.collection', {
          templateUrl: './modules/order/templates/order.collection.template.html',
          controller: 'OrderCollectionController',
          url: ''
        }).state('order.document', {
          templateUrl: './modules/order/templates/order.document.template.html',
          controller: 'OrderDocumentController',
          url: '/{orderId:[0-9]}'
        });
      }
    ]);
    return order;
  });

}).call(this);
