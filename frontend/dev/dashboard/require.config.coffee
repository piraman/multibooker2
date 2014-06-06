require.config
	paths:
		# vendor
		angular: '../../bower_components/angular/angular.min'
		ngRoute: '../../bower_components/angular-route/angular-route.min'
		ngResource: '../../bower_components/angular-resource/angular-resource.min'
		Restangular: '../../bower_components/restangular/dist/restangular.min'
		lodash: '../../bower_components/lodash/dist/lodash.underscore.min'
		# app
		app: 'app/app.module'
		# controllers
		controllers: 'app/controllers/controllers.module'
		# pages
		HomeController: 'app/controllers/home/home.controller'
		# orders
		OrdersCollectionController: 'app/controllers/orders/orders.collection.controller'
		OrdersDocumentController: 'app/controllers/orders/orders.document.controller'
		OrdersCreateController: 'app/controllers/orders/orders.create.controller'
		# services
		services: 'app/services/services.module'
		Orders: 'app/services/resources/orders/orders.resource.service'
	shim:
		ngRoute:
			deps: ['angular']
			exports: 'ngRoute'
		ngResource:
			deps: ['angular']
			exports: 'ngResource'
		Restangular:
			deps: ['angular', 'lodash']
			exports: 'Restangular'
require ['app']






# require.config
# 	paths:
# 		angular: '../../bower_components/angular/angular'
# 		angularResource: '../../bower_components/angular-resource/angular-resource.min'
# 		angularRoute: '../../bower_components/angular-route/angular-route.min'
# 		app: 'app/app.module'
# 		formModule: 'app/views/form/form.module'
# 		tableModule: 'app/views/table/table.module'
# 		formController: 'app/views/form/form.controller'
# 		tableController: 'app/views/table/table.controller'
# 		angularHandsontable: '../../bower_components/angular-ui-handsontable/dist/angular-ui-handsontable.full.min'
# 		jquery: '../../bower_components/jquery/dist/jquery.min'
# 	shim:
# 		angularResource:
# 			deps: ['angular']
# 			exports: 'angularResource'
# 		angularRoute:
# 			deps: ['angular']
# 			exports: 'angularRoute'
# 		angularHandsontable:
# 			deps: ['jquery']
# 			exports: 'angularHandsontable'

# require ['app']