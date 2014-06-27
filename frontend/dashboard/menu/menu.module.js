(function() {
  define(['angular'], function(angular) {
    'use strict';
    var menu;
    menu = angular.module('app.menu', []);
    require(['./menu/menu.controller']);
    return menu;
  });

}).call(this);
