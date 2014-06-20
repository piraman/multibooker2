define ['./addresses.module'], (addresses) ->
	'use strict'
	addresses.controller 'addresses.create.controller', ($scope, $location, ROUTES, Addresses) ->
		$scope.save = ->
			Addresses
			.post text: $scope.text
			.then (res) ->
				if parseInt(res.code) is 0
					$location.path ROUTES.ADDRESSES
			# address =
			# 	text: $scope.text
			# AddressesService.create {}, address, (res) ->
			# 	if parseInt(res.code) is 0
			# 		$location.path ROUTES.ADDRESSES
