define ['./menu.module'], (menu) ->
	menu.controller 'MenuController', ($scope) ->
		$scope.items = [
			{text: 'Addresses', link: 'addresses.collection'}
			{text: 'Adderss 1', link: 'addresses.document({addressId: 1})'}
			{text: 'Home', link: 'home'}
		]
