define ['controllers'], ->
	'use sctrict'
	angular
	.module 'controllers'
	.controller 'OrdersCollectionController', ($scope) ->
		$scope.items = ['dscds','dssdcds', 'fdvdfvdf']