define ['formModule'], ->

	'use sctrict'

	angular
	.module 'formModule'
	.controller 'FormController', ($scope, $routeParams) ->
		$scope.id = $routeParams.id