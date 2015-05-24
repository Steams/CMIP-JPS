var gulp = require('gulp');
var inject = require('gulp-inject');
var stylus = require('gulp-stylus');
var jade = require('gulp-jade');
// var coffee = require('gulp-coffee');
var coffee =  require('gulp-coffee');
var server = require('gulp-server-livereload');
var changed = require('gulp-changed');
var newer = require('gulp-newer');

gulp.task('webserver', function() {
  gulp.src('.')
    .pipe(server({
      livereload: true,
      directoryListing: true,
      open: true
    }));
});

gulp.task('default',function(){
});

gulp.task('compileCoffee',function(){
  return gulp.src('src/**/*.coffee')
  // .pipe(changed('src'))
  .pipe(coffee())
  .pipe(gulp.dest('app'));
});

gulp.task('compileJade',function(){
  gulp.src('src/partials/*.jade')
   .pipe(jade())
   .pipe(gulp.dest('app/partials'));
});

gulp.task('compileStylus',function(){
  gulp.src('src/**/*.styl')
  // .pipe(changed('src'))
   .pipe(stylus())
   .pipe(gulp.dest('app'));
});


gulp.task('index', function () {
  var target = gulp.src('./app/index.html');
  // It's not necessary to read the files (will speed up things), we're only after their paths:
  var sources = gulp.src(['./app/**/*.js', './app/**/*.css'], {read: false});

  return target.pipe(inject(sources))
    .pipe(gulp.dest('./app'));
});

var coffeeWatcher = gulp.watch('src/**/*.coffee',['compileCoffee']);

var jsWatcher = gulp.watch('app/**/*.js',['index']);

jsWatcher.on('change',function(event){
  console.log('Injecting changed Javascript');
});
coffeeWatcher.on('change',function(event){
    console.log('Scripting changed');
});

var stylusWatcher = gulp.watch('src/**/*.styl',['compileStylus']);

stylusWatcher.on('change',function(event){
    console.log('Stylesheet changed');
});

var jadeWatcher = gulp.watch('src/partials/*.jade',['compileJade']);

jadeWatcher.on('change',function(event){
    console.log('Markup changed');
});
