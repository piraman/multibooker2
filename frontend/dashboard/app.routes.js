(function() {
  define(['./app.module'], function(app) {
    'use strict';
    return app.config(function($routeProvider, ROUTES, API_ROUTES) {
      return $routeProvider.when(ROUTES.ADDRESSES, {
        templateUrl: './collection/collection.template.html',
        controller: 'CollectionController',
        resolve: {
          apiEndpoint: function() {
            return API_ROUTES.ADDRESSES;
          }
        }
      });
    });
  });

}).call(this);
