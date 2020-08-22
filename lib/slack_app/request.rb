require_relative 'configuration'
require 'httparty'

module SlackApp
  module Request
    include Configuration

    def get(method, args)
      HTTParty.get(url(method), options(args))
    end

    def post(method, args)
      HTTParty.post(url(method), options(args))
    end

    def put(method, args)
      HTTParty.put(url(method), options(args))
    end

    def delete(method, args)
      HTTParty.delete(url(method), options(args))
    end

    private

    def url(method)
      Configuration.config.endpoint + method
    end

    def options(args)
      params[:body] = args
      params
    end

    def params 
      @params ||= {
        headers: {
          'Authorization': "Bearer #{Configuration.config.token}",
          'Content-Type': 'application/json'
        },
        body: {}
      }
    end
  end
end
