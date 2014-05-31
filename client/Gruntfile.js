(function() {
  module.exports = function(grunt) {
    grunt.initConfig({
      coffee: {
        options: {
          bare: false
        },
        compile: {
          expand: true,
          cwd: "./",
          src: ["**/*.coffee"],
          dest: "./",
          ext: ".js"
        }
      },
      jade: {
        options: {
          pretty: true
        },
        compile: {
          expand: true,
          cwd: "./",
          src: ["**/*.jade"],
          dest: "./",
          ext: ".html"
        }
      },
      watch: {
        options: {
          livereload: {
            port: 35730
          }
        },
        coffee: {
          files: ["./**/*.coffee"],
          tasks: ["newer:coffee"]
        },
        jade: {
          files: ["./**/*.jade"],
          tasks: ["newer:jade"]
        }
      }
    });
    grunt.loadNpmTasks("grunt-contrib-coffee");
    grunt.loadNpmTasks("grunt-contrib-jade");
    grunt.loadNpmTasks("grunt-contrib-watch");
    grunt.loadNpmTasks("grunt-newer");
    return grunt.registerTask("default", ["coffee", "jade", "watch"]);
  };

}).call(this);
