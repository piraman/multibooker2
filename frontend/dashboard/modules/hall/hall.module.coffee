define [
	'angular'
	'uirouter'
	'restangular'
], (angular) ->
	'use strict'
	hall = angular.module 'app.hall', [
		'ui.router'
		'restangular'
	]
	hall.config [
		'$stateProvider'
		($stateProvider) ->
			$stateProvider
			.state 'hall',
				abstract: yes
				template: '<div>Halls view wrapper</div><ui-view></ui-view>'
				url: '/halls'
			.state 'hall.collection',
				templateUrl: './modules/hall/templates/hall.collection.template.html'
				controller: 'HallCollectionController'
				url: ''
			.state 'hall.document',
				templateUrl: './modules/hall/templates/hall.document.template.html'
				controller: 'HallDocumentController'
				url: '/{hallId:[0-9]}'
	]
	hall
