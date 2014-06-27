define ['./addresses.module'], (addresses) ->
	addresses.controller 'AddressesCollectionController', (addresses) ->
		console.log addresses
		addresses.post id: 5