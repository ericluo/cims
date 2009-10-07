# Be sure to restart your server when you modify this file

# Uncomment below to force Rails into production mode when
# you don't control web/app server and can't set it the proper way
# ENV['RAILS_ENV'] ||= 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.3' unless defined? RAILS_GEM_VERSION
# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  # Specify gems that this application depends on. 
  # They can then be installed with "rake gems:install" on new installations.
  config.gem 'haml'
  config.gem 'chriseppstein-compass', :lib => 'compass'
  config.gem 'qoobaa-sqlite3-ruby', :lib => 'sqlite3'
  config.gem 'justinfrench-formtastic', :lib => 'formtastic'
  config.gem 'thoughtbot-clearance', :lib => 'clearance'

  # config.middleware.insert_before "ActionController::ParamsParser", "EncodingHack"
  config.middleware.insert_before "Rack::Lock", "EncodingHack"
  config.time_zone = 'Beijing'

  # The internationalization framework can be changed to have another default locale (standard is :en) or more load paths.
  # All files from config/locales/*.rb,yml are added automatically.
  # config.i18n.load_path << Dir[File.join(RAILS_ROOT, 'my', 'locales', '*.{rb,yml}')]
  config.i18n.default_locale = :zh
  config.action_controller.session = {
    :session_key => '_cims_session',
    :secret      => '99e87ffff6bd7e8635429ad1668d03eacd2637d1ff60858b69f6c9a831a42315986b0670233d8c219c03d61e90495de1dd14087fab200df47181c455aea34745'
  }
end

Haml::Template.options[:encoding] = "utf-8"
