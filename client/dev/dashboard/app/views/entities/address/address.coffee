'use sctrict'

window.callback = () ->
	console.log arguments

angular

.module 'app'

.controller 'AddressController', ($scope, $routeParams, Address) ->
	$scope.addressId = $routeParams.addressId
	$scope.addressData = Address.read 201

.factory 'Address', ($http) ->

	url = 'http://192.168.1.101/cgi-bin/b2e?request=<query><command>get</command><object>hall</object></query>'

	read: (addressId) ->
		$http
		.get url
		.success (data, status, headers, config, statusText) ->
			console.log arguments

	# config =
	# 	params:
	# 		request: '<query><command>get</command><object>hall</object></query>'
	# 		callback: 'JSON_CALLBACK'
	# 	transformResponse: () ->
	# 		return {
	# 			"Content-Type": "text/javascript"
	# 		}
	# url = 'http://192.168.1.101/cgi-bin/b2e'

	# create: (data) ->

	# 	$http
	# 		.jsonp url, config
	# 		.success (data) ->
	# 			console.log data




	# function HistoryController($http, $scope) {
 #        $scope.loaded = false;
 #        var config = {
 #            params: {
 #                action: "query",
 #                prop: "revisions",
 #                format: "json",
 #                rvlimit: 50,
 #                titles: "Barack Obama",
 #                callback: "JSON_CALLBACK"    
 #            }           
 #        };
    
 #        var url = "http://en.wikipedia.org/w/api.php?";
    
 #        $http.jsonp(url, config).success(function(data) {
 #            var pages = data.query.pages;
                
 #            for (var pageid in pages)
 #            {        
 #                $scope.revisions = pages[pageid].revisions;
 #                break; // expect only one page
 #            }
        
 #            $scope.loaded = true;
 #  		});
	# }


	# create: (data) ->
	# 	$http
	# 	.post "http://192.168.1.101/api/v1/addresses/", data, {}
	# 	.success (data, status, headers, config, statusText) ->




# data – {string|Object} – The response body transformed with the transform functions.
# status – {number} – HTTP status code of the response.
# headers – {function([headerName])} – Header getter function.
# config – {Object} – The configuration object that was used to generate the request.
# statusText – {string} – HTTP status text of the response.


# +.factory 'Address', ($http) ->
#  +
#  +	sid = 'lnpkKtgPpFTsnKVnlJWNulmaaViUpRZGaXsprhRePXJAQMCELX'
#  +
#  +	get: (addressId) ->
#  +		o =
#  +			command: 'get'
#  +			object: 'hall_addresses'
#  +			sid: sid
#  +			where: "addr_id = '#{addressId}'"
#  +		query = makeQuery o
#  +		$http.get query