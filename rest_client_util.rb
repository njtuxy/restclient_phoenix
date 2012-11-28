require "rubygems"
require "bundler/setup"
require 'rest_client'
require 'json'


class RestClientUtil

  def initialize()
    @phoenix_api_url = "http://phoenix-staging.tunnel.wonderhill.com/api"
    @player_token = "6PKi%2fpU4yaQuY3wzVRQpyg32c0a%2fPEx4VTalETU0GPjJoounJW3TZLTOHVRhbUpDOjPH0SGgs5qAqKERk8znHQ%3d%3d"
    @player_id = "1200"
    @base_id = "1321"     
  end
  
  def get_user_info
    response = RestClient.get("#{@phoenix_api_url}/players/#{@player_id}/?player_id=#{@player_id}&token=#{@player_token}")
    player_info = JSON.load(response.body)["player"]
    puts player_id = player_info["id"]
    puts player_name = player_info.values_at["name"]
    puts player_cash = player_info.values_at["cash"]
    puts player_level = player_info.values_at["level"]
  end
    
  def get_base_all_buildings_info 
    response = RestClient.get("#{@phoenix_api_url}/bases/#{@base_id}/?player_id=#{@player_id}&token=#{@player_token}")
    base_buildings_info = JSON.load(response.body)["buildings"]
  end    
  
  #buy resources
  def buy_item(item_id)
    response = RestClient.post "#{@phoenix_api_url}/bases/#{@base_id}/items/#{item_id}/buy?token=#{@player_token}&player_id=#{@player_id}&_method=POST", {:params => {}}
    item_info = JSON.load(response.body)["item"]
    successInfo = JSON.load(response.body)["success"]
    {:item_name => item_info["display_name"], :item_value => item_info["value"],  :item_cost => item_info["cost"], :item_status => successInfo}
  end
  
  def buy_one_10k_hexium
    buy_item(16)
  end
  
  def buy_one_10k_solite
    buy_item(17)
  end
  
  def buy_250k_solite
    buy_item(23)
  end
  
  def buy_250k_hexium
    buy_item(25)
  end
  
  
  #build a building        
  #Barracks
  #FuelDepot
  #top-left-corner = {-2200, -2200} 
  
  def build_new_buildings(x,y, building_type)
    response = RestClient.post "#{@phoenix_api_url}/bases/#{@base_id}/buildings/?player_id=#{@player_id}&token=#{@player_token}&building%5bx%5d=#{x}&building%5by%5d=#{y}&building%5bbuilding_type%5d=Buildings%3a%3a#{building_type}&instant=true&_method=POST", {:params => {}}
    p response.body
    building_info = JSON.load(response.body)['building']
    {:building_id  => building_info['id'], :building_type => building_info['type']}
  end
  
  def build_new_hexium_refinery(x,y)
    build_new_buildings(x, y, "FuelDepot")
  end
  
  def build_new_barracks(x,y)
    build_new_buildings(x,y,"Barracks")
  end
  
  def get_individual_building_info(building_id)
     response = RestClient.get("#{@phoenix_api_url}/bases/#{@base_id}/buildings/#{building_id}/?player_id=#{@player_id}&token=#{@player_token}")
     puts response.body
  end    
  
  def upgrade_existing_building(building_id)
    response = RestClient.put "#{@phoenix_api_url}/bases/#{@base_id}/buildings/#{building_id}?player_id=#{@player_id}&token=#{@player_token}&_method=PUT&instant=true", {:params => {}}
    building_info = JSON.load(response.body)["building"]
    puts building_info["level"]   
    # puts building_info.values_at["id"]
    # puts building_info.values_at["base_id"]
  end
  
  def destory_building(building_id)
    response = RestClient.delete "#{@phoenix_api_url}/bases/#{@base_id}/buildings/#{building_id}?player_id=#{@player_id}&token=#{@player_token}&_method=DELETE" , {:params => {}}
    p response.body
    JSON.load(response.body)['success']
  end
  
  def move_building(building_id, x, y)
    post = RestClient.put "#{@phoenix_api_url}/api/bases/#{@base_id}/buildings/#{building_id}/move/?player_id=1200&token=6PKi%2fpU4yaQuY3wzVRQpyg32c0a%2fPEx4VTalETU0GPjJoounJW3TZLTOHVRhbUpDOjPH0SGgs5qAqKERk8znHQ%3d%3d&building%5bx%5d=#{x}&building%5by%5d=#{y}&_method=PUT", {:params => {}}
    post.body
  end
          
  def train_new_units
    post = RestClient.post("http://phoenix-staging.tunnel.wonderhill.com/api/bases/1169/units/?player_id=1048&token=oLZk4wxMNcGDkPFui9taExDTNEIrfwXOdIqcNzLgjJ%2b9mpfhjzEHjiIgWPXzWELQ3T0EwrqJaTyZa3zRrl2sMA%3d%3d", {:params => {:unit => {:unit_type => "Units::Rifleman", :quantity => "2"}}})
  end
  
  def upgrade_existing_building
    post = RestClient.put "#{@phoenix_api_url}/bases/#{@base_id}/buildings/124914?player_id=#{@player_id}&token=#{@player_token}&_method=PUT&instant=true", {:params => {}}
    puts post.code
    puts post.body
  end
  
end