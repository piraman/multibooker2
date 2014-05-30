'use strict'

angular

.module 'dashboardApp'

.controller 'AddressController', ($scope, $routeParams, Address) ->

	Address
	.get $routeParams.addressId
	.success (data, status, func) ->
		console.log arguments
		$scope.addressData = JSON.stringify data



	# http://192.168.1.101/cgi-bin/b2e?request=%3Cquery%3E%3Ccommand%3Eget%3C%2Fcommand%3E%3Cobject%3Emain_search%3C%2Fobject%3E%3Csid%3EiWHSKKPAgIHhWTlzuTBuHwVEeQPIiQUmcUdGJragnmzjaGrbAy%3C%2Fsid%3E%3Cwhere%3Eupper(SEARCH_FIELD)+like+upper(%27%7Cpercent%7Crr%7Cpercent%7C%27)%3C%2Fwhere%3E%3C%2Fquery%3E
	# sid = "vMnRFWXXnTazcMUYjIwyHlnkWWWSApQxZmwRxLXRVMvzEHjJQI"
	# $http
	# .get "http://192.168.1.101/cgi-bin/b2e?request=<query><object>hall_address</object><hall_address_id>#{$routeParams.addressId}</hall_address_id><command>get</command><sid>#{sid}</sid></query>"
	# .success (data) ->
	# 	$scope.addressId = data
	# $scope.addressId = $routeParams.addressId
	# $scope.addressId = do Address.query
