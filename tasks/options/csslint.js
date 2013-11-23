module.exports = {
  csslint: {
    options: {
      csslintrc: '.csslintrc'
    },
    strict: {
      options: {
        import: 2
      },
      src: ['path/to/**/*.css']
    },
    lax: {
      options: {
        import: false
      },
      src: ['path/to/**/*.css']
    }
  }
};
