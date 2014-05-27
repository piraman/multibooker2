'use strict'

angular

.module 'dashboardApp'

.controller 'MenuController', ($scope) ->

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