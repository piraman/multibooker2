define [
	'angular'
	'restangular'
	'uirouter'
	'./addresses/addresses.module'
	'./menu/menu.module'
], (angular) ->
	'use strict'
	app = angular.module 'app', [
		'restangular'
		'ui.router'
		'app.addresses'
		'app.menu'
	]
	app.constant 'sid', 'bwPxKUPqWMoCTWQoolBnXdSkYnxudrYuQyTUQcKIBEMSjxBsHN'
	app.config [
		'$httpProvider'
		'RestangularProvider'
		'$stateProvider'
		'$urlRouterProvider'
		'sid'
		($httpProvider, RestangularProvider, $stateProvider, $urlRouterProvider, sid) ->
			console.log arguments
			$urlRouterProvider.otherwise '/home'
			$stateProvider
			.state 'home',
				template: '<div>home page</div>'
				url: '/home'
			RestangularProvider.setBaseUrl 'http://localhost:9004'
			RestangularProvider.addResponseInterceptor (data, operation, what, url, response, deferred) ->
				console.log arguments
				if data.results[0].data?
					console.log 666
					newDataArray = []
					for value, i in data.results[0].data
						newRowObject = {}
						for column, ii in data.results[0].data_columns
							newRowObject[do column.toLowerCase] = value[ii]
						newDataArray.push newRowObject
					console.log newDataArray
					newDataArray.meta =
						columns: data.results[0].data_columns
						info: data.results[0].data_info
					return newDataArray
	]
	return app
