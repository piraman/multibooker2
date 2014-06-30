define ['../address.module'], (address) ->
	'use strict'
	address.controller 'AddressQuickviewController', ($scope) ->
		index = null
		$scope.quickviewVisible = no
		$scope.$on 'showQuickview', (event, $index) ->
			index = $index
			$scope.quickviewVisible = yes
			$scope.address = $scope.addresses[$index]
		$scope.$on 'addressesRefreshed', (event, data) ->
			$scope.address = $scope.addresses[index]
		$scope.save = ->
			$scope.address.put().then ->
				$scope.$emit 'addressUpdated'
