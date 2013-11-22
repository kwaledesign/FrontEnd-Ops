module.exports = {
  watch: {
    scripts: {
      files: '**/*.js',
      tasks: ['jshint'],
      options: {
        interrupt: true,
        livereload: true,
      },
    },
    compass: {
      files: ['<%%= yeoman.app %>/<%= cssPreDir %>/**/*.{scss,sass}'],
      tasks: ['compass:server']
    }
  }
};
