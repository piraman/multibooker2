(function() {
  var makeQuery;

  makeQuery = function(params) {
    var baseUrl, html, key, value;
    baseUrl = "http://192.168.1.101/cgi-bin/b2e?request=";
    html = "";
    for (key in params) {
      value = params[key];
      html += "<" + key + ">" + value + "</" + key + ">";
    }
    return "" + baseUrl + "<query>" + html + "</query>";
  };

  'use sctrict';

  angular.module('dashboardApp').factory('Address', function($http) {
    var sid;
    sid = 'lnpkKtgPpFTsnKVnlJWNulmaaViUpRZGaXsprhRePXJAQMCELX';
    return {
      get: function(addressId) {
        var o, query;
        o = {
          command: 'get',
          object: 'hall_addresses',
          sid: sid,
          where: "addr_id = '" + addressId + "'"
        };
        query = makeQuery(o);
        return $http.get(query);
      }
    };
  });

}).call(this);
