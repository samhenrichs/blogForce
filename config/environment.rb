# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# set the path in general, might not be necessary
ENV['PATH'] = '/usr/local/bin:' + ENV['PATH']
