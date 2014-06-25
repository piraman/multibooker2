define ['./app.module'], (app) ->
	'use strict'
	app.constant 'ROUTES', do ->
		ADDRESSES: '/addresses'
		ADDRESS: '/addresses/:addressid'
		ADDRESS_CREATE: '/addresses/create'
		HALLS: '/halls'
		HALL: '/halls/:hallid'
		HALL_CREATE: '/halls/create'
	app.constant 'API_BASE_URL', 'http://localhost:9004'
	app.constant 'API_ROUTES', do ->
		ADDRESSES: 'addresses'
