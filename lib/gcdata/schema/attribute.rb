module GCData
  module Schema
    class Attribute
      include HappyMapper
      
      namespace GCData::GEOCACHING_NS
      tag 'attribute'
      
      attribute :id, Integer
      attribute :inc, Integer
      
      # TODO: Get element data or provide a way of translating ID's into text descriptions.
    end
  end
end
