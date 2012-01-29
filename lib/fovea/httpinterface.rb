module Fovea
  class HTTPInterface

    def initialize(handler)
      @handler = handler
    end

    def get(filename, remote_server)
      @handler.get(filename, remote_server)
    end

    def post(filename, remote_server)
      @handler.post(filename, remote_server)
    end

    def put(filename, remote_server)
      @handler.put(filename, remote_server)
    end

    def delete(filename, remote_server)
      @handler.remove(filname, remote_server)
    end
  end
end
