# frozen_string_literal: true

# “double-pipe equals” is an operator that assigns a value, much like = or our classic assignment operator,
# but will only complete the assignment if the left side of our operation returns false or nil.
ENV['SINATRA_ENV'] ||= 'development'

require 'bundler/setup'
Bundler.require(:default,ENV['SINATRA_ENV'])

# Database setup
# TODO: add ActiveRecord to Gemfile
=begin
ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/development.sqlite"
)
=end

require '../app/controllers/application/application_controller'
require_all 'app'