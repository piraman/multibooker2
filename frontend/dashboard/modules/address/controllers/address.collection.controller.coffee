define ['../address.module'], (address) ->
	'use strict'
	address.controller 'AddressCollectionController', ($scope, Restangular) ->
		$scope.addresses = []
		addresses = Restangular.all 'addresses'
		promise = do addresses.getList
		promise.then (addresses) ->
			$scope.addresses = addresses
		$scope.refresh = ->
			addresses.getList().then (addresses) ->
				$scope.addresses = addresses
				$scope.$broadcast 'addressesRefreshed'
		$scope.showQuickview = ($index) ->
			$scope.$broadcast 'showQuickview', $index
		$scope.$on 'addressUpdated', (event, data) ->
			do $scope.refresh
		$scope.create = ->
