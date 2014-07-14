define ['../menu.module'], (menu) ->
	menu.controller 'MenuController', ($scope) ->
		$scope.items = [
			{text: 'Home', link: 'home'}
			{text: 'Addresses', link: 'address.collection'}
			{text: 'Adderss 1', link: 'address.document({addressId: 1})'}
			{text: 'Halls', link: 'hall.collection'}
			{text: 'Hall 1', link: 'hall.document({hallId: 1})'}
			{text: 'Orders', link: 'order.collection'}
			{text: 'Order 1', link: 'order.document({orderId: 1})'}
		]
