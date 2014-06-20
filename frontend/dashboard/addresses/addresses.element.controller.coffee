define ['./addresses.module'], (addresses) ->
	'use strict'
	addresses.controller 'addresses.element.controller', ($scope, $routeParams,  Address) ->
		Address.get()
		# AddressesService.read addressid: $routeParams.addressid, (res) ->
		# 	$scope.addressid = res.data[0][res.data_columns.indexOf 'ADDR_ID']
		# 	$scope.text = res.data[0][res.data_columns.indexOf 'ADDR']
		# $scope.save = ->
		# 	# console.log address
		# 	AddressesService.update $scope.text, (res) ->
		# 		console.log res


