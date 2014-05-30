'use strict'

angular

.module 'dashboardApp'

.controller 'OrderController', ($scope) ->








	# sid = "vMnRFWXXnTazcMUYjIwyHlnkWWWSApQxZmwRxLXRVMvzEHjJQI"

	# $http
	# .get "http://192.168.1.101/cgi-bin/b2e?request=
	# 	<query>
	# 		<command>get</command>
	# 		<object>order</object>
	# 		<where>order_id = '#{$routeParams.orderId}'</where>
	# 		<sid>#{sid}</sid></query>"
	# .success (data) ->
	# 	$scope.orderId = data