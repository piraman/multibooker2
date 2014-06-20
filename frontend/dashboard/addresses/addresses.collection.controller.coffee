define ['./addresses.module'], (addresses) ->
	'use strict'
	addresses.controller 'addresses.collection.controller', ($scope, Addresses) ->
		Addresses.readCollection()




		# $scope.addresses = Addresses.getList().$object
		# $scope.delete = (i) ->
		# 	$addresses.data[i]
		# 	$addresses.data[i][$addresses.data_columns.indexOf 'ADDR_ID']






		# addresses = AddressesService
		# .query ->
		# 	$scope.headers = addresses.data_columns
		# 	$scope.rows = addresses.data

		# $scope.delete = (i) ->
		# 	AddressesService
		# 	.delete	{
		# 		objversion: addresses.data[i][addresses.data_columns.indexOf 'OBJVERSION']
		# 	}, {
		# 		addressid: addresses.data[i][addresses.data_columns.indexOf 'ADDR_ID']
		# 	}, ->
		# 		do $route.reload

		# $scope.edit = (i) ->
		# 	$location.path ROUTES.ADDRESSES + '/' + addresses.data[i][addresses.data_columns.indexOf 'ADDR_ID']

