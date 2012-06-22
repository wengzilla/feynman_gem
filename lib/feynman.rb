require "feynman/version"
require "faraday"
require "json"

module Testing
  class Client
    attr_accessor :conn, :token, :options

    def initialize(options={})
      options[:url] ||= "http://feynman.dev/api/v1"
      @conn = Faraday.new(:url => options[:url])

      if token = options[:token]
        @token = token
      end
      @options = options

    end

    def create_event(body)
      resp = @conn.post do |req|
        req.url "/events.json"
        req.params['token'] = @token
        req.params['event'] = JSON.dump(body)
        req.headers['Content-Type'] = 'application/json'
      end
      [resp.status, resp.body]
    end
  end
end