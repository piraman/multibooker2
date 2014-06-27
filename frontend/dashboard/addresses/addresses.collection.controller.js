(function() {
  define(['./addresses.module'], function(addresses) {
    return addresses.controller('AddressesCollectionController', function(addresses) {
      console.log(addresses);
      return addresses.post({
        id: 5
      });
    });
  });

}).call(this);
