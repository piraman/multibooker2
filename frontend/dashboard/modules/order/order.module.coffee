define [
	'angular'
	'uirouter'
	'restangular'
], (angular) ->
	'use strict'
	order = angular.module 'app.order', [
		'ui.router'
		'restangular'
	]
	order.config [
		'$stateProvider'
		($stateProvider) ->
			$stateProvider
			.state 'order',
				abstract: yes
				template: '<div>Orders view wrapper</div><ui-view></ui-view>'
				url: '/orders'
			.state 'order.collection',
				templateUrl: './modules/order/templates/order.collection.template.html'
				controller: 'OrderCollectionController'
				url: ''
			.state 'order.document',
				templateUrl: './modules/order/templates/order.document.template.html'
				controller: 'OrderDocumentController'
				url: '/{orderId:[0-9]}'
	]
	order
