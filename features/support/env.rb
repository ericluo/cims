# Sets up the Rails environment for Cucumber
ENV["RAILS_ENV"] ||= "test"

require 'spork'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However, 
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.
  
  require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')
  require 'cucumber/rails/world'
# require 'cucumber/formatter/unicode' # Comment out this line if you don't want Cucumber Unicode support
# Cucumber::Rails.use_transactional_fixtures
# Fixtures.reset_cache  
# fixtures_folder = File.join(RAILS_ROOT, 'spec', 'fixtures')
# fixtures = Dir[File.join(fixtures_folder, '*.yml')].map {|f| File.basename(f, '.yml') }
# Fixtures.create_fixtures(fixtures_folder, fixtures)

  require 'webrat'
  Webrat.configure do |config|
    config.mode = :rails
  end

  require 'cucumber/rails/rspec'
  require 'webrat/core/matchers'
end

Spork.each_run do
  # This code will be run each time you run your specs.
  
end

# --- Instructions ---
# - Sort through your spec_helper file. Place as much environment loading 
#   code that you don't normally modify during development in the 
#   Spork.prefork block.
# - Place the rest under Spork.each_run block
# - Any code that is left outside of the blocks will be ran during preforking
#   and during each_run!
# - These instructions should self-destruct in 10 seconds.  If they don't,
#   feel free to delete them.
#




