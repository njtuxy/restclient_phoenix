require_relative 'rest_client_util'

module Building_Helper

 public
  
  def get_building_id(rest_client_response)
    get_building_property_value(rest_client_response, "id")
  end

  def get_building_type(rest_client_response)
    get_building_property_value(rest_client_response, "type")
  end
  
  def is_request_successful?(rest_client_response)
    JSON.load(rest_client_response)["success"]
  end

  def build_hexium_refinery_at(x, y)
    build_building_at(x, y, "FuelDepot")
  end
  
  def build_barracks_at(x,y)
    build_building_at(x,y,"Barracks")
  end
  
  def destory_building(building_id)
    destory_building_via_restclient(building_id)
  end
  
  
 private
 
  def get_building_property_value(rest_client_response, property_name)
    JSON.load(rest_client_response)['building'][property_name]
  end
  
  def build_building_at(x,y, building_type)
    RestClientUtil.new.build_buildings_at(x,y,building_type)
  end
  
  def destory_building_via_restclient(building_id)
    RestClientUtil.new.destory_building(building_id)
  end 
  
end
