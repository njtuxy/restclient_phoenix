require_relative 'rest_client_util'


describe "Build New Buildings" do
    
  before :all do
    @t = RestClientUtil.new.build_new_hexium_refinery(-2200, -2200)
  end

  it "The transaction should be successufull" do 
    @t[:building_type].should eq("Buildings::FuelDepot")    
    p @@buildingID = @t[:building_id]
  end
  
end

describe "Delete the newly created buildings" do
    
  it "Should be able to delete the building" do
      @t = RestClientUtil.new.destory_building(@@buildingID)
      @t.should eq(true)
  end  
end





