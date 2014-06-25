define ['./app.module'], (app) ->
	'use strict'
	app.config ($routeProvider, ROUTES, API_ROUTES) ->
		$routeProvider
		.when ROUTES.ADDRESSES,
			templateUrl: './collection/collection.template.html'
			controller: 'CollectionController'
			resolve: apiEndpoint: -> API_ROUTES.ADDRESSES