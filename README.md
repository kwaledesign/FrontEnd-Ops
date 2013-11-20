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

[load-grunt-config](https://github.com/firstandthird/load-grunt-config) is implemented to create [more manageable Gruntfiles](http://www.thomasboyt.com/2013/09/01/maintainable-grunt.html). Default grunt tasks are kept intentionally brief to ensure they are executed as quickly as possible.  Additional tasks and sub tasks can be run via their own specific command.

### Default Tasks

  * `grunt` - run all the default grunt tasks

    * [grunt-contrib-livereload](https://github.com/gruntjs/grunt-contrib-livereload) - Reload assets live in the browser.
    * [Grunt-contrib-compass](https://github.com/gruntjs/grunt-contrib-compass) - compile Compass to CSS
    * [Grunt-usemin](https://github.com/yeoman/grunt-usemin) - Replaces references to non-optimized scripts or stylesheets into a set of HTML files (or any templates/views)
    * [Grunt-contrib-clean](https://github.com/gruntjs/grunt-contrib-clean) - Clear files and folders
    * [Grunt-parallel](https://github.com/iammerrick/grunt-parallel) - Speed up your build by running commands and tasks in parallel
    * [Time-Grunt](https://github.com/sindresorhus/time-grunt) - CLI bar graph of time to complete task
    * [Grunt-Timer](https://npmjs.org/package/grunt-timer) - times the duration of each of your gurnt tasks and outputs time in ms to console
    * [Grunt-Notify](https://npmjs.org/package/grunt-notify) - automatic desktop notifications for grunt errors warnings using growl etc..
    * [Grunt-Newer](https://npmjs.org/package/grunt-newer) - run grunt tasks with only those source files modified since the last successful run
    * [Grunt-Banner](https://npmjs.org/package/grunt-banner) - Adds a simple banner to files

===
 
### Utility Tasks
  * `grunt update` - runs [Grunt-Dev-Update](https://github.com/pgilad/grunt-dev-update) - Automatically update your npm package.json dev Dependencies
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
  * `grunt css-metrics` - run only [Grunt-css-metrics](https://npmjs.org/package/grunt-css-metrics) - Grunt task to analyse css files and log simple metrics. [repo](https://github.com/phamann/grunt-css-metrics).
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

#### Performance Analytics
  * [Grunt-Bytesize](https://npmjs.org/package/grunt-bytesize) - Grunt plugin to output the file size and gzip size of files
  * [Phantomas](https://github.com/macbre/phantomas) - PhantomJS-based web performance metrics collector


