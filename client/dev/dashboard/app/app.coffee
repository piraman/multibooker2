'use sctrict'

angular

.module 'app', [
	'ngRoute'

	'app.headbar'
	'app.menu'
	'app.dock'
]

.config ($routeProvider) ->

	$routeProvider

		.when '/home', templateUrl: 'app/views/home/home.html'

		.when '/addresses', templateUrl: 'app/views/entities/address/addresses.html', 'AddressesController'
		.when '/addresses/:addressId', templateUrl: 'app/views/entities/address/address.html', controller: 'AddressController'

		.when '/halls', templateUrl: 'app/views/common/table/table.html', controller: 'TableController'
		.when '/halls/:hallId', templateUrl: 'app/views/common/form/forms.html', controller: 'FormController'

		.otherwise redirectTo: '/home'