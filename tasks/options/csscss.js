module.exports = {
  csscss: {
    options: {
      colorize: false,
      verbose: true,
      outputJson: false,
      minMatch: 2,
      compass: true,
      ignoreProperties: 'padding',
      ignoreSelectors: '.rule-a'
    },
    dist: {
      src: ['css/style.css', 'css/another.css']
    }
  }
};
