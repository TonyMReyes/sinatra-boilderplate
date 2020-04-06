# frozen_string_literal: true

require 'sinatra/base'

# Modular Sinatra Application
class Application < Sinatra::Application
  get '/' do
    File.read(File.join('public', 'index.html'))
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
