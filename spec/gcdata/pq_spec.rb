require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "PQ" do
  before do
    test_filename = File.join(File.dirname(__FILE__), '..', 'data', '676364617461.gpx')
    @test_data = File.read(test_filename)
    @pq = GCData::PQ.new(@test_data)
  end
  
  it "should load in data" do
    @pq.data.should_not == nil
    @pq.wpts.count.should == 2
  end
end
