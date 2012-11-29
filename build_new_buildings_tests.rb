require_relative 'rest_client_util'


describe "Build New Buildings" do

  before :all do
    @t = RestClientUtil.new.build_new_hexium_refinery(-2200, -1600)
  end

  it "Should be albe to build a FuelDepot at location (-2200, -1600)" do 
    @t[:building_type].should eq("Buildings::FuelDepot")
    p @@buildingID = @t[:building_id]
  end
end

describe "Try to build a building on non-empty spot" do
    
  it "Should return error when user try to build a building on a non-empty spot" do 
    @t = RestClientUtil.new.build_new_hexium_refinery(-2200, -1600)
  end
  
end
  
describe "Delete the newly created buildings" do
    
  it "Should be able to delete the newly created building" do
      @t = RestClientUtil.new.destory_building(@@buildingID)
      @t.should eq(true)
  end
end








