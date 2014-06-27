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
	addresses.config [
		'$stateProvider'
		'$urlRouterProvider'
		($stateProvider, $urlRouterProvider) ->
			console.log $stateProvider
			$stateProvider
			.state 'addresses',
				abstract: yes
				template: '<div>Addresses view wrapper</div><ui-view></ui-view>'
				url: '/addresses'
			.state 'addresses.collection',
				templateUrl: './addresses/addresses.collection.template.html'
				url: ''
				resolve:
					addresses: [
						'Restangular'
						(Restangular) ->
							Restangular
							.all 'addresses'
							.getList()
					]
			.state 'addresses.document',
				templateUrl: './addresses/addresses.document.template.html'
				url: '/{addressId:[0-9]}'
	]
	require [
		'./addresses/addresses.collection.controller'
		'./addresses/addresses.document.controller'
	]
	return addresses