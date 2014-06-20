define ['./addresses.module'], (addresses) ->
	'use strict'
	addresses.factory 'Addresses', ($http, API) ->
		baseUrl = API + '/addresses'
		readCollection: (cb) ->
			$http.get baseUrl
			.success (data, status, headers, config) ->
				cb data, status, headers, config
			.error (data, status, headers, config) -> 
				cb data, status, headers, config
		create: (data, cb) ->
			$http.post baseUrl, data
			.success (data, status, headers, config) ->
				cb data, status, headers, config
			.error (data, status, headers, config) ->
				cb data, status, headers, config
		read: (addressid, cb) ->
			$http.get baseUrl + '/' + addressid
			.success (data, status, headers, config) ->
				cb data, status, headers, config
			.error (data, status, headers, config) -> 
				cb data, status, headers, config
		update: (addressid, data, cb) ->
			$http.put baseUrl + '/' + addressid, data
			.success (data, status, headers, config) ->
				cb data, status, headers, config
			.error (data, status, headers, config) -> 
				cb data, status, headers, config
		'delete': (addressid, data, cb) ->
			$http.delete baseUrl + '/' + addressid, data: data
			.success (data, status, headers, config) ->
				cb data, status, headers, config
			.error (data, status, headers, config) -> 
				cb data, status, headers, config


		# 	$http method: 'post', url: '/addresses'





		# url = API + '/addresses/:addressid'
		# paramDefaults =
		# 	addressid: '@addressid'
		# actions =
		# 	create: method: 'post', isArray: no
		# 	read: method: 'get', isArray: no
		# 	update: method: 'put', isArray: no, params: addressid: '@addressid'
		# 	'delete': method: 'delete', isArray: no
		# 	query: method: 'get', isArray: no
		# options = {}
		# return $resource url, paramDefaults, actions, options

