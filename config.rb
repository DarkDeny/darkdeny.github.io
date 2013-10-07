require 'sass-globbing'
require 'yaml'

yml = YAML.load(IO.read('_config.yml'))
public_dir      = yml["destination"]    # compiled site directory

# Require any additional compass plugins here.
project_type = :stand_alone

# Publishing paths
http_path = "/"
http_images_path = "/images"
http_generated_images_path = "/images"
http_fonts_path = "/fonts"
css_dir = File.join(public_dir,"stylesheets")

# Local development paths
sass_dir = "sass"
images_dir = "source/images"
fonts_dir = "source/fonts"

line_comments = false
output_style = :compressed
