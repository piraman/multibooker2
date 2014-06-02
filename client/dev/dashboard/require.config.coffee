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
	shim:
		angularResource:
			deps: ['angular']
			exports: 'angularResource'
		angularRoute:
			deps: ['angular']
			exports: 'angularRoute'

require ['app']