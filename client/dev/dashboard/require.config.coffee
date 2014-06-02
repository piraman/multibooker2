require.config
	paths:
		angular: '../../bower_components/angular/angular'
		angularResource: '../../bower_components/angular-resource/angular-resource.min'
		angularRoute: '../../bower_components/angular-route/angular-route.min'
		app: 'app/app.module'
		formModule: 'app/views/form/form.module'
		tableModule: 'app/views/table/table.module'
		formController: 'app/views/form/form.controller'
		tableController: 'app/views/table/table.controller'
		angularHandsontable: '../../bower_components/angular-ui-handsontable/dist/angular-ui-handsontable.full.min'
		jquery: '../../bower_components/jquery/dist/jquery.min'
	shim:
		angularResource:
			deps: ['angular']
			exports: 'angularResource'
		angularRoute:
			deps: ['angular']
			exports: 'angularRoute'
		angularHandsontable:
			deps: ['jquery']
			exports: 'angularHandsontable'

require ['app']