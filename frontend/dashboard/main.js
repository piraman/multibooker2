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
      ngRoute: {
        deps: ['angular']
      },
      ngResource: {
        deps: ['angular']
      },
      restangular: {
        deps: ['angular', 'lodash']
      }
    }
  });

  require(['angular', './app.module'], function(ng, app) {
    'use strict';
    return ng.element(document).ready(function() {
      return ng.bootstrap(document, [app.name]);
    });
  });

}).call(this);
