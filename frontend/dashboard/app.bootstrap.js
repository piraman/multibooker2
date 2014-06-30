(function() {
  define(['angular', './app.index'], function(angular) {
    'use strict';
    return require(['domready!'], function(document) {
      return angular.bootstrap(document, ['app']);
    });
  });

}).call(this);
