(function() {
  define(['angular', 'restangular'], function(angular, restangular) {
    'use strict';
    var collection;
    return collection = angular.module('collection', ['restangular']).constant('API_BASE_URL', 'http://localhost:9004').config(function(RestangularProvider, API_BASE_URL) {
      console.log(RestangularProvider);
      RestangularProvider.setBaseUrl(API_BASE_URL);
      RestangularProvider.setRestangularFields({
        id: 'addr_id'
      });
      return RestangularProvider.addResponseInterceptor(function(data, operation, what, url, response, deferred) {
        var column, i, ii, item, rowObject, _i, _j, _len, _len1, _ref, _ref1;
        collection = [];
        _ref = data.results[0].data;
        for (i = _i = 0, _len = _ref.length; _i < _len; i = ++_i) {
          item = _ref[i];
          rowObject = {};
          _ref1 = data.results[0].data_columns;
          for (ii = _j = 0, _len1 = _ref1.length; _j < _len1; ii = ++_j) {
            column = _ref1[ii];
            rowObject[column.toLowerCase()] = item[ii];
          }
          collection.push(rowObject);
        }
        console.log('collection', collection);
        collection.meta = {
          columns: data.results[0].data_columns,
          info: data.results[0].data_info
        };
        return collection;
      });
    });
  });

}).call(this);
