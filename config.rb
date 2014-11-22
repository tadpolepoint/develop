require 'slim'
Slim::Engine.set_default_options :pretty => true, :disable_escape => true, :format => :html5

http_path = "/"
css_dir = "stylesheets"
sass_dir = "sass"
images_dir = "images"
javascripts_dir = "javascripts"

output_style = :expanded

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

line_comments = false

preferred_syntax = :sass
fireapp_build_path = "project-name"
