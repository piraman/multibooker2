define ['angularRoute', 'formController', 'tableController'], ->

	'use sctrict'

	angular
	.module 'app', [
		'ngRoute'
		'formModule'
		'tableModule']
	.config ($routeProvider) ->
		$routeProvider
		.when '/home', templateUrl: 'app/views/home/home.template.html'
		.when '/addresses', templateUrl: 'app/views/table/table.template.html', controller: 'TableController'
		.when '/addresses/:id', templateUrl: 'app/views/form/form.template.html', controller: 'FormController'
		.when '/orders', templateUrl: 'app/views/table/table.template.html', controller: 'TableController'
		.when '/orders/:id', templateUrl: 'app/views/form/form.template.html', controller: 'FormController'
		.otherwise redirectTo: '/home'

		String::bool = ->
			(/^(true|TRUE)$/i).test @

	angular
	.bootstrap document, ['app']
