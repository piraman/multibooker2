define ['../address.module'], (address) ->
	'use strict'
	address.controller 'AddressDocumentController', ->



						resolve: Address: ['$stateParams', 'Restangular', ($stateParams, Restangular) -> do Restangular.one('addresses', $stateParams.addressId).get]