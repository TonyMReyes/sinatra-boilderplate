# config.ru (run with rackup)
require './app/controllers/application/application_controller'
require_relative './config/environment'

=begin
if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end
=end

# Allows the method to be overridden if params[:_method] is set. This is the middleware which supports the PUT
# and DELETE HTTP method types.

# use Rack::MethodOverride
# use OtherController1
# use OtherController2
# use OtherController3

run Application