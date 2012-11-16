require "rubygems"
require "bundler/setup"
require 'rest_client'


module MyRestClientTest
  class Test

    def get_individual_building_info
       response = RestClient.get("http://phoenix-staging.tunnel.wonderhill.com/api/bases/1169/buildings/124242/?player_id=1048&token=oLZk4wxMNcGDkPFui9taExDTNEIrfwXOdIqcNzLgjJ%2b9mpfhjzEHjiIgWPXzWELQ3T0EwrqJaTyZa3zRrl2sMA%3d%3d")
       puts response.body
    end
              
    def get_base_info
      response = RestClient.get("http://phoenix-staging.tunnel.wonderhill.com/api/bases/1169/?player_id=1048&token=oLZk4wxMNcGDkPFui9taExDTNEIrfwXOdIqcNzLgjJ%2b9mpfhjzEHjiIgWPXzWELQ3T0EwrqJaTyZa3zRrl2sMA%3d%3d")
      puts response.body
    end
    
    def get_user_info
      response = RestClient.get("http://phoenix-staging.tunnel.wonderhill.com/api/players/1048/?player_id=1048&token=oLZk4wxMNcGDkPFui9taExDTNEIrfwXOdIqcNzLgjJ%2b9mpfhjzEHjiIgWPXzWELQ3T0EwrqJaTyZa3zRrl2sMA%3d%3d")
      puts response.body
    end
    
    def buy_items
      post = RestClient.post("http://phoenix-staging.tunnel.wonderhill.com/api/bases/1169/items/1/buy?token=oLZk4wxMNcGDkPFui9taExDTNEIrfwXOdIqcNzLgjJ%2b9mpfhjzEHjiIgWPXzWELQ3T0EwrqJaTyZa3zRrl2sMA%3d%3d", {:params => {'player_id' => '1048', '_method' => 'POST'}})      
    end
    
    def move_building
      post = RestClient.post("http://phoenix-staging.tunnel.wonderhill.com/api/bases/1169/buildings/124235/move/?player_id=1048&token=oLZk4wxMNcGDkPFui9taExDTNEIrfwXOdIqcNzLgjJ%2b9mpfhjzEHjiIgWPXzWELQ3T0EwrqJaTyZa3zRrl2sMA%3d%3d", {:params => {'building%5bx%5d' => '-400', 'building%5by%5d' => '-400', '_method' => 'PUT'}})
    end    
    
    def train_new_units
      post = RestClient.post("http://phoenix-staging.tunnel.wonderhill.com/api/bases/1169/units/?player_id=1048&token=oLZk4wxMNcGDkPFui9taExDTNEIrfwXOdIqcNzLgjJ%2b9mpfhjzEHjiIgWPXzWELQ3T0EwrqJaTyZa3zRrl2sMA%3d%3d", {:params => {:unit => {:unit_type => "Units::Rifleman", :quantity => "2"}}})
    end
    
        
  end
 end


# 
t = MyRestClientTest::Test.new
t.get_user_info
