(function() {
  define(['./app.module'], function(app) {
    'use strict';
    app.constant('ROUTES', (function() {
      return {
        ADDRESSES: '/addresses',
        ADDRESS: '/addresses/:addressid',
        ADDRESS_CREATE: '/addresses/create',
        HALLS: '/halls',
        HALL: '/halls/:hallid',
        HALL_CREATE: '/halls/create'
      };
    })());
    app.constant('API_BASE_URL', 'http://localhost:9004');
    return app.constant('API_ROUTES', (function() {
      return {
        ADDRESSES: 'addresses'
      };
    })());
  });

}).call(this);
