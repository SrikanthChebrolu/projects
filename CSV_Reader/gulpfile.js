var gulp = require('gulp'),
cache = require('gulp-cached'); //If cached version identical to current file then it doesn't pass it downstream so this file won't be copied 

gulp.task('default', ['copy-semantic'], function(){

});

gulp.task('copy-semantic', function () {

try {
    return gulp.src('./node_modules/semantic-ui-css/semantic.css')
        .pipe(gulp.dest('./src/client/app/css/'));
    }
    catch (e) {
        return -1;
    }
    return 0;
});