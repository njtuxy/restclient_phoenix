require "rubygems"
require "bundler/setup"
require 'rest_client'

# stronghold_staging = "http://apps.facebook.com/stronghold_staging"
# get_city_generals = "/api/cities/:city_id/generals.json"

# @gmail_url = "http://www.gmail.com"
# @kabam_url = "http://www.kabam.com"
# @login = "njtuxy@hotmail.com"
# @password = "5225653"
# 
# 
# @last_respone = HTTParty.get('https://www.kabam.com/edgeworld')
# 
# puts @last_respone.body , @last_respone.code
# # puts @last_respone


module MyCapybaraTest
  class Test
    
    @phoenix_uri = "http://phoenix-staging.tunnel.wonderhill.com"
    
    
    # include HTTParty
    def create_new_user
      # response = RestClient.post("http://phoenix-staging.tunnel.wonderhill.com/api/players/1066/messages", :message => 'one', :)
      # response = RestClient.get("#{@phoenix}/buildings")
          
      # response = RestClient.post("http://phoenix-staging.tunnel.wonderhill.com/api/bases/1169/buildings/124242/move/?player_id=1048&token=oLZk4wxMNcGDkPFui9taExDTNEIrfwXOdIqcNzLgjJ%2b9mpfhjzEHjiIgWPXzWELQ3T0EwrqJaTyZa3zRrl2sMA%3d%3d", {:params => {'building%5bx%5d' =>  1400, 'building%5by%5d' => 600}})
      response = RestClient.get("http://phoenix-staging.tunnel.wonderhill.com/api/bases/1169/buildings/124242/?player_id=1048&token=oLZk4wxMNcGDkPFui9taExDTNEIrfwXOdIqcNzLgjJ%2b9mpfhjzEHjiIgWPXzWELQ3T0EwrqJaTyZa3zRrl2sMA%3d%3d")
      puts response.bodyrequire "rubygems"
      require "bundler/setup"
      require 'rest_client'

      # stronghold_staging = "http://apps.facebook.com/stronghold_staging"
      # get_city_generals = "/api/cities/:city_id/generals.json"

      # @gmail_url = "http://www.gmail.com"
      # @kabam_url = "http://www.kabam.com"
      # @login = "njtuxy@hotmail.com"
      # @password = "5225653"
      # 
      # 
      # @last_respone = HTTParty.get('https://www.kabam.com/edgeworld')
      # 
      # puts @last_respone.body , @last_respone.code
      # # puts @last_respone


      module MyCapybaraTest
        class Test

          @phoenix_uri = "http://phoenix-staging.tunnel.wonderhill.com"


          # include HTTParty
          def create_new_user
            # response = RestClient.post("http://phoenix-staging.tunnel.wonderhill.com/api/players/1066/messages", :message => 'one', :)
            # response = RestClient.get("#{@phoenix}/buildings")

            # response = RestClient.post("http://phoenix-staging.tunnel.wonderhill.com/api/bases/1169/buildings/124242/move/?player_id=1048&token=oLZk4wxMNcGDkPFui9taExDTNEIrfwXOdIqcNzLgjJ%2b9mpfhjzEHjiIgWPXzWELQ3T0EwrqJaTyZa3zRrl2sMA%3d%3d", {:params => {'building%5bx%5d' =>  1400, 'building%5by%5d' => 600}})
            response = RestClient.get("http://phoenix-staging.tunnel.wonderhill.com/api/bases/1169/buildings/124242/?player_id=1048&token=oLZk4wxMNcGDkPFui9taExDTNEIrfwXOdIqcNzLgjJ%2b9mpfhjzEHjiIgWPXzWELQ3T0EwrqJaTyZa3zRrl2sMA%3d%3d")
            puts response.body

          end



        end
      end
      # 
      # 
      t = MyCapybaraTest::Test.new
      t.create_new_user
    end
       
       
       
  end
end
# 
# 
t = MyCapybaraTest::Test.new
t.create_new_user
