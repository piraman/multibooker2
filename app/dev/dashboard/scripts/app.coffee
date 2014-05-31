'use strict'

angular

.module 'dashboardApp', [
	'ngRoute'
	'ngResource'
]

.config ($routeProvider) ->

	templateUrlPrefix = '../dashboard/templates'

	# Various types of controllers which interacts with entities (in orders example):
	# OrdersController - controlling list of orders, commonly a table directive with orders
	# OrderController - controlling a form with just one order
	# OrderDetailController - controlling an order form where it possible to place child object like tickets, commonly with table directive
	# OrderCompoundController - controlling an order form with custom features

	$routeProvider

		.when '/',
			redirectTo: '/home'

		.when '/home',
			templateUrl: "#{templateUrlPrefix}/pages/home/home.html"
			controller: 'HomeController'

		.when '/addresses',
			templateUrl: "#{templateUrlPrefix}/entities/addresses/addresses.html"
			controller: 'AddressesController'
		.when '/addresses/:addressId',
			templateUrl: "#{templateUrlPrefix}/entities/addresses/address.html"
			controller: 'AddressController'

		.when '/orders',
			templateUrl: "#{templateUrlPrefix}/entities/orders/orders.html"
			controller: 'OrdersController'
		.when '/orders/:orderId',
			templateUrl: "#{templateUrlPrefix}/entities/orders/order.html"
			controller: 'OrderController'

		.otherwise
			redirectTo: '/home'
