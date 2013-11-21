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

### Vagrant

  * [Vagrant-Drupal](https://github.com/kwaledesign/vagrant-drupal)
  * [Vagrant-Ruby-RVM](https://github.com/kwaledesign/vagrant-ruby-rvm)

===

## Grunt Tasks

[load-grunt-config](https://github.com/firstandthird/load-grunt-config) is implemented to create [more manageable Gruntfiles](http://www.thomasboyt.com/2013/09/01/maintainable-grunt.html). Default grunt tasks are kept intentionally brief to ensure they are executed as quickly as possible.  Additional tasks and sub tasks can be run via their own specific command.

### Default Tasks

  * `grunt` - run all the default grunt tasks

    * Reload assets live in the browser using  [grunt-contrib-livereload](https://github.com/gruntjs/grunt-contrib-livereload) 
    * Compile Compass to CSS using [Grunt-contrib-compass](https://github.com/gruntjs/grunt-contrib-compass)
    * Replace references to non-optimized scripts or stylesheets into a set of HTML files (or any templates/views) using [Grunt-usemin](https://github.com/yeoman/grunt-usemin)
    * Rev static assets using [Grunt-rev](https://github.com/cbas/grunt-rev) with usemin for cache busting.
    * Clear files and folders using [Grunt-contrib-clean](https://github.com/gruntjs/grunt-contrib-clean)

    * Output CLI bar graph of time to complete tasks using [Time-Grunt](https://github.com/sindresorhus/time-grunt)
    * Output duration of each of task in ms using [Grunt-Timer](https://npmjs.org/package/grunt-timer)
    * Display OSX notifications about Grunt tasks to desktop using [Grunt-Notify](https://npmjs.org/package/grunt-notify)
    * Only run Grunt tasks with those source files modificed since last
      successful run using [Grunt-Newer](https://npmjs.org/package/grunt-newer)
    * Add a specified banner comment to processed files using [Grunt-Banner](https://npmjs.org/package/grunt-banner)

===
 
### Utility Tasks
  * `grunt update` - Updates npm package.json dev dependencies using [Grunt-Dev-Update](https://github.com/pgilad/grunt-dev-update)
  * `grunt tasks` - List available Grunt tasks using [Grunt-Available-Tasks](https://github.com/ben-eb/grunt-available-tasks)

===
 
### Testing Tasks 
  * `grunt test` - Run all testing tasks

#### JavaScript Testing Tasks 
  * `grunt test-js` - run only JS testing tasks
   
    * `grunt jshint` - Validate JS files with [JSHint](http://www.jshint.com/) using [Grunt-contrib-jshint](https://github.com/gruntjs/grunt-contrib-jshint)

#### Markup Testing Tasks

   * `grunt test-html` - Validate HTML files with [HTML Inspector](http://philipwalton.com/articles/introducing-html-inspector/) using [HTML inspector](https://github.com/philipwalton/html-inspector)

#### Stylesheet Testing Tasks

  * `grunt test-css` - run all stylesheet testing tasks
   
    * `grunt scsslint` - Lint SCSS files to a specific [coding standard](https://github.com/kwaledesign/Coding-Standards) using [scss lint](https://github.com/kwaledesign/scss-lint) via [Grunt-Shell](https://npmjs.org/package/grunt-shell) 
    * `grunt csslint` - Lints CSS files using [csslint](https://github.com/stubbornella/csslint) via [Grunt css lint](https://github.com/gruntjs/grunt-contrib-csslint)
    * `grunt csscss` - Analyzes CSS files for redundancy and identifies
      duplicate CSS slectors and rule-sets using [Grunt-csscss](https://github.com/peterkeating/grunt-csscss)
    * `grunt uncss` - Identifies and removes unused CSS using [Grunt-uncss](https://github.com/addyosmani/grunt-uncss)

===

#### Style Guide Driven Tests

  * `grunt styleguide` - Re-generate style guide and run all style guide tests

    * `grunt dexy` - Re-generate style guide with [Dexy](https://dexy.it) via [Grunt-Shell](https://npmjs.org/package/grunt-shell)
    * `grunt hardy` - run style guide compliance tests with [Hardy](https://hardy.io) via [Grunt-Shell](https://npmjs.org/package/grunt-shell)
    * `grunt wraith` - run visual regression tests with [Wraith](https://github.com/BBC-News/wraith) via [Grunt-Shell](https://npmjs.org/package/grunt-shell)
 
===

#### CSS Stats
  * `grunt css-metrics` - Analyze CSS files and log simple metrics using [Grunt-css-metrics](https://github.com/phamann/grunt-css-metrics)
  * `grunt css-stats` - Analyze CSS files and log simple stats using [css-stats-ack.sh](https://gist.github.com/kwaledesign/3813516) via [Grunt-Shell](https://npmjs.org/package/grunt-shell)

===
 
#### Browser Testing
 * `grunt browserstack` - Start a BrowserStack tunnel using [grunt-browserstack-tunnel](https://npmjs.org/package/grunt-browserstack-tunnel)
 
===
  
### Build Tasks

  * `grunt build` - run all build tasks
  
    * Replace references to non-optimized scripts or stylesheets into a set of HTML files (or any templates/views) using [Grunt-htmlmin](https://github.com/yeoman/grunt-usemin)
    * Concatenate files using [Grunt-contrib-concat](https://github.com/gruntjs/grunt-contrib-concat)
    * Minify files with [UglifyJS](https://github.com/mishoo/UglifyJS) using [Grunt-contrib-uglify](https://github.com/gruntjs/grunt-contrib-uglify)
    * Compress CSS files using [Grunt-contrib-cssmin](https://github.com/gruntjs/grunt-contrib-cssmin)
    * Minify CSS classes and ID's using [Grunt-class-id-minifier](https://npmjs.org/package/grunt-class-id-minifier)
    * Minify PNG and JPEG images using [Grunt-contrib-imagemin](https://github.com/gruntjs/grunt-contrib-imagemin)
    * Minify SVG using [Grunt-svgmin](https://github.com/sindresorhus/grunt-svgmin)
    * Copy files and folders using [Grunt-contrib-copy](https://github.com/gruntjs/grunt-contrib-copy)
    * Zip and unzip files via a grunt plugin using [Grunt-Zip](https://github.com/twolfson/grunt-zip)
    
    * Run grunt tasks concurrently using [Grunt-concurent](https://github.com/sindresorhus/grunt-concurrent)
    
    * Speed up your build by running commands and tasks in parallel using [Grunt-parallel](https://github.com/iammerrick/grunt-parallel)

===

### Performance Testing Tasks
  * [Grunt-Throttle](https://github.com/tjgq/grunt-throttle) - Performance Testing w/ Bandwidth Throttled
  * [Grunt-Yslow](https://github.com/andyshora/grunt-yslow) - Test web page performance using the YSlow library
  * [Grunt-pagespeed](https://npmjs.org/package/grunt-pagespeed) - plugin for running google page-speed insights
  * [grunt-yslow-test](https://npmjs.org/package/grunt-yslow-test) - runs yslow phantom script

#### Performance Analytics Tasks
  * [Grunt-Bytesize](https://npmjs.org/package/grunt-bytesize) - Grunt plugin to output the file size and gzip size of files
  * [Phantomas](https://github.com/macbre/phantomas) - PhantomJS-based web performance metrics collector

===

## Additional Resources and Tools

Additional resources and alternative modules/tools that didn't fit into my current workflow, but may be useful down the road or are worth keeping an eye on. If I've left something out that you feel would be a value add, please file an issue or PR.

  * [Build Utilities](https://github.com/kwaledesign/FrontEnd-Ops/blob/master/resources/Build-Utilities.md) 
  * [Stylesheet Testing](https://github.com/kwaledesign/FrontEnd-Ops/blob/master/resources/Stylesheet-Testing.md)
  * [Markup Testing](https://github.com/kwaledesign/FrontEnd-Ops/blob/master/resources/HTML-Testing.md)
  * [JavaScript Testing](https://github.com/kwaledesign/FrontEnd-Ops/blob/master/resources/JavaScript-Testing.md)
  * [Deployment](https://github.com/kwaledesign/FrontEnd-Ops/blob/master/resources/Deployment.md)
  * [Package Management](https://github.com/kwaledesign/FrontEnd-Ops/blob/master/resources/Package-Management.md)
  * [Performance](https://github.com/kwaledesign/FrontEnd-Ops/blob/master/resources/Performance.md)

### License
© Kwale Design - Original source code dual licensed under [MIT license](http://www.opensource.org/licenses/mit-license.php) / [GPL2 license](http://www.gnu.org/licenses/gpl-2.0.html). Open-sourced projects used within this project retain their original licenses.

