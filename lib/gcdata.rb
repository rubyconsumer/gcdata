$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'happymapper'

module GCData
  VERSION = '0.0.1'
  GROUNDSPEAK_V1_0_0 = 'http://www.groundspeak.com/cache/1/0'
  GROUNDSPEAK_V1_0_1 = 'http://www.groundspeak.com/cache/1/0/1'
  GEOCACHING_NS = GROUNDSPEAK_V1_0_1
  
  require 'gcdata/pq'
  require 'gcdata/schema'
end
