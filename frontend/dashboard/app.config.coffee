define ['./app.module'], (app) ->
	'use strict'
	app.config ($httpProvider) ->
		$httpProvider.defaults.headers.common['mb-sid'] = 'bwPxKUPqWMoCTWQoolBnXdSkYnxudrYuQyTUQcKIBEMSjxBsHN'
