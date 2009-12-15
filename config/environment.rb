RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.time_zone = 'UTC'

  config.gem "authlogic"
  config.gem "giraffesoft-resource_controller", :lib => "resource_controller"
  config.gem "factory_girl"
  config.gem "cucumber", :version => ">=0.5.0"
  config.gem "webrat", :version => ">=0.4.4"
  config.gem "rspec", :lib => false, :version => ">= 1.2.6"
  config.gem "rspec-rails", :lib => false, :version => ">= 1.2.6"
end