# frozen_string_literal: true

ENV['SINATRA_ENV'] ||= 'development'

require 'bundler/setup'
Bundler.require(:default,ENV['SINATRA_ENV'])

require '../app/controllers/application/application_controller'
require_all 'app'