module.exports = {
  cssmetrics: {
    dev: {
      src: [
        'test/*.min.css'
      ],
      options: {
        quiet: false,
        maxSelectors: 4096,
        maxFileSize: 10240000
      }
    }
  }
};
