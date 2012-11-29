require_relative 'rest_client_util'
require_relative "building_helper"
require 'json'

describe "Build New Buildings" do
  
  # Context "Build a new building on one empty spot"
   include Building_Helper
   
   before :all do
     @x = -2200
     @y = -2200
   end
        
   after :each do    
     r = destory_building(get_building_id(@response))
     is_request_successful?(r).should eq(true)
   end
      
   it "Should be albe to build a FuelDepot" do
     p "location: #{@x}, #{@y}"
     @response = build_hexium_refinery_at(@x, @y)
     is_request_successful?(@response).should eq(true)
     get_building_type(@response).should eq("Buildings::FuelDepot")
     p get_building_id(@response)
   end 
   
end







