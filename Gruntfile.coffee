module.exports = (grunt) ->

	grunt.initConfig
		coffee:
			options:
				bare: no
			compile:
				expand: yes
				cwd: "app/dev/"
				src: ["**/*.coffee"]
				dest: "app/dev/"
				ext: ".js"
		jade:
			options:
				pretty: yes
			compile:
				expand: yes
				cwd: "app/dev/"
				src: ["**/*.jade"]
				dest: "app/dev/"
				ext: ".html"
		# sass:
		# 	compile:
		# 		expand: yes
		# 		cwd: "./"
		# 		src: ["**/*.scss"]
		# 		dest: "./"
		# 		ext: ".css"
		watch:
			options:
				livereload:
					port: 35730
			coffee:
				files: ["app/dev/**/*.coffee"]
				tasks: ["newer:coffee"]
			jade:
				files: ["app/dev/**/*.jade"]
				tasks: ["newer:jade"]
			# sass:
			# 	files: ["./**/*.scss"]
			# 	tasks: ["newer:sass"]

	grunt.loadNpmTasks "grunt-contrib-coffee"
	grunt.loadNpmTasks "grunt-contrib-jade"
	# grunt.loadNpmTasks "grunt-contrib-sass"
	grunt.loadNpmTasks "grunt-contrib-watch"
	grunt.loadNpmTasks "grunt-newer"

	grunt.registerTask "default", ["coffee", "jade", "watch"]