(function() {
  define(['angular', 'ngRoute', 'restangular', './collection/collection.index'], function(angular) {
    'use strict';
    var app;
    return app = angular.module('app', ['ngRoute', 'restangular', 'collection']);
  });

}).call(this);
