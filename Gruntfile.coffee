module.exports = (grunt) ->
  
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-stylus'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.initConfig {
    watch: {
      coffee: {
        files: [
          'coffee/*.coffee'
          'coffee/all/*.coffee'
          ]
        tasks: ['coffee']
        }

      jade: {
        files: [
          './jade/*.jade'
          ]
        tasks: ['jade']
      }

      stylus: {
        files: [
          './stylus/*.styl'
        ]
        tasks: ['stylus']
      }
      
      options: { nospawn: true }
    }

    coffee: {
      compile: {
        options: { join: true }
        files: {
          './src/background.js': './coffee/background.coffee'
          './src/all.js': './coffee/all/*.coffee'
        }
      }
    }

    jade: {
      compile: {
        options: {
          data: {
            debug: false
            }
          }
        files: {
          './src/index.html': ['./jade/*.jade']
        }
      }
    }

    stylus: {
      compile: {
        files: {
          './src/all.css': ['./stylus/*.styl']
          }
        }
      }

  }

  grunt.registerTask 'default', 'watch'
  
  return
