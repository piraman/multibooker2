'use strict'

angular

.module 'dashboardApp', [
	'ngRoute'
	'ngAnimate'
]

.config ($routeProvider) ->
	$routeProvider
		.when '/',
			redirectTo: '/home'
		.when '/home',
			templateUrl: '../dashboard/views/home.html'
			controller: 'HomeController'
		.when '/orders',
			templateUrl: '../dashboard/views/table.html'
			controller: 'TableController'
		.otherwise
			redirectTo: '/home'
