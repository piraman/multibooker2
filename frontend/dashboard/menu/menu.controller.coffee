define ['./menu.module'], (menu) ->
	'use strict'
	menu.controller 'menu.controller', ($scope) ->
		$scope.items = [
			{route: '#/addresses', text: 'Addresses'}
			{route: '#/addresses/201', text: 'Address 201'}
			{route: '#/addresses/244', text: 'Address 244'}
			{route: '#/addresses/create', text: 'Create address'}
		]