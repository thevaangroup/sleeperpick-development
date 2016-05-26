axis         	= require 'axis'
rupture      	= require 'rupture'
autoprefixer 	= require 'autoprefixer-stylus'
css_pipeline  	= require 'css-pipeline'
js_pipeline   	= require 'js-pipeline'
browserify    	= require 'roots-browserify'
babelify      	= require 'babelify'
image_pipeline	= require 'roots-image-pipeline'
contentful   	= require 'roots-contentful'
config       	= require './contentful'
marked       	= require 'marked'

module.exports =
  ignores: [
    'README.md', 
    'ROADMAP.md', 
    'LICENSE',
    'bower*', 
    'bower_components/**', 
    'views/includes/**', 
    '**/layout.*', 
    '**/_*', 
    '.gitignore', 
    'ship.*conf',
    '.git/*',
    '.DS_Store',
    'Makefile',
    'CONTRIBUTING.md',
    'contentful.coffee'
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: true

  jade:
    pretty: true

  locals:
    marked: marked

  extensions: [
  	contentful(config)
  	css_pipeline(files: 'assets/css/*.styl')

    # temporarily replaced browserify with js_pipeline
    #browserify
    #  files: 'assets/js/main.es6'
    #  sourceMap: true
    #  transform: babelify
    #  out: 'js/main.js'
    js_pipeline(files: 'assets/js/**/*')

    # temporarily disabled image compression during development
    #image_pipeline(files: "assets/img/**", out: 'img', compress: true)
    #image_pipeline(files: "assets/img/**", out: 'img')
  ]



