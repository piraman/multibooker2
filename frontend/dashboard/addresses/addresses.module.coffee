define [
	'angular'
	'restangular'
	'uirouter'
], (angular) ->
	'use strict'
	addresses = angular.module 'app.addresses', [
		'restangular'
		'ui.router'
	]
	require [
		'./addresses/addresses.collection.controller'
		'./addresses/addresses.document.controller'
	]
	return addresses