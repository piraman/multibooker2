define ['../hall.module'], (hall) ->
	'use strict'
	hall.controller 'HallDocumentController', ->



						# resolve: Address: ['$stateParams', 'Restangular', ($stateParams, Restangular) -> do Restangular.one('addresses', $stateParams.addressId).get]