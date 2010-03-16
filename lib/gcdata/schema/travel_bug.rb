module GCData
  module Schema
    class TravelBug
      include HappyMapper
      
      namespace GCData::GEOCACHING_NS
      tag 'travelbug'
      
      attribute :id, Integer
      attribute :ref, String
      
      element :name, String
    end
  end
end
