require.config
	paths:
		angular: '../bower_components/angular/angular'
		lodash: '../bower_components/lodash/dist/lodash.compat'
		restangular: '../bower_components/restangular/dist/restangular'
		uirouter: '../bower_components/angular-ui-router/release/angular-ui-router'
		domready: '../bower_components/requirejs-domready/domready'
		# angucomplete: '../bower_components/angucomplete/angucomplete'
		# uibootstrap: '../bower_components/angular-bootstrap/ui-bootstrap-tpls'
	shim:
		angular: exports: 'angular'
		restangular: ['angular', 'lodash']
		uirouter: ['angular']
	deps: ['./app.bootstrap']

