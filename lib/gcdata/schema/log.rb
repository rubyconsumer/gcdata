module GCData
  module Schema
    class Log
      include HappyMapper
      
      namespace GCData::GEOCACHING_NS
      tag 'log'
      
      attribute :id, Integer
      
      element :date, DateTime
      element :type, String
      element :finder, String, :attributes => { :id => Integer }
      element :text, String, :attributes => { :encoded => Boolean }
    end
  end
end
