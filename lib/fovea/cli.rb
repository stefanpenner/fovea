module Fovea
  class CLI
    def self.run
      puts App.root.to_s.green

      # fork and have one be the cli and the other be the watchr process
      system( "cd #{App.root+'test'} && watchr #{App.watchrs_path+'all.watchr.rb'}" )
    end
  end
end
