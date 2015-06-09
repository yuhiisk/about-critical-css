gulp = require 'gulp'
config = require '../config'
critical = require('critical')
$ = (require 'gulp-load-plugins')()
root = require('path').join(__dirname, '../../')
htdocs = root + config.path.htdocs
dist = root + config.path.dist

# Copy our site styles to a site.css file
# for async loading later
gulp.task 'copystyles', ->
    return gulp.src [ htdocs + 'assets/css/style.css']
        .pipe $.rename(
            basename: 'site'
        )
        .pipe gulp.dest(dist + 'css')

gulp.task 'critical', () ->

    critical.generate(
        base: 'dist/'
        src: 'index.html'
        dest: 'assets/css/site.css'
        width: 320
        height: 480
        minify: true
    , (err, output) ->
        console.log 'inline task'
        critical.inline(
            base: 'dist/'
            src: 'index.html'
            dest: 'index-critical.html'
            minify: true
        )
    )

