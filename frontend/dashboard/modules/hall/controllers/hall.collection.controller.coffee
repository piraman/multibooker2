define ['../hall.module'], (hall) ->
	'use strict'
	hall.controller 'HallCollectionController', ($scope, Restangular) ->
		$scope.halls = []
		halls = Restangular.all 'halls'
		promise = do halls.getList
		promise.then (halls) ->
			$scope.halls = halls
		$scope.refresh = ->
			halls.getList().then (halls) ->
				$scope.halls = halls
				$scope.$broadcast 'hallsRefreshed'
		$scope.showQuickview = ($index) ->
			$scope.$broadcast 'showQuickview', $index
		$scope.$on 'hallUpdated', (event, data) ->
			do $scope.refresh
		$scope.create = ->
