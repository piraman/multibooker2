'use strict'

angular

.module 'dashboardApp'

.controller 'MenuController', ($scope) ->

	# Server menu output format
	# [
	# 	{"id":2,
	# 	"children":[
	# 		{"id":3},
	# 		{"id":1},
	# 		{"id":4},
	# 		{"id":5,"children":[
	# 			{"id":6},
	# 			{"id":7},
	# 			{"id":8}
	# 		]},
	# 		{"id":9},
	# 		{"id":10}
	# 	]},
	# 	{"id":11},
	# 	{"id":12}
	# ]

	routePrefix = '/app/dev/dashboard/#'

	$scope.items = [
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
		{route: routePrefix + '/home', text: 'Главная'}
		{route: routePrefix + '/orders', text: 'Заказы'}
	]