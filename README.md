Front-End Ops
=============

>[Front-End Ops](http://www.smashingmagazine.com/2013/06/11/front-end-ops/) "is the bridge between an application’s intent and an application’s reality." - Alex Sexton

Included here is an opinionated build process leveraging the [Yeoman](http://yeoman.io/), [Grunt](http://gruntjs.com/), [Bower](http://bower.io/) tool-chain for a particular workflow along with resources and links to additional information. 

Still a work in progress. Feel free to fork and customize to your use-case. Issues and PRs greatly appreciated.

## Features

  * Front-end build processes including versioning, caching, and deployment
  * Serving and hosting front-end resources for development, stagging, and
    production
  * External performance monitoring and tuning
  * Quality control and integration with the quality assurance team
  * Monitor client-side errors and error reporting
  * Application migrations and upgrades
  * Internal and external package management keeping dependencies updated,
    secure, and stable.

## Resources and Tools

  * [CSS/Sass Testing]()
  * [Markup Testing]()
  * [JavaScript Testing]()
  * [Deployment]()
  * [Package Management]()
  * [Performance]()

### Vagrant

  * [Vagrant-Drupal](https://github.com/kwaledesign/vagrant-drupal)
  * [Vagrant-Ruby-RVM](https://github.com/kwaledesign/vagrant-ruby-rvm)

===

## Grunt Tasks
__currently just an outline...Gruntfile.js coming soon.__

[load-grunt-config]() is implemented to create [more manageable Gruntfiles](http://www.thomasboyt.com/2013/09/01/maintainable-grunt.html)

### Default Tasks
 * Livereload
 * clean
 * compass
 * usemin
 
 * grunt-parallel
 * time-grunt
 * grunt-timer
 * grunt-notify
 * grunt-newer
 * grunt-banner

===
 
### Utility Tasks
 * `grunt update` - runs [grunt-dev-update]() to update dependencies
 * `grunt tasks` - runs [grunt-available-tasks]() to list the available Grunt
   tasks

===
 
### Testing Tasks 
 * `grunt test` - run all testing tasks

   * jshint
   * csscss
   * csshint
   * [HTML inspector](https://github.com/philipwalton/html-inspector) - [more info](http://philipwalton.com/articles/introducing-html-inspector/)
 
### JavaScript Testing Tasks 
  * `grunt test-js` - run only JS testing tasks
   
    * `grunt jshint` - run only [Grunt-contrib-jshint](https://github.com/gruntjs/grunt-contrib-jshint)
 
### Stylesheet Testing Tasks
 * `grunt test-css` - run only CSS testing tasks
   
   * csshint
   * scss lint
   * css lint
   * csscss
   * ucss
   * uncss

### CSS Stats
  * `grunt css-metrics` - run [grunt-css-metrics]()
  * `grunt css-stats` - run [css analytics](https://gist.github.com/kwaledesign/3813516) via [grunt-shell]()
 
### Browser Testing
 * `grunt bs` - run [grunt-browserstack-tunnel]()

#### Grunt RWD screen shots
 * [grunt-autoshot](https://github.com/Ferrari/grunt-autoshot)
 
===
 
### Style Guide - regenerate style guide and run all style guide tests
 * `grunt dexy` - re-generate style guide with [Dexy](https://dexy.it) via [grunt-shell]()
 * `grunt hardy` - run style guide compliance test with
   [hardy](https://hardy.io) via [grunt-shell]()
 * `grunt wraith` - run visual regression test with [Wraith]() via [grunt-shell]()
 
===
 
### Performance
 
#### Build
 * htmlmin
 * concat
 * uglify
 * cssmin
 * [Grunt-class-id-minifier](https://npmjs.org/package/grunt-class-id-minifier) - Minify CSS classes and ID's
 * imagemin
 * svgmin
 * copy?
 * rev
 * concurent (compass and jekyll)
 * [Grunt-Zip](https://github.com/twolfson/grunt-zip) - Zip and unzip files via a grunt plugin
 * [grunt-zip](https://npmjs.org/package/grunt-zip) - zip/unzip files via grunt

#### Performance Testing
 * [Grunt-Throttle](https://github.com/tjgq/grunt-throttle) - Performance Testing w/ Bandwidth Throttled
 * [Grunt-Yslow](https://github.com/andyshora/grunt-yslow) - Test web page performance using the YSlow library invoked by a grunt task
 * [Grunt-pagespeed](https://npmjs.org/package/grunt-pagespeed) - plugin for running google page-speed insights
 * [grunt-yslow-test](https://npmjs.org/package/grunt-yslow-test) - runs yslow phantom script from a grunt task
 * [Phantomas](https://github.com/macbre/phantomas) - PhantomJS-based web performance metrics collector

#### Performance Analytics
 * [Grunt-Bytesize](https://npmjs.org/package/grunt-bytesize) - Grunt plugin to output the file size and gzip size of files


