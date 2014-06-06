(function() {
  require.config({
    paths: {
      angular: '../../bower_components/angular/angular.min',
      ngRoute: '../../bower_components/angular-route/angular-route.min',
      ngResource: '../../bower_components/angular-resource/angular-resource.min',
      Restangular: '../../bower_components/restangular/dist/restangular.min',
      lodash: '../../bower_components/lodash/dist/lodash.underscore.min',
      app: 'app/app.module',
      controllers: 'app/controllers/controllers.module',
      HomeController: 'app/controllers/home/home.controller',
      OrdersCollectionController: 'app/controllers/orders/orders.collection.controller',
      OrdersDocumentController: 'app/controllers/orders/orders.document.controller',
      OrdersCreateController: 'app/controllers/orders/orders.create.controller',
      services: 'app/services/services.module',
      Orders: 'app/services/resources/orders/orders.resource.service'
    },
    shim: {
      ngRoute: {
        deps: ['angular'],
        exports: 'ngRoute'
      },
      ngResource: {
        deps: ['angular'],
        exports: 'ngResource'
      },
      Restangular: {
        deps: ['angular', 'lodash'],
        exports: 'Restangular'
      }
    }
  });

  require(['app']);

}).call(this);
