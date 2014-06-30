define [
	'angular'
	'./app.index'
], (angular) ->
	'use strict'
	require ['domready!'], (document) ->
		angular.bootstrap document, ['app']