define ['./addresses.module'], (addresses) ->
	'use strict'
	addresses.controller 'addresses.element.controller', ($scope, $routeParams, Addresses) ->
		Addresses.read $routeParams.addressid, (data, status, headers, config) ->
			address =
				data: {}
			for column, i in data.data_columns
				column = do column.toLowerCase
				address.data[column] = data.data[0][i]
			$scope.address = address
			$scope.save = ->
				Addresses.update $routeParams.addressid, address.data, (data, status, headers, config) ->
					console.log arguments


