# Copy-paste from https://github.com/rack/rack-contrib
module Rack
  class JsonRequestParser
    
    POST_BODY = 'rack.input'.freeze
    FORM_INPUT = 'rack.request.form_input'.freeze
    FORM_HASH = 'rack.request.form_hash'.freeze

    APPLICATION_JSON = 'application/json'.freeze

    def initialize(app)
      @app = app
    end

    def call(env)
      if Rack::Request.new(env).media_type == APPLICATION_JSON && (body = env[POST_BODY].read).length != 0
        env[POST_BODY].rewind # somebody might try to read this stream
        env.update(FORM_HASH => JSON.parse(body), FORM_INPUT => env[POST_BODY])
      end
      @app.call(env)
    end
  end
end
