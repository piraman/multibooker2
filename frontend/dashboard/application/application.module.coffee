'use sctrict'

angular.module 'application', [
	# vendor
	'ngRoute'
	# modules
	'headbar'
	'menu'
	'dock'
	'order'
]

.config ($routeProvider) ->
	$routeProvider
	.when '/home', templateUrl: 'application/modules/home/home.template.html'

	.when '/orders',
		templateUrl: 'application/modules/order/order.list.template.html',
		controller: 'OrderListController'
	.when '/orders/:orderid',
		templateUrl: 'application/modules/order/order.item.template.html',
		controller: 'OrderItemController'
	.when '/orders/create',
		templateUrl: 'application/modules/order/order.create.template.html',
		controller: 'OrderCreateController'
	.when '/orders/:orderid/tickets',
		templateUrl: 'application/modules/order/order.tickets.template.html',
		controller: 'OrderTicketsController'

	.otherwise redirectTo: '/home'

angular.module 'application'
.controller 'ApplicationController', ($scope) ->
	$scope.title = 'multibooker angular'


# , resolve: {entity: ($route) ->
# 		console.log arguments
# 	}



















# define ['angular', 'ngRoute', 'headbar', 'menu', 'dock'], ->


# define ['angular', 'ngRoute'], (angular, ngRoute) ->
# 	'use sctrict'
# 	angular.module 'application', ['ngRoute']
# 	application.config ($routeProvider) ->
# 		$routeProvider
# 			.when '/home',
# 				templateUrl: 'application/modules/home/home.template.html'
# 			.otherwise redirectTo: '/home'
# 	angular.bootstrap document, ['application']







# define ['ngRoute', 'HomeController', 'OrdersCollectionController', 'OrdersDocumentController', 'OrdersCreateController', 'Orders'], ->
# 	'use scrict'
# 	angular
# 	.module 'app', ['ngRoute', 'controllers', 'services']
# 	.config ($routeProvider) ->

# 		$routeProvider

# 			.when '/home', 
# 				templateUrl: 'app/templates/home/home.template.html', 
# 				controller: 'HomeController'

# 			.when '/orders', 
# 				templateUrl: 'app/templates/orders/orders.collection.template.html', 
# 				controller: 'OrdersCollectionController'
# 				# resolve:
# 				# 	orders: (Orders) -> Orders.query().$promise

# 			.when '/orders/create', 
# 				templateUrl: 'app/templates/orders/orders.create.template.html', 
# 				controller: 'OrdersCreateController'
# 				resolve:
# 					order: (Orders) -> new Orders()

# 			.when '/orders/:orderid', 
# 				templateUrl: 'app/templates/orders/orders.document.template.html', 
# 				controller: 'OrdersDocumentController'
# 				resolve:
# 					order: (Orders, $route) ->
# 						Orders
# 						.get id: $route.current.params.orderid
# 						.$promise

# 			.otherwise redirectTo: '/home'

# 	angular
# 	.bootstrap document, ['app']








#  Defines routes for the application

# app = angular.module "myApp"

# app.config [
#   "$routeProvider", ($routeProvider) ->

#     $routeProvider
#       .when "/products",
#         templateUrl: "templates/products/index.html"
#         controller: "products.IndexCtrl as index"
#         resolve:
#           products: ["Products", (Products) -> Products.query().$promise]

#       .when "/products/create",
#         templateUrl: "templates/products/form.html"
#         controller: "products.FormCtrl as form"
#         resolve:
#           product: ["Products", (Products) -> new Products()]

#       .when "/products/:id/edit",
#         templateUrl: "templates/products/form.html"
#         controller: "products.FormCtrl as form"
#         resolve:
#           product: ["Products", "$route", (Products, $route) ->
#             Products.get(id: $route.current.params.id).$promise
#           ]

#       .when "/products/:id",
#         templateUrl: "templates/products/show.html"
#         controller: "products.ShowCtrl as show"
#         resolve:
#           product: ["Products", "$route", (Products, $route) ->
#             Products.get(id: $route.current.params.id).$promise
#           ]

#       .when "/other",
#         templateUrl: "templates/other.html"
#         controller: "OtherCtrl as other"

#       .when "/tasks",
#         templateUrl: "templates/tasks.html"
#         controller: "TasksCtrl as tasks"

#       .otherwise redirectTo: "/products"
# ]


		# .when '/addresses', templateUrl: 'app/templates/collection/collection.template.html', controller: 'AddressesCollectionController'
		# .when '/addresses/:addressid', templateUrl: 'app/templates/document/document.template.html', controller: 'AddressesDocumentController'
		# .when '/halls', templateUrl: 'app/templates/collection/collection.template.html', controller: 'CollectionController'
		# .when '/halls/:hallid', templateUrl: 'app/templates/document/document.template.html', controller: 'DocumentController'
		# .when '/orders', templateUrl: 'app/templates/collection/collection.template.html', controller: 'CollectionController'
		# .when '/orders/:orderid', templateUrl: 'app/templates/document/document.template.html', controller: 'DocumentController'
		# .when '/tickets', templateUrl: 'app/templates/collection/collection.template.html', controller: 'CollectionController'
		# .when '/tickets/:ticketid', templateUrl: 'app/templates/document/document.template.html', controller: 'DocumentController'
		# .when '/orders/:orderid/tickets', templateUrl: 'app/templates/collection/collection.template.html', controller: 'CollectionController'
		# .when '/orders/:orderid/tickets/:ticketid', templateUrl: 'app/templates/document/document.template.html', controller: 'DocumentController'





# define ['angularRoute', 'formController', 'tableController'], ->

# 	'use sctrict'

# 	angular
# 	.module 'app', [
# 		'ngRoute'
# 		'formModule'
# 		'tableModule']
# 	.config ($routeProvider) ->
# 		$routeProvider
# 		.when '/home', templateUrl: 'app/views/home/home.template.html'
# 		.when '/addresses', templateUrl: 'app/views/table/table.template.html', controller: 'TableController'
# 		.when '/addresses/:id', templateUrl: 'app/views/form/form.template.html', controller: 'FormController'
# 		.when '/orders', 
# 			templateUrl: 'app/views/table/table.template.html', 
# 			controller: 'TableController', 
# 			resolve: 
# 				Entity: ($location) ->
# 					return do $location.path
# 		.when '/orders/:id', templateUrl: 'app/views/form/form.template.html', controller: 'FormController'
# 		.otherwise redirectTo: '/home'

# 		String::bool = ->
# 			(/^(true|TRUE)$/i).test @

# 	angular
# 	.bootstrap document, ['app']
