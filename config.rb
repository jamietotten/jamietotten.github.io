# Set this to the root of your project when deployed:
http_path = "/assets/"
css_dir = 'css' #css_dir = 'themes/elephantjuice/css'
sass_dir = 'sass' #sass_dir = 'themes/elephantjuice/scss'
js_dir = 'js' #js_dir = 'themes/elephantjuice/javascripts'
img_dir = 'images' #img_dir = 'themes/elephantjuice/images'

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = true


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass

require 'autoprefixer-rails'

on_stylesheet_saved do |file|
  css = File.read(file)
  File.open(file, 'w') do |io|
    io << AutoprefixerRails.process(css)
  end
end
