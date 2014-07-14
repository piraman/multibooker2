define ['../hall.module'], (hall) ->
	'use strict'
	hall.controller 'HallQuickviewController', (Restangular, $scope) ->
		index = null
		$scope.quickviewVisible = no
		$scope.$on 'showQuickview', (event, $index) ->
			index = $index
			$scope.quickviewVisible = yes
			$scope.hall = $scope.halls[index]
		$scope.$on 'hallsRefreshed', (event, data) ->
			$scope.hall = $scope.halls[index]
		$scope.save = ->
			$scope.hall.put().then ->
				$scope.$emit 'hallUpdated'
