(function() {
  require.config({
    paths: {
      angular: '../bower_components/angular/angular',
      ngRoute: '../bower_components/angular-route/angular-route',
      ngResource: '../bower_components/angular-resource/angular-resource',
      restangular: '../bower_components/restangular/dist/restangular',
      lodash: '../bower_components/lodash/dist/lodash.compat'
    },
    shim: {
      angular: {
        exports: 'angular'
      },
      ngRoute: ['angular'],
      ngResource: ['angular'],
      restangular: ['angular', 'lodash']
    }
  });

  require(['angular', './app.module', './app.constants', './app.config', './app.routes'], function(angular, app) {
    'use strict';
    return angular.element(document).ready(function() {
      return angular.bootstrap(document, [app.name]);
    });
  });

}).call(this);
