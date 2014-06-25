define ['angular', 'restangular'], (angular, restangular) ->
	'use strict'
	collection = angular.module 'collection', ['restangular']
	.constant 'API_BASE_URL', 'http://localhost:9004'
	.config (RestangularProvider, API_BASE_URL) ->
		console.log RestangularProvider
		RestangularProvider.setBaseUrl API_BASE_URL
		RestangularProvider.setRestangularFields
			id: 'addr_id'
		RestangularProvider.addResponseInterceptor (data, operation, what, url, response, deferred) ->
			collection = []
			for item, i in data.results[0].data
				rowObject = {}
				for column, ii in  data.results[0].data_columns
					rowObject[do column.toLowerCase] = item[ii]
				collection.push rowObject
			console.log 'collection', collection
			collection.meta =
				columns: data.results[0].data_columns
				info: data.results[0].data_info
			collection




			# data =
			# 	meta:
			# 		columns: data.results[0].data_columns
			# 		info: data.results[0].data_info
			# 	data: []


			# console.log data, operation, what, url, response, deferred
			# data = [{id:1,name:'name1'}, {id:2,name:'name2'}]
			# data.meta = {paging:6}
			# data
			# data.results[0].data
			# console.log arguments
			# newResponse =
			# 	data: [{id: 1, name: 'name'}, {id: 2, name: 'name2'}]
			# 	meta: {paging: 8}
			# 	# collection: data.results[0].data
			# 	# meta:
			# 	# 	columns: data.results[0].data_columns
			# 	# 	info: data.results[0].data_info
			# newResponse
	# .config (RestangularProvider) ->
	# 	RestangularProvider.setListTypeIsArray no
	# 	# RestangularProvider.setResponseExtractor (response, operation, what, url) ->
	# 	# 	console.log arguments
	# 	# 	newResponse =
	# 	# 		data: response.data.results[0].data
	# 	# 		meta:
	# 	# 			columns: response.data.results[0].data_columns
	# 	# 			meta: response.data.results[0].data_info
	# collection