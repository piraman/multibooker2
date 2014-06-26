require.config
	paths:
		angular: '../bower_components/angular/angular'
		lodash: '../bower_components/lodash/dist/lodash.compat'
		restangular: '../bower_components/restangular/dist/restangular'
		uirouter: '../bower_components/angular-ui-router/release/angular-ui-router'
	shim:
		angular: exports: 'angular'
		restangular: ['angular', 'lodash']
		uirouter: ['angular']
require [
	'angular'
	'./app.module'
], (angular, app) ->
	'use strict'
	angular
	.element document
	.ready -> angular.bootstrap document, [app.name]
