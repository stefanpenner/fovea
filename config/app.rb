require 'pathname'
module Fovea
  class App
    def self.initialize!
      @root = Pathname.new(File.expand_path('../../',__FILE__))
    end
    def self.root
      @root
    end
    def self.watchrs_path
      @root + 'watchrs'
    end
  end
end

$:.unshift File.expand_path('../../lib/',__FILE__)
require 'fovea'
