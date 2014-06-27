define [
	'angular'
], (angular) ->
	'use strict'
	menu = angular.module 'app.menu', []
	require [
		'./menu/menu.controller'
	]
	return menu
