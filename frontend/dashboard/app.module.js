(function() {
  define(['angular', 'uirouter', 'restangular', './modules/address/address.index', './modules/menu/menu.index', './modules/hall/hall.index', './modules/order/order.index'], function(angular) {
    'use strict';
    var app;
    app = angular.module('app', ['ui.router', 'restangular', 'app.address', 'app.menu', 'app.hall', 'app.order']);
    app.constant('sid', 'bwPxKUPqWMoCTWQoolBnXdSkYnxudrYuQyTUQcKIBEMSjxBsHN');
    app.config([
      '$stateProvider', '$urlRouterProvider', 'RestangularProvider', function($stateProvider, $urlRouterProvider, RestangularProvider) {
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
            newDataArray = [];
            switch (what) {
              case 'addresses':
                data.results[0].data_columns[data.results[0].data_columns.indexOf('ADDR_ID')] = 'id';
                break;
              case 'halls':
                data.results[0].data_columns[data.results[0].data_columns.indexOf('HALL_ID')] = 'id';
                break;
              case 'agents':
                data.results[0].data_columns[data.results[0].data_columns.indexOf('AGENT_ID')] = 'id';
                break;
              case 'orders':
                data.results[0].data_columns[data.results[0].data_columns.indexOf('ORDER_ID')] = 'id';
            }
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
              columns: data.results[0].data_columns.join('|').toLowerCase().split('|'),
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
