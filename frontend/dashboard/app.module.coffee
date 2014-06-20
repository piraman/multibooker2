define ['angular', './addresses/addresses.index', './menu/menu.index'], (ng) ->
	'use strict'
	app = ng.module 'app', ['addresses', 'menu']
	app.constant 'API', 'http://localhost:9004'
	app.constant 'ROUTES', do ->
		ADDRESSES: '/addresses'
		ADDRESS: '/addresses/:addressid'
		ADDRESS_CREATE: '/addresses/create'
	app.config ($routeProvider, $httpProvider, ROUTES) ->
		console.log $httpProvider
		$httpProvider.defaults.headers.common['X-Sid'] = 'bwPxKUPqWMoCTWQoolBnXdSkYnxudrYuQyTUQcKIBEMSjxBsHN'
		$routeProvider
		.when ROUTES.ADDRESSES,
			templateUrl: './addresses/addresses.collection.template.html',
			controller: 'addresses.collection.controller'
		.when ROUTES.ADDRESS_CREATE,
			templateUrl: './addresses/addresses.create.template.html',
			controller: 'addresses.create.controller'
		.when ROUTES.ADDRESS,
			templateUrl: './addresses/addresses.element.template.html',
			controller: 'addresses.element.controller'
		.otherwise redirectTo: '/addresses'
	app