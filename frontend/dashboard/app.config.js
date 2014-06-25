(function() {
  define(['./app.module'], function(app) {
    'use strict';
    return app.config(function($httpProvider) {
      return $httpProvider.defaults.headers.common['mb-sid'] = 'bwPxKUPqWMoCTWQoolBnXdSkYnxudrYuQyTUQcKIBEMSjxBsHN';
    });
  });

}).call(this);
