require 'fovea/watchr_factory'
module Fovea
  class Config
    attr_accessor :store, :watchr

    def initialize
      @watchr = WatchrFactory.new
      yield self
    end

    def run
      WatchrFactory.controller.run
    end
  end
end
