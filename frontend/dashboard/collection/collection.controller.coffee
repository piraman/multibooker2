define ['./collection.module'], (collection) ->
	'use strict'
	collection.controller 'CollectionController', (Restangular, API_ROUTES) ->
		collection = Restangular.all API_ROUTES.ADDRESSES
		collection
		.getList()
		.then (response) ->
			console.log 7, response
			console.log response.meta
			response[0].addr = 'newaddr'
			response[0].status = 'not active'
			do response[0].put


			response[1].getList 'things'
