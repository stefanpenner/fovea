require 'rubygems'
require 'typhoeus'

module Fovea
  class TyphoeusHandler


    def flush
      @hydra.run
    end


    
    def initialize
      @hydra = Typhoeus::Hydra.new
      def @hydra.<<(request)
        queue request
      end
    end

    
    def get(filename, remote_server)

      #must be implemented
      url = build_url(filename, remote_server, :get)
      @hydra << Typhoeus::Request.new(url)
    end

    def put(filename, remote_server)
      body = File.read(filename)
      url = build_url(filename, remote_server, :put)
      @hydra << Typhoeus::Request.new(url, :body=>body)
    end
  end
end

