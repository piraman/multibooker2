module.exports = (grunt) ->

	grunt.initConfig
		jade:
			options:
				pretty: yes
			compile:
				expand: yes
				cwd: 'app/'
				src: ['**/*.jade']
				dest: 'app/'
				ext: '.html'
		stylus:
			options:
				compress: no
			compile:
				expand: yes
				cwd: 'app/'
				src: ['**/*.styl']
				dest: 'app/'
				ext: '.css'
		coffee:
			options:
				bare: no
			compile:
				expand: yes
				cwd: 'app/'
				src: ['**/*.coffee']
				dest: 'app/'
				ext: '.js'
		watch:
			options:
				livereload:
					port: 35730
			jade:
				files: ['app/**/*.jade']
				tasks: ['newer:jade']
			stylus:
				files: ['app/**/*.styl']
				tasks: ['newer:stylus']
			coffee:
				files: ['app/**/*.coffee']
				tasks: ['newer:coffee']


	grunt.loadNpmTasks 'grunt-contrib-coffee'
	grunt.loadNpmTasks 'grunt-contrib-jade'
	grunt.loadNpmTasks 'grunt-contrib-stylus'
	grunt.loadNpmTasks 'grunt-contrib-watch'
	grunt.loadNpmTasks 'grunt-newer'

	grunt.registerTask 'default', ['jade', 'stylus', 'coffee', 'watch']