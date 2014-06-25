(function() {
  define(['./collection.module'], function(collection) {
    'use strict';
    return collection.controller('CollectionController', function(Restangular, API_ROUTES) {
      collection = Restangular.all(API_ROUTES.ADDRESSES);
      return collection.getList().then(function(response) {
        console.log(7, response);
        console.log(response.meta);
        response[0].addr = 'newaddr';
        response[0].status = 'not active';
        response[0].put();
        return response[1].getList('things');
      });
    });
  });

}).call(this);
