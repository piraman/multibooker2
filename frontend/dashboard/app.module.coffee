define ['angular', 'ngRoute', 'restangular', './collection/collection.index'], (angular) ->
	'use strict'
	app = angular.module 'app', ['ngRoute', 'restangular', 'collection']
