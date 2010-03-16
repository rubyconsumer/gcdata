module GCData
  module Schema
    class Cache
      include HappyMapper

      namespace GCData::GEOCACHING_NS
      tag 'cache'
      
      attribute :id, Integer
      attribute :available, Boolean
      attribute :archived, Boolean
      
      element :name, String
      element :placed_by, String
      element :owner, String, :attributes => { :id => Integer }
      element :type, String
      element :container, String
      has_many :attributes, GCData::Schema::Attribute if GCData::GEOCACHING_NS == GCData::GROUNDSPEAK_V1_0_1
      element :difficulty, Float
      element :terrain, Float
      element :country, String
      element :state, String
      element :short_description, String, :attributes => { :html => Boolean }
      element :long_description, String, :attributes => { :html => Boolean }
      element :encoded_hints, String
      has_many :logs, GCData::Schema::Log
      has_many :travelbugs, GCData::Schema::TravelBug
    end
  end
end
