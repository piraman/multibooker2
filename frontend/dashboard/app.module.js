(function() {
  define(['angular', 'restangular', 'uirouter', './addresses/addresses.module', './menu/menu.module'], function(angular) {
    'use strict';
    var app;
    app = angular.module('app', ['restangular', 'ui.router', 'app.addresses', 'app.menu']);
    app.constant('sid', 'bwPxKUPqWMoCTWQoolBnXdSkYnxudrYuQyTUQcKIBEMSjxBsHN');
    app.config([
      '$httpProvider', 'RestangularProvider', '$stateProvider', '$urlRouterProvider', 'sid', function($httpProvider, RestangularProvider, $stateProvider, $urlRouterProvider, sid) {
        console.log(arguments);
        $urlRouterProvider.otherwise('/home');
        $stateProvider.state('home', {
          template: '<div>home page</div>',
          url: '/home'
        });
        RestangularProvider.setBaseUrl('http://localhost:9004');
        return RestangularProvider.addResponseInterceptor(function(data, operation, what, url, response, deferred) {
          var column, i, ii, newDataArray, newRowObject, value, _i, _j, _len, _len1, _ref, _ref1;
          console.log(arguments);
          if (data.results[0].data != null) {
            console.log(666);
            newDataArray = [];
            _ref = data.results[0].data;
            for (i = _i = 0, _len = _ref.length; _i < _len; i = ++_i) {
              value = _ref[i];
              newRowObject = {};
              _ref1 = data.results[0].data_columns;
              for (ii = _j = 0, _len1 = _ref1.length; _j < _len1; ii = ++_j) {
                column = _ref1[ii];
                newRowObject[column.toLowerCase()] = value[ii];
              }
              newDataArray.push(newRowObject);
            }
            console.log(newDataArray);
            newDataArray.meta = {
              columns: data.results[0].data_columns,
              info: data.results[0].data_info
            };
            return newDataArray;
          }
        });
      }
    ]);
    return app;
  });

}).call(this);
