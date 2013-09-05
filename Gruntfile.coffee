module.exports = (grunt) ->
  
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-stylus'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.initConfig {
    watch: {
      tasks: 'coffee'
    }

    coffee: {
      compile: {
        files: {
          './src/background.js': ['./coffee/background.coffee']
        }
      }
    }

  }

  grunt.registerTask 'default', 'watch'
  
  return
