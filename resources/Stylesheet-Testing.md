Stylesheet-Testing
==================

## Test for Syntax

  * Sass / Compass compile for syntactic errors
  * [CSS Linter](http://csslint.net/)
  * [CSS Linter Grunt Plugin](https://github.com/gruntjs/grunt-contrib-csslint)


## Test for Coding-Standards compliance (CSS & Sass Linters)

  * [Coding-Standard](https://github.com/kwaledesign/Coding-Standard)
  * [SCSS Linter](https://github.com/causes/scss-lint) - (forked and customized to above coding-standard, integrated into grunt plugin)


## Test for Reference (Style Measurement and Comparison, Acceptance Criteria)

Define up-front what is required. As you build, test against what is expected. When what you are building matches what is expected, the test passes.

  * [Hardy - layout testing](http://hardy.io/)
  * [Cactus](https://github.com/winston/cactus)


## Reference Browser and Device Comparison

Compare the old page against the new one in the same browser / device

  * [grunt-browserstack-tunnel](https://npmjs.org/package/grunt-browserstack-tunnel) - Start BrowserStack tunnel.
  * [Connect to BrowserStack's Local Testing Tunnel with Grunt](http://raddevon.com/blog/2013/10/connect-to-browserstacks-local-testing-tunnel-with-grunt/)


  * [Grunt Server - synchronized testing between browsers & devices](http://blog.mattbailey.co/post/50337824984/grunt-synchronised-testing-between-browsers-devices)
  * [grunt-sync](https://npmjs.org/package/grunt-sync) - task to synchronize two directories. similar to grunt-copy but updates only files that have been changes
  * [Browser Swarm Testing](http://www.browserswarm.com/)
  * [Browser-Sync](https://github.com/shakyShane/browser-sync) - Keep multiple browsers & devices in sync when building websites - [more](http://css-tricks.com/cross-browser-css-injection/)
  * [grunt-stye-injector](https://npmjs.org/package/grunt-style-injector) - inject css into mulitple browsers without reloading the page, supports back to IE7
  * [grunt-browserstack](https://npmjs.org/package/grunt-browserstack) - BrowserStack tasks for grunt

Alternatives:
  * [Grunt Server](http://blog.mattbailey.co/post/50337824984/grunt-synchronised-testing-between-browsers-devices) - synchronized testing between browsers & devices


## Test for Visual Regression (Style Guide Driven Development and Frozen DOM)

  * [CSS Critic](http://cburgmer.github.io/csscritic/)
  * [PhantomCSS](https://github.com/Huddle/PhantomCSS)
  * [grunt-phantomcss](https://npmjs.org/package/grunt-phantomcss) - (css regression testing via PhantomCSS)
  * [Wraith](http://responsivenews.co.uk/post/56884056177/wraith)

Alternatives:
[Huxley](https://github.com/facebook/huxley) - Huxley is a test-like system for catching visual regressions in Web applications. It watches you browsetakes screenshotsand tells you when they change.

### Frozen DOM

When your page is done, take a copy of the DOM and measure the styles applied. That becomes your test suite. Run the test by using the same DOM and your new stylesheet. If the styles now are the same as they were, it's a pass.

  * [Grunt CasperJS](https://github.com/ronaldlokers/grunt-casperjs/)
  * [Grunt-Casper](https://npmjs.org/package/grunt-casper)
  * [Grunt-CasperJS](https://npmjs.org/package/grunt-casperjs)
  * [Grunt-CasperJS-Plugin](https://npmjs.org/package/grunt-casperjs-plugin)
  * [grunt-functional](https://npmjs.org/package/grunt-functional) - (CasperJS)
  * [grunt-ghost](https://npmjs.org/package/grunt-ghost) - (CasperJS)
  * [Grunt-pdiff](https://npmjs.org/package/grunt-pdiff) - compare previous web page state by taking screenshot and compare it against old screenshot

---

  * [Grunt PhantomJS](https://github.com/gruntjs/grunt-lib-phantomjs)
  * [Grunt-Phantom](https://github.com/behrang/grunt-phantom)
  * [SlimmerJS](http://slimerjs.org/) - scriptable headless browser based on Geico/FireFox
  * [TrifleJS - Headless IE (port of PhantomJS to IE)](https://github.com/sdesalas/trifleJS)
  * [CSSert](http://thingsinjars.github.io/cssert/) - create key frozen-DOM test cases linked to your styles. If the tests pass after refactoring, you can be sure your design is intact. [more](http://thingsinjars.com/post/438/cssert--like-assert-but-with-css-at-the-front/)

---

  * [Grunt PhantomJS Auto-shot](https://github.com/Ferrari/grunt-autoshot) - Create a quick screenshot for your site which could help for document or testing [NPM](https://npmjs.org/package/grunt-autoshot)
  * [grunt-breakshots](https://npmjs.org/package/grunt-breakshots) - Create screenshots of html files per breakpoint
  * [grunt-snapshot](https://npmjs.org/package/grunt-snapshot) - (generates html snapshots with Phantom.js)
  * [grunt-screenshot-diff](https://npmjs.org/package/grunt-screenshot-diff) - (compare images taken in derrernt test runs and highlight differences)
  * [grunt-screenshot-element](https://npmjs.org/package/grunt-screenshot-element) - (take a screenshot of a DOM element)

---

  * [Testing Responsive Design with PhantomJS](http://daker.me/2013/07/testing-your-responsive-design-with-phantomjs.html)
  * [Grunt-breakshots](https://npmjs.org/package/grunt-breakshots) - Create screenshots of html files per breakpoint
  * [Grunt-local-screenshots](https://npmjs.org/package/grunt-localscreenshots)


## Style Guide & Pattern Library

  * [Dexy](https://dexy.it) - Automated code documentation framework
  * [Archetype](https://github.com/kwaledesign/Archetype) - A flexible, object oriented, Sass architecture for moile-first responsive builds powered by Dexy.


## Unit Testing

  * [True](https://rubygems.org/gems/true) - develop and manage compass/sass libraries with a test-driven approach [project](http://eric.andmeyer.com/true/)
  * [Bootcamp](http://tctcl.github.io/bootcamp) - Jasmine-style BDD testing written in Sass for Sass. [Repo](https://github.com/tctcl/bootcamp). [Grunt plugin](https://npmjs.org/package/bootcamp).
  * [Navigator](https://github.com/team-sass/navigator) - A Ruby testing framework for Sass with Compass. After defining control files with expected output and test files, navigator will compare the two and produce a `.diff` of the failed assertions.


## CSS Analytics & Utilities

  * [grunt-css-metrics](https://npmjs.org/package/grunt-css-metrics) - Grunt task to analyse css files and log simple metrics. [repo](https://github.com/phamann/grunt-css-metrics).
  * Grep / Ack scripts for CSS analytics [example](https://gist.github.com/kwaledesign/3813516)
    * Alternative: [grunt-ucss](https://npmjs.org/package/grunt-ucss) - Find unused and duplicate CSS - [more](https://github.com/operasoftware/ucss)


