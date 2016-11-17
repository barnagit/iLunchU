# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# this does not work
#Rails::Initializer.run do |config|
#  config.gem "authlogic"
#end