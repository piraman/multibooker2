define [
	'angular'
	'uirouter'
	'restangular'
	'./modules/address/address.index'
	'./modules/menu/menu.index'
	'./modules/hall/hall.index'
], (angular) ->
	'use strict'
	app = angular.module 'app', [
		'ui.router'
		'restangular'
		'app.address'
		'app.menu'
		'app.hall'
	]
	app.constant 'sid', 'bwPxKUPqWMoCTWQoolBnXdSkYnxudrYuQyTUQcKIBEMSjxBsHN'
	app.config [
		'$stateProvider'
		'$urlRouterProvider'
		'RestangularProvider'
		($stateProvider, $urlRouterProvider, RestangularProvider) ->
			$urlRouterProvider.otherwise '/home'
			$stateProvider
			.state 'home',
				template: '<div>home page</div>'
				url: '/home'
			RestangularProvider.setBaseUrl 'http://localhost:9004'
			RestangularProvider.addResponseInterceptor (data, operation, what, url, response, deferred) ->
				console.log arguments
				if data.results[0].data?
					newDataArray = []
					if what is 'addresses' then data.results[0].data_columns[data.results[0].data_columns.indexOf 'ADDR_ID'] = 'id'
					else if what is 'halls' then data.results[0].data_columns[data.results[0].data_columns.indexOf 'HALL_ID'] = 'id'
					for value, i in data.results[0].data
						newRowObject = {}
						for column, ii in data.results[0].data_columns
							newRowObject[do column.toLowerCase] = value[ii]
						newDataArray.push newRowObject
					console.log newDataArray
					newDataArray.meta =
						columns: data.results[0].data_columns.join('|').toLowerCase().split('|')
						info: data.results[0].data_info
					return newDataArray
	]
	app









# define [
# 	'angular'
# 	'restangular'
# 	'uirouter'
# 	'./addresses/addresses.index'
# 	'./menu/menu.index'
# ], (angular) ->
# 	'use strict'
# 	appModule = angular.module 'app', [
# 		'restangular'
# 		'ui.router'
# 		'app.addresses'
# 		'app.menu'
# 	]
# 	appModule.constant 'sid', 'bwPxKUPqWMoCTWQoolBnXdSkYnxudrYuQyTUQcKIBEMSjxBsHN'
# 	appModule.config [
# 		'$httpProvider'
# 		'RestangularProvider'
# 		'$stateProvider'
# 		'$urlRouterProvider'
# 		'sid'
# 		($httpProvider, RestangularProvider, $stateProvider, $urlRouterProvider, sid) ->
# 			console.log arguments
# 			$urlRouterProvider.otherwise '/home'
# 			$stateProvider
# 			.state 'home',
# 				template: '<div>home page</div>'
# 				url: '/home'
# 			RestangularProvider.setBaseUrl 'http://localhost:9004'
# 			RestangularProvider.addResponseInterceptor (data, operation, what, url, response, deferred) ->
# 				console.log arguments
# 				if data.results[0].data?
# 					console.log 666
# 					newDataArray = []
# 					for value, i in data.results[0].data
# 						newRowObject = {}
# 						for column, ii in data.results[0].data_columns
# 							newRowObject[do column.toLowerCase] = value[ii]
# 						newDataArray.push newRowObject
# 					console.log newDataArray
# 					newDataArray.meta =
# 						columns: data.results[0].data_columns
# 						info: data.results[0].data_info
# 					return newDataArray
# 	]
