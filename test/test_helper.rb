# frozen_string_literal: true

require 'simplecov'
SimpleCov.start do
  add_filter '/test/'
end

require 'minitest/autorun'
require 'minitest/reporters'

SimpleCov.command_name 'Minitest'
Minitest::Reporters.use! [Minitest::Reporters::ProgressReporter.new(:color => true)]
