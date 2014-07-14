define ['../order.module'], (order) ->
	'use strict'
	order.controller 'OrderCollectionController', ($scope, Restangular) ->
		$scope.limit = 100
		$scope.offset = 1
		$scope.orders = []
		orders = Restangular.all 'orders'
		promise = orders.getList offset: $scope.offset, limit: $scope.limit
		promise.then (orders) ->
			console.log orders
			$scope.orders = orders
		$scope.refresh = ->
			promise = orders.getList offset: $scope.offset, limit: $scope.limit
			promise.then (orders) ->
				$scope.orders = orders
				$scope.$broadcast 'ordersRefreshed'
		$scope.showQuickview = ($index) ->
			$scope.$broadcast 'showQuickview', $index
		$scope.$on 'orderUpdated', (event, data) ->
			do $scope.refresh
		$scope.create = ->
