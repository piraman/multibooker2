(function() {
  define(['angular', 'uirouter', 'restangular', 'angucomplete'], function(angular) {
    'use strict';
    var hall;
    hall = angular.module('app.hall', ['ui.router', 'restangular', 'angucomplete']);
    hall.config([
      '$stateProvider', function($stateProvider) {
        return $stateProvider.state('hall', {
          abstract: true,
          template: '<div>Halls view wrapper</div><ui-view></ui-view>',
          url: '/halls'
        }).state('hall.collection', {
          templateUrl: './modules/hall/templates/hall.collection.template.html',
          controller: 'HallCollectionController',
          url: ''
        }).state('hall.document', {
          templateUrl: './modules/hall/templates/hall.document.template.html',
          controller: 'HallDocumentController',
          url: '/{hallId:[0-9]}'
        });
      }
    ]);
    return hall;
  });

}).call(this);
