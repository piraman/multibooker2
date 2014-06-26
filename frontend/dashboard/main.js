(function() {
  require.config({
    paths: {
      angular: '../bower_components/angular/angular',
      lodash: '../bower_components/lodash/dist/lodash.compat',
      restangular: '../bower_components/restangular/dist/restangular',
      uirouter: '../bower_components/angular-ui-router/release/angular-ui-router'
    },
    shim: {
      angular: {
        exports: 'angular'
      },
      restangular: ['angular', 'lodash'],
      uirouter: ['angular']
    }
  });

  require(['angular', './app.module'], function(angular, app) {
    'use strict';
    return angular.element(document).ready(function() {
      return angular.bootstrap(document, [app.name]);
    });
  });

}).call(this);
