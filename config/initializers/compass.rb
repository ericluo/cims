require 'compass'
# If you have any compass plugins, require them here.
# Compass.configuration.parse(File.join(RAILS_ROOT, "config", "compass.config"))

Compass.configuration do |config|
  config.project_path = RAILS_ROOT
  config.sass_dir = "app/stylesheets"
  config.css_dir = "public/stylesheets/compiled"
end
Compass.configuration.environment = RAILS_ENV.to_sym
Compass.configure_sass_plugin!
