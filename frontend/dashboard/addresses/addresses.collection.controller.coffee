define ['./addresses.module'], (addresses) ->
	'use strict'
	addresses.controller 'addresses.collection.controller', ($scope, Addresses) ->
		Addresses.readCollection (data, status, headers, config) ->
			console.log arguments
			$scope.addresses = data
