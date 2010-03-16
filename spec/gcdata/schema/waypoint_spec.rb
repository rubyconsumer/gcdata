require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "Waypoint" do
  before do
    test_filename = File.join(File.dirname(__FILE__), '..', '..', 'data', '676364617461.gpx')
    test_data = File.read(test_filename)
    pq = GCData::PQ.new(test_data)
    @wpts = pq.wpts
  end
  
  it "should load in data" do
    @wpts.count.should == 2
  end
  
  context "Waypoint" do
    before do
      @wpt = @wpts[0]
    end
    
    it "should have a lat and long" do
      @wpt.lat.should == 42.363233
      @wpt.lon.should == -83.469917
    end
    
    it "should have a time" do
      @wpt.time.to_s.should == "2007-09-29T07:00:00+00:00"
    end
    
    it "should have a name" do
      @wpt.name.should == "GC16A75"
    end
    
    it "should have a cache" do
      @wpt.cache.is_a?(GCData::Schema::Cache).should be_true
    end
  end
end
