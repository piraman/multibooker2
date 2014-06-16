(function() {
  module.exports = function(grunt) {
    grunt.initConfig({
      jade: {
        options: {
          pretty: true
        },
        compile: {
          expand: true,
          cwd: './',
          src: ['**/*.jade'],
          dest: './',
          ext: '.html',
          extDot: 'last'
        }
      },
      stylus: {
        options: {
          compress: false
        },
        compile: {
          expand: true,
          cwd: './',
          src: ['**/*.styl'],
          dest: './',
          ext: '.css',
          extDot: 'last'
        }
      },
      coffee: {
        options: {
          bare: false
        },
        compile: {
          expand: true,
          cwd: './',
          src: ['**/*.coffee'],
          dest: './',
          ext: '.js',
          extDot: 'last'
        }
      },
      watch: {
        options: {
          livereload: {
            port: 35730
          }
        },
        jade: {
          files: ['./**/*.jade'],
          tasks: ['newer:jade']
        },
        stylus: {
          files: ['./**/*.styl'],
          tasks: ['newer:stylus']
        },
        coffee: {
          files: ['./**/*.coffee'],
          tasks: ['newer:coffee']
        }
      }
    });
    grunt.loadNpmTasks('grunt-contrib-coffee');
    grunt.loadNpmTasks('grunt-contrib-jade');
    grunt.loadNpmTasks('grunt-contrib-stylus');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-newer');
    return grunt.registerTask('default', ['jade', 'stylus', 'coffee', 'watch']);
  };

}).call(this);
