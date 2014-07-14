define ['../../app.module'], (app) ->
	'use strict'
	app.directive 'typeahead', ->
		templateUrl: './directives/typeahead/app.typeahead.template.html'
		replace: yes
		restrict: 'E'
		scope:
			typeaheadApiEndpointIdColumn: '@'
			typeaheadApiEndpointValueColumn: '@'
			typeaheadApiEndpoint: '@'
			typeaheadIdColumn: '@'
			typeaheadIdModel: '='
			typeaheadValueColumn: '@'
			typeaheadValueModel: '='
		controller: ($scope, $element, $attrs, $transclude, Restangular) ->
			$scope.showDropdown = no
			$scope.items = null
			$scope.$watch 'typeaheadValueModel', (newval, oldval) ->
				$scope.term = $scope.typeaheadValueModel
			$scope.toggleDropdown = ->
				unless $scope.showDropdown
					items = Restangular.all $scope.typeaheadApiEndpoint
					promise = do items.getList
					promise.then (items) ->
						$scope.items = items
				$scope.showDropdown = not $scope.showDropdown
			$scope.clearTerm = ->
				$scope.term = ''
			$scope.selectItem = (index) ->
				selectedItem = $scope.items[index]
				console.log selectedItem
				$scope.term = selectedItem[$scope.typeaheadApiEndpointValueColumn]
				$scope.typeaheadValueModel = selectedItem[$scope.typeaheadApiEndpointValueColumn]
				$scope.typeaheadIdModel = selectedItem.id
				do $scope.toggleDropdown



	# 	definitionObject =
	# 		priority: 0
	# 		template: '<div></div>'
	# 		replace: no
	# 		transclude: no
	# 		restrict: 'A'
	# 		scope: off
	# 		controller: ($scope, $element, $attrs, $transclude, otherInjectables) ->
	# 		compile: (templateElement, templateAttrs, transclude) ->
	# 			pre: (scope, iElement, iAttrs, controller) ->
	# 			post: (scope, iElement, iAttrs, controller) ->
	# 		link: (scope, iElement, iAttrs) ->
	# 	definitionObject





	# app.directive 'habraHabr', ->
	# 	link: ($scope, element, attrs) ->
	# 		$scope.$watch attrs.habraHabr, (value) ->
	# 			element.text value + attrs.habra
	# app.directive 'habraHabrWork', ->
	# 	compile: (templateElement, templateAttrs) ->
	# 		templateElement.prepend "<div>{{#{templateAttrs.habraHabrWork}}}#{templateAttrs.habra}</div>"
	# 		pre: ($scope, element, attrs, controller) ->
	# 			$scope.log += templateAttrs.habra + ' prelink \n'
	# 		post: ($scope, element, attrs, controller) ->
	# 			$scope.log += templateAttrs.habra + ' postlink \n'
	# 	link: ($scope, element, attrs) ->



		# link: ($scope, element, attrs) ->
		# 	$scope.$watch attrs.habraHabr, (value) ->
		# 		element.text value + attrs.habra

		# ($scope, element, attrs) ->
		# 	$scope.$watch attrs.habraHabr, (value) ->
		# 		element.text value + attrs.habra




















		# restrict: 'E'
		# scope:
		# 	typeaheadUrl: '@'
		# 	typeaheadEndpoint: '@'
		# 	typeaheadColumns: '@'
		# 	typeaheadId: '='
		# 	typeaheadText: '='
		# 	typeaheadWhere: '='
		# link: ($scope, element, attrs) ->
		# 	$scope.$watch 'typeaheadWhere', (value) ->
		# 		console.log value
		# 	element.click ->
		# 		alert 7
				# $scope.$apply ->





	# app.directive 'typeahead', ->
	# 	restrict: 'E'
	# 	transclude: yes
	# 	scope:
	# 		apiEndpoint: '='
	# 		columns: '='
	# 	controller: [
	# 		'$scope'
	# 		'$element'
	# 	],
	# 	link













	# app.directive 'typeahead', [
	# 	'$timeout'
	# 	($timeout) ->
	# 		restrict: 'AEC'
	# 		scope:
	# 			items: '='
	# 			prompt: '@'
	# 			title: '@'
	# 			subtitle: '@'
	# 			model: '='
	# 			onSelect: '&'
	# 		link: (scope, elem, attrs) ->
	# 			console.log scope, elem, attrs
	# 			scope.handleSelection = (selectedItem) ->
	# 				console.log selectedItem
	# 				scope.model = selectedItem
	# 				scope.current = 0
	# 				scope.selected = yes
	# 				$timeout(->
	# 					scope.onSelect()
	# 				200)
	# 			scope.current = 0
	# 			scope.selected = yes
	# 			scope.isCurrent = (index) ->
	# 				scope.current is index
	# 			scope.setCurrent = (index) ->
	# 				scope.current = index
	# 		templateUrl: 'templates/app.typeahead.template.html'

	# ]