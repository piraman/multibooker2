module.exports = (grunt) ->

	grunt.initConfig
		jade:
			options:
				pretty: yes
			compile:
				expand: yes
				cwd: './'
				src: ['**/*.jade', '!bower_components/**', '!node_modules/**']
				dest: './'
				ext: '.html'
				extDot: 'last'
		stylus:
			options:
				compress: no
			compile:
				expand: yes
				cwd: './'
				src: ['**/*.styl', '!bower_components/**', '!node_modules/**']
				dest: './'
				ext: '.css'
				extDot: 'last'
		coffee:
			options:
				bare: no
			compile:
				expand: yes
				cwd: './'
				src: ['**/*.coffee', '!bower_components/**', '!node_modules/**', '!Gruntfile.coffee']
				dest: './'
				ext: '.js'
				extDot: 'last'
		watch:
			options:
				livereload:
					port: 9002
			jade:
				files: ['./**/*.jade', '!bower_components/**', '!node_modules/**']
				tasks: ['newer:jade']
			stylus:
				files: ['./**/*.styl', '!bower_components/**', '!node_modules/**']
				tasks: ['newer:stylus']
			coffee:
				files: ['./**/*.coffee', '!bower_components/**', '!node_modules/**', '!Gruntfile.coffee']
				tasks: ['newer:coffee']

	grunt.loadNpmTasks 'grunt-contrib-coffee'
	grunt.loadNpmTasks 'grunt-contrib-jade'
	grunt.loadNpmTasks 'grunt-contrib-stylus'
	grunt.loadNpmTasks 'grunt-contrib-watch'
	grunt.loadNpmTasks 'grunt-newer'

	grunt.registerTask 'default', ['jade', 'stylus', 'coffee', 'watch']