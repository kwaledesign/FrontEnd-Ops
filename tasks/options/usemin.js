module.exports = {

  // UseminPrepare will only scan a single page for usemin blocks. If you
  // use usemin blocks that aren't in index.html, create a usemin manifest
  // page (hackery!) and point this task there.
  useminPrepare: {
    options: {
      dest: '<%%= yeoman.dist %>'
    },
    html: '<%%= yeoman.dist %>/index.html'
  },
  usemin: {
    options: {
        basedir: '<%%= yeoman.dist %>',
        dirs: ['<%%= yeoman.dist %>/**/*']
    },
    html: ['<%%= yeoman.dist %>/**/*.html'],
    css: ['<%%= yeoman.dist %>/<%= cssDir %>/**/*.css']
  },

};
