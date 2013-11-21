Front-End Ops
=============

>"Front-End Ops is the bridge between an application’s intent and an application’s reality." - [Alex Sexton](http://www.smashingmagazine.com/2013/06/11/front-end-ops/) 

Included here is an opinionated build process leveraging the [Yeoman](http://yeoman.io/), [Grunt](http://gruntjs.com/), [Bower](http://bower.io/) tool-chain for a particular workflow.

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

## Additional Resources and Tools

Additional resources and alternative modules/tools that didn't fit into my current workflow, but may be useful down the road or are worth keeping an eye on. If I've left something out that you feel would be a value add, please file an issue or PR.

  * [Build Utilities](https://github.com/kwaledesign/FrontEnd-Ops/blob/master/resources/Build-Utilities.md) 
  * [Stylesheet Testing](https://github.com/kwaledesign/FrontEnd-Ops/blob/master/resources/Stylesheet-Testing.md)
  * [Markup Testing](https://github.com/kwaledesign/FrontEnd-Ops/blob/master/resources/HTML-Testing.md)
  * [JavaScript Testing](https://github.com/kwaledesign/FrontEnd-Ops/blob/master/resources/JavaScript-Testing.md)
  * [Deployment](https://github.com/kwaledesign/FrontEnd-Ops/blob/master/resources/Deployment.md)
  * [Package Management](https://github.com/kwaledesign/FrontEnd-Ops/blob/master/resources/Package-Management.md)
  * [Performance](https://github.com/kwaledesign/FrontEnd-Ops/blob/master/resources/Performance.md)

### Vagrant

  * [Vagrant-Drupal](https://github.com/kwaledesign/vagrant-drupal)
  * [Vagrant-Ruby-RVM](https://github.com/kwaledesign/vagrant-ruby-rvm)

===

## Grunt Tasks

[load-grunt-config](https://github.com/firstandthird/load-grunt-config) is implemented to create [more manageable Gruntfiles](http://www.thomasboyt.com/2013/09/01/maintainable-grunt.html). Default grunt tasks are kept intentionally brief to ensure they are executed as quickly as possible.  Additional tasks and sub tasks can be run via their own specific command.

### Default Tasks

  * `grunt` - run all the default grunt tasks

    * [grunt-contrib-livereload](https://github.com/gruntjs/grunt-contrib-livereload) - Reload assets live in the browser.
    * [Grunt-contrib-compass](https://github.com/gruntjs/grunt-contrib-compass) - compile Compass to CSS
    * [Grunt-usemin](https://github.com/yeoman/grunt-usemin) - Replaces references to non-optimized scripts or stylesheets into a set of HTML files (or any templates/views)
  * [Grunt-rev](https://github.com/cbas/grunt-rev) - Asset revving for Grunt.js (use with usemin for cache busting).
  * [Grunt-contrib-clean](https://github.com/gruntjs/grunt-contrib-clean) - Clear files and folders
    * [Time-Grunt](https://github.com/sindresorhus/time-grunt) - CLI bar graph of time to complete task
    * [Grunt-Timer](https://npmjs.org/package/grunt-timer) - times the duration of each of your gurnt tasks and outputs time in ms to console
    * [Grunt-Notify](https://npmjs.org/package/grunt-notify) - automatic desktop notifications for grunt errors warnings using growl etc..
    * [Grunt-Newer](https://npmjs.org/package/grunt-newer) - run grunt tasks with only those source files modified since the last successful run
    * [Grunt-Banner](https://npmjs.org/package/grunt-banner) - Adds a simple banner to files

===
 
### Utility Tasks
  * `grunt update` - runs [Grunt-Dev-Update](https://github.com/pgilad/grunt-dev-update) - updates npm package.json dev dependencies
  * `grunt tasks` - runs [Grunt-Available-Tasks](https://github.com/ben-eb/grunt-available-tasks) - list the available Grunt tasks

===
 
### Testing Tasks 
 * `grunt test` - run all testing tasks

#### JavaScript Testing Tasks 
  * `grunt test-js` - run only JS testing tasks
   
    * `grunt jshint` - run only [Grunt-contrib-jshint](https://github.com/gruntjs/grunt-contrib-jshint)

#### Markup Testing Tasks

   * `grunt test-html` - runs [HTML inspector](https://github.com/philipwalton/html-inspector)

#### Stylesheet Testing Tasks

  * `grunt test-css` - run all stylesheet testing tasks
   
  * `grunt scsslint` - runs only [scss lint](https://github.com/kwaledesign/scss-lint) - lint SCSS files to a specific [coding standard](https://github.com/kwaledesign/Coding-Standards) - via [Grunt-Shell](https://npmjs.org/package/grunt-shell).
  * `grunt csslint` - runs only [Grunt css lint](https://github.com/gruntjs/grunt-contrib-csslint) - Lints CSS files using [csslint](https://github.com/stubbornella/csslint)
  * `grunt csscss` - runs only [Grunt-csscss](https://github.com/peterkeating/grunt-csscss) - A CSS redundancy analyzer that analyzes redundancy that identifies duplicate CSS selectors and rulesets.
  * `grunt uncss` - runs only [Grunt-uncss](https://github.com/addyosmani/grunt-uncss) - identifies and removes unused CSS from your project builds


#### CSS Stats
  * `grunt css-metrics` - run only [Grunt-css-metrics](https://npmjs.org/package/grunt-css-metrics) - analyse css files and log simple metrics. [repo](https://github.com/phamann/grunt-css-metrics).
  * `grunt css-stats` - run [css analytics](https://gist.github.com/kwaledesign/3813516) via [Grunt-Shell](https://npmjs.org/package/grunt-shell)

 
#### Browser Testing
 * `grunt browserstack` - run [grunt-browserstack-tunnel]()

#### Grunt RWD screen shots
 * [grunt-autoshot](https://github.com/Ferrari/grunt-autoshot)
 
===
 
### Style Guide Driven Tests

  * `grunt styleguide` - Re-generate style guide and run all style guide tests

  * `grunt dexy` - re-generate style guide with [Dexy](https://dexy.it) via [Grunt-Shell](https://npmjs.org/package/grunt-shell)
  * `grunt hardy` - run style guide compliance test with
   [Hardy](https://hardy.io) via [Grunt-Shell](https://npmjs.org/package/grunt-shell)
  * `grunt wraith` - run visual regression tests with [Wraith](https://github.com/BBC-News/wraith) via [Grunt-Shell](https://npmjs.org/package/grunt-shell)
 
===
 
### Performance
 
#### Build
  * [Grunt-htmlmin](https://github.com/yeoman/grunt-usemin) - Replaces references to
    non-optimized scripts or stylesheets into a set of HTML files (or any
    templates/views)
  * [Grunt-contrib-concat](https://github.com/gruntjs/grunt-contrib-concat) - Concatenate files.
  * [Grunt-contrib-uglify](https://github.com/gruntjs/grunt-contrib-uglify) - Minify files with UglifyJS
  * [Grunt-contrib-cssmin](https://github.com/gruntjs/grunt-contrib-cssmin) - Compress CSS files.
  * [Grunt-class-id-minifier](https://npmjs.org/package/grunt-class-id-minifier) - Minify CSS classes and ID's
  * [Grunt-contrib-imagemin](https://github.com/gruntjs/grunt-contrib-imagemin) - Minify PNG and JPEG images
  * [Grunt-svgmin](https://github.com/sindresorhus/grunt-svgmin) - Minify SVG
  * [Grunt-contrib-copy](https://github.com/gruntjs/grunt-contrib-copy) - Copy files and folders
  * [Grunt-concurent](https://github.com/sindresorhus/grunt-concurrent) - Run grunt tasks concurrently
  * [Grunt-parallel](https://github.com/iammerrick/grunt-parallel) - Speed up your build by running commands and tasks in parallel
 

  * [Grunt-Zip](https://github.com/twolfson/grunt-zip) - Zip and unzip files via a grunt plugin
  * [grunt-zip](https://npmjs.org/package/grunt-zip) - zip/unzip files via grunt

#### Performance Testing
  * [Grunt-Throttle](https://github.com/tjgq/grunt-throttle) - Performance Testing w/ Bandwidth Throttled
  * [Grunt-Yslow](https://github.com/andyshora/grunt-yslow) - Test web page performance using the YSlow library
  * [Grunt-pagespeed](https://npmjs.org/package/grunt-pagespeed) - plugin for running google page-speed insights
  * [grunt-yslow-test](https://npmjs.org/package/grunt-yslow-test) - runs yslow phantom script

#### Performance Analytics
  * [Grunt-Bytesize](https://npmjs.org/package/grunt-bytesize) - Grunt plugin to output the file size and gzip size of files
  * [Phantomas](https://github.com/macbre/phantomas) - PhantomJS-based web performance metrics collector


