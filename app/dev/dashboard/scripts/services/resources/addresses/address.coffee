makeQuery = (params) ->
	baseUrl = "http://192.168.1.101/cgi-bin/b2e?request="
	html = ""
	for key, value of params
		html += "<#{key}>#{value}</#{key}>"
	"#{baseUrl}<query>#{html}</query>"

'use sctrict'

angular

.module 'dashboardApp'

.factory 'Address', ($http) ->

	sid = 'lnpkKtgPpFTsnKVnlJWNulmaaViUpRZGaXsprhRePXJAQMCELX'

	get: (addressId) ->
		o =
			command: 'get'
			object: 'hall_addresses'
			sid: sid
			where: "addr_id = '#{addressId}'"
		query = makeQuery o
		$http.get query














# .factory 'Address', ($resource) ->
# 	$resource 'app/dev/dashboard/addresses/:addressId', {
# 		addressId: '@addressId'
# 	},
# 		read:
# 			# url: 'http://192.168.1.101/cgi-bin/b2e'
# 			method: 'GET'
# 			# params:
# 			# 	request: '<query></query>'
# 			isArray: no
# 			transformRequest: (data, headersGetter) ->
# 				console.log arguments






# .factory 'Address', ($resource) ->
# 	return $resource '/addresses/:addressId',
# 		addressId: '@addressId'

# .factory 'Addresses', (Address, $q) ->
# 	return ->
# 		delay = do $q.defer
# 		Address.query (a) ->

