'use strict'

angular

.module 'dashboardApp', [
	'ngRoute'
]

.config ($routeProvider) ->
	$routeProvider
		.when '/',
			redirectTo: '/home'
		.when '/home',
			templateUrl: '../dashboard/views/home.html'
			controller: 'HomeController'
		.otherwise
			redirectTo: '/home'
