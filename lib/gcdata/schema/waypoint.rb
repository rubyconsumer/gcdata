module GCData
  module Schema
    class Waypoint
      include HappyMapper
      
      tag 'wpt'
      
      attribute :lat, Float
      attribute :lon, Float
      
      element :time, DateTime
      element :name, String
      element :desc, String
      element :url, String
      element :urlname, String
      element :sym, String
      element :type, String
      has_one :cache, GCData::Schema::Cache
    end
  end
end
