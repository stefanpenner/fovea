module Fovea
  class CurlHandler

    def get(filename, remote_server)
      url = remote_server + '/' + filename
      system("curl " + url)
    end

  end
end
