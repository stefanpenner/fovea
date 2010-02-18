Grider.new do |conf|
  conf.store = Store.new(:namspeace => 'stefapenner')
  conf.watchr.monitored_root = ''
  conf.watchr.script_path = ''
end


@script     = Watchr::Script.new( Pathname.new( File.join(lib,'grid','watchr' ) ))
@handler    = Watchr.handler.new
@controller = Watchr::Controller.new(@script, @handler)

Watchr::Controller.new(@script,@handler,@monitored_root)

