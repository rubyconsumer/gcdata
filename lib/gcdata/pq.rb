module GCData
  class PQ
    attr_reader :data, :wpts, :caches
    
    def initialize(data = nil)
      @data = data
      
      if @data
        @wpts = GCData::Schema::Waypoint.parse(data)
        @caches = wpts.map {|w| w.cache }
      end
    end
  end
end
