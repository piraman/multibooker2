define ['angular', 'ngRoute', 'ngResource',], (ng) ->
	'use strict'
	addresses = ng.module 'addresses', ['ngRoute', 'ngResource',]
	addresses