define ['./addresses.module'], (addresses) ->
	'use strict'
	addresses.factory 'Addresses', ($http, API) ->
		baseUrl = API + '/addresses'
		readCollection: ->
			res = $http.get baseUrl
			.success (data, status, headers, config) ->
				data
			.error (data, status, headers, config) -> 
				data
			res
		create: (data) ->
			$http.post baseUrl, data
			.success (data, status, headers, config) ->
				data
			.error (data, status, headers, config) ->
				data
		read: (addressid) ->
			$http.get baseUrl + '/' + addressid
			.success (data, status, headers, config) ->
				data
			.error (data, status, headers, config) -> 
				data
		update: (addressid, data) ->
			$http.put baseUrl + '/' + addressid, data: data
			.success (data, status, headers, config) ->
				data
			.error (data, status, headers, config) -> 
				data
		'delete': (addressid, data) ->
			$http.delete baseUrl + '/' + addressid, data: data
			.success (data, status, headers, config) ->
				data
			.error (data, status, headers, config) -> 
				data


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

