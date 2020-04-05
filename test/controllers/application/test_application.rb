# frozen_string_literal: true

require './test/test_helper'
require 'rack/test'
require './app/controllers/application/application_controller'

class ApplicationTest < MiniTest::Test
  include Rack::Test::Methods
  def app
    Application
  end
  def test_get_index_is_ok
    get '/'
    assert last_response.ok?
  end
end