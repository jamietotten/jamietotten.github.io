# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## Uncomment and set this to only include directories you want to watch
# directories %w(app lib config test spec feature)

## Uncomment to clear the screen before every task
# clearing :on

## Guard internally checks for changes in the Guardfile and exits.
## If you want Guard to automatically start up again, run guard in a
## shell loop, e.g.:
##
##  $ while bundle exec guard; do echo "Restarting Guard..."; done
##
## Note: if you are using the `directories` clause above and you are not
## watching the project directory ('.'), the you will want to move the Guardfile
## to a watched dir and symlink it back, e.g.
#
#  $ mkdir config
#  $ mv Guardfile config/
#  $ ln -s config/Guardfile .
#
# and, you'll have to watch "config/Guardfile" instead of "Guardfile"

# Guard::Compass
#
# You don't need to configure watchers for guard 'compass' declaration as they generated
# from your Compass configuration file. You might need to define the Compass working directory
# and point to the configuration file depending of your project structure.
#
# Available options:
#
# * working_directory: Define the Compass working directory, relative to the Guardfile directory
# * configuration_file: Path to the Compass configuration file, relative to :project_path
#
# Like usual, the Compass configuration path are relative to the :project_path

# guard 'compass', project_path: 'not_current_dir', configuration_file: 'path/to/my/compass_config.rb'
#guard :compass

#guard 'livereload' do
#  watch(%r{app/views/.+\.(erb|haml|slim)$})
#  watch(%r{app/helpers/.+\.rb})
#  watch(%r{public/.+\.(css|js|html)})
#  watch(%r{config/locales/.+\.yml})
#  # Rails Assets Pipeline
#  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html|png|jpg))).*}) { |m| "/assets/#{m[3]}" }
#end


group :development do
  guard 'livereload' do
    watch(%r{.+\.(css|html|js|php|ss)})
  end
  guard :compass, compile_on_start:true do
    watch(%r{(.*)\.s[ac]ss$})
  end
end
