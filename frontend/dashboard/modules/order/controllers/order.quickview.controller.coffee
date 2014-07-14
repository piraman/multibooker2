define ['../order.module'], (order) ->
	'use strict'
	order.controller 'OrderQuickviewController', (Restangular, $scope) ->
		index = null
		$scope.quickviewVisible = no
		$scope.$on 'showQuickview', (event, $index) ->
			index = $index
			$scope.quickviewVisible = yes
			$scope.order = $scope.orders[index]
		$scope.$on 'ordersRefreshed', (event, data) ->
			$scope.order = $scope.orders[index]
		$scope.save = ->
			$scope.order.put().then ->
				$scope.$emit 'orderUpdated'
