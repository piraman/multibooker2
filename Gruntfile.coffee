module.exports = (grunt) ->

	grunt.initConfig
		jade:
			options:
				pretty: yes
			compile:
				expand: yes
				cwd: 'app/dev/'
				src: ['**/*.jade']
				dest: 'app/dev/'
				ext: '.html'
		# slim:
		# 	options:
		# 		pretty: yes
		# 	compile:
		# 		expand: yes
		# 		cwd: 'app/dev/'
		# 		src: ['**/*.slim']
		# 		dest: 'app/dev/'
		# 		ext: '.html'
		stylus:
			options:
				compress: no
			compile:
				expand: yes
				cwd: 'app/dev/'
				src: ['**/*.styl']
				dest: 'app/dev/'
				ext: '.css'
		coffee:
			options:
				bare: no
			compile:
				expand: yes
				cwd: 'app/dev/'
				src: ['**/*.coffee']
				dest: 'app/dev/'
				ext: '.js'
		watch:
			options:
				livereload:
					port: 35730
			jade:
				files: ['app/dev/**/*.jade']
				tasks: ['newer:jade']
			# slim:
			# 	files: ['app/dev/**/*.slim']
			# 	tasks: ['newer:slim']
			stylus:
				files: ['app/dev/**/*.styl']
				tasks: ['newer:stylus']
			coffee:
				files: ['app/dev/**/*.coffee']
				tasks: ['newer:coffee']


	grunt.loadNpmTasks 'grunt-contrib-coffee'
	grunt.loadNpmTasks 'grunt-contrib-jade'
	# grunt.loadNpmTasks 'grunt-slim'
	grunt.loadNpmTasks 'grunt-contrib-stylus'
	grunt.loadNpmTasks 'grunt-contrib-watch'
	grunt.loadNpmTasks 'grunt-newer'

	grunt.registerTask 'default', ['jade', 'stylus', 'coffee', 'watch']