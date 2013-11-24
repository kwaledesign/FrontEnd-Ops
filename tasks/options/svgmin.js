module.exports = {
  svgmin: {                                       // Task
    options: {                                    // Configuration that will be passed directly to SVGO
      plugins: [{
        removeViewBox: false
      }]
    },
    dist: {                                       // Target
      files: {                                    // Dictionary of files
        'dist/figure.svg': 'app/figure.svg'       // 'destination': 'source'
      }
    }
  }
};
