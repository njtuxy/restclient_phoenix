require "rubygems"
require "bundler/setup"
require 'rest_client'


module MyRestClientTest
  class Test

    def query_existing_building
       response = RestClient.get("http://phoenix-staging.tunnel.wonderhill.com/api/bases/1169/buildings/124242/?player_id=1048&token=oLZk4wxMNcGDkPFui9taExDTNEIrfwXOdIqcNzLgjJ%2b9mpfhjzEHjiIgWPXzWELQ3T0EwrqJaTyZa3zRrl2sMA%3d%3d")
       puts response.body
    end
    
    
    
  end
 end


# 
t = MyRestClientTest::Test.new
t.query_existing_building
