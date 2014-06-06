module.exports = (grunt) ->

	grunt.initConfig
		jade:
			options:
				pretty: yes
			compile:
				expand: yes
				cwd: 'dev/'
				src: ['**/*.jade']
				dest: 'dev/'
				ext: '.html'
				extDot: 'last'
		stylus:
			options:
				compress: no
			compile:
				expand: yes
				cwd: 'dev/'
				src: ['**/*.styl']
				dest: 'dev/'
				ext: '.css'
				extDot: 'last'
		coffee:
			options:
				bare: no
			compile:
				expand: yes
				cwd: 'dev/'
				src: ['**/*.coffee']
				dest: 'dev/'
				ext: '.js'
				extDot: 'last'
		watch:
			options:
				livereload:
					port: 35730
			jade:
				files: ['dev/**/*.jade']
				tasks: ['newer:jade']
			stylus:
				files: ['dev/**/*.styl']
				tasks: ['newer:stylus']
			coffee:
				files: ['dev/**/*.coffee']
				tasks: ['newer:coffee']


	grunt.loadNpmTasks 'grunt-contrib-coffee'
	grunt.loadNpmTasks 'grunt-contrib-jade'
	grunt.loadNpmTasks 'grunt-contrib-stylus'
	grunt.loadNpmTasks 'grunt-contrib-watch'
	grunt.loadNpmTasks 'grunt-newer'

	grunt.registerTask 'default', ['jade', 'stylus', 'coffee', 'watch']