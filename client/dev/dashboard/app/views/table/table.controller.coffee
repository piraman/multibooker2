define ['tableModule'], ->

	'use sctrict'

	camelCase = (input) ->
		input
		.toLowerCase()
		.replace /_(.)/g, (match, group1) ->
			do group1.toUpperCase

	transformProfile = (profile) ->
		tmp = {}
		for key, value of profile.results[0].extra_data.object_profile
			tmp[camelCase key] = value
		for column, i in profile.results[0].data_columns
			column = camelCase column
			tmp[column] = []
			for row in profile.results[0].data
				tmp[column].push row[i]
		tmp

	transformData = (data) ->
		tmp = {}
		tmp.data = data.results[0].data
		tmp.info = data.results[0].data_info
		tmp

	angular
	.module 'tableModule'
	.controller 'TableController', ($scope, $location, $http) ->

		entityClientObjectDictionary =
			'/addresses': 'table_hall_addresses'
			'/orders': 'table_order'

		baseUrl = 'http://192.168.1.101/cgi-bin/b2e'
		sid = 'RVFctNtHFnASbLodlAgCCWvviSkFPZSffUjDKrnFkiVKMXUoqF'

		$http
		.get baseUrl, 
			params: 
				request: "
					<query>
						<command>get</command>
						<object>user_profile</object>
						<client_object>#{entityClientObjectDictionary[do $location.path]}</client_object>
						<sid>#{sid}</sid>
					</query>"
		.success (profile, status, headers, config) ->
			console.log profile

			object = profile.results[0].extra_data.object_profile.object_command
			orderBy = profile.results[0].extra_data.object_profile.default_order_by
			clientObject = profile.results[0].extra_data.object_profile.client_object
			rowsMaxNum = profile.results[0].extra_data.object_profile.rows_max_num

			$http
			.get baseUrl, params: request: "
				<query>
					<command>get</command>
					<object>#{object}</object>
					<where></where>
					<order_by>#{orderBy}</order_by>
					<client_object>#{clientObject}</client_object>
					<sid>#{sid}</sid>
					<page_no>1</page_no>
					<rows_max_num>#{rowsMaxNum}</rows_max_num>
				</query>"
			.success (data, status, headers, config) ->

				entity =
					profile: transformProfile profile
					data: transformData data
				console.log entity

				$scope.isVisible = (index) ->
					console.log index
					do entity.profile.visible[index].bool

				$scope.entity = entity



		# http://109.107.177.142:1111/cgi-bin/b2e
		# <query><command>get</command><object>user_profile</object><client_object>table_hall_addresses</client_object><sid>BsWlbjKESramMRQDZCmJSVEebMkEPnnpyZnhvTsYAwdzGofrsf</sid></query>
		# { "results": [ {"extra_data":{"object_profile":{"rmb_menu":{"data_columns":["RMB_MENU_LABEL","OPEN_CLIENT_OBJECT","OPEN_CLIENT_OBJECT_TITLE","WHERE_COLUMNS"],"data":[]},"prepare_insert":{"data_columns":[],"data":[]},"client_object":"table_hall_addresses","client_object_name":"Адреса залов","get_object_command":"hall_addresses","object_command":"hall_addresses","primary_key":"ADDR_ID","parent_key":"","default_where":"","default_order_by":"addr_id","rows_max_num":"30","open_form_client_object":"","additional_functionality":"FALSE","child_client_object":"","new_command":"TRUE","modify_command":"TRUE","remove_command":"TRUE","duplication_function":"TRUE"}},"data_columns":["CLIENT_OBJECT","COLUMN_NAME","CHAR_LENGTH","NAME","WIDTH","ALIGN","VISIBLE","REQUIRED","EDITABLE","INSERTABLE","UPDATABLE","TYPE_OF_EDITOR","QUERABLE","LOV_COMMAND","LOV_WHERE","LOV_COLUMNS","LOV_RETURN_TO_COLUMN","AC_COMMAND","AC_WHERE","AC_COLUMNS","AC_RETURN_TO_COLUMN","REFERENCE_CLIENT_OBJECT","FILTER_TYPE","FILTER_COMMAND","FILTER_COLUMNS","FILTER_LABEL","COLUMN_CHANGE_ACTION_NAME","KEY_TYPE"],"data":[["table_hall_addresses","ADDR_ID","0","id","","","TRUE","FALSE","FALSE","FALSE","TRUE","text","TRUE","","","","","","","","","","","","","id","","PRIMARY_KEY"],["table_hall_addresses","ADDR","200","Адрес","","","TRUE","TRUE","TRUE","TRUE","TRUE","text","TRUE","","","","","","","","","","","","","Адрес","","ATTRIBUTE"],["table_hall_addresses","STATUS","10","STATUS","","","FALSE","FALSE","FALSE","TRUE","TRUE","text","TRUE","","","","","","","","","","","","","STATUS","","ATTRIBUTE"],["table_hall_addresses","OBJVERSION","4000","OBJVERSION","","","FALSE","FALSE","FALSE","TRUE","TRUE","text","TRUE","","","","","","","","","","","","","OBJVERSION","","PRIMARY_KEY"]]}] }
		# <query><command>get</command><object>hall_addresses</object><where></where><order_by>addr_id</order_by><client_object>table_hall_addresses</client_object><sid>BsWlbjKESramMRQDZCmJSVEebMkEPnnpyZnhvTsYAwdzGofrsf</sid><page_no>1</page_no><rows_max_num>30</rows_max_num></query> 
		# { "results": [ {"data_info":{"rows_count":"8","view_name":"HALL_ADDRESSES"},"data_columns":["ADDR_ID","ADDR","STATUS","OBJVERSION"],"data":[["1","Космодамианская набережная, дом 52, строение 8","ACTIVE","20140410173448"],["2","Воздвиженка, 12, Московский Кремль","ACTIVE","20140410173540"],["201","8-й км Рублево-Успенского шоссе","ACTIVE","20140213160442"],["232","Пушкинская площадь, д. 2 (м. Тверская, Пушкинская, Чеховская)","ACTIVE","20140321184941"],["233","Крутицкий вал, 16","ACTIVE","20140410173543"],["244","Ленинские горы, д. 1","ACTIVE","20140410174840"],["281","109125, г. Москва, Волгоградский проспект 46/15","ACTIVE","20140506141044"],["321","Тест 1 28/05/2014 iig","ACTIVE","20140528181739"]]}] }


		# entity:
		# data:
		# 	columns:
		# 		rows:
		# 			cell:
		# 				text:

