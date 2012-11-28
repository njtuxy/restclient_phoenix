require_relative 'rest_client_util'

describe "Buy one 10K Hexium item" do
  
  before :all do
    @t = RestClientUtil.new.buy_one_10k_hexium
  end

  it "The transaction should be successufull" do
    @t[:item_status].should eq(true)
  end
  
  it "The item's display name should be still 10K Hexium" do
    @t[:item_name].should eq("10K Hexium")
  end
  
  it "The value for the item should be 10000" do
    @t[:item_value].should eq(10000)
  end

  it "The cost for the item should be 1" do
    @t[:item_cost].should eq(1)
  end

end


describe "Buy one 10K Solite item" do
  
  before :all do
    @t = RestClientUtil.new.buy_one_10k_solite
  end

  it "The transaction should be successufull" do
    @t[:item_status].should eq(true)
  end
  
  it "The item's display name should be still 10K Solite" do
    @t[:item_name].should eq("10K Solite")
  end
  
  it "The value for the item should be 10000" do
    @t[:item_value].should eq(10000)
  end

  it "The cost for the item should be 1" do
    @t[:item_cost].should eq(1)
  end

end

describe "Buy one 250K Hexium item" do
  
  before :all do
    @t = RestClientUtil.new.buy_250k_hexium
  end

  it "The transaction should be successufull" do
    @t[:item_status].should eq(true)
  end
  
  it "The item's display name should be still 250K Hexium" do
    @t[:item_name].should eq("250K Hexium")
  end
  
  it "The value for the item should be 250000" do
    @t[:item_value].should eq(250000)
  end

  it "The cost for the item should be 1" do
    @t[:item_cost].should eq(20)
  end
end


describe "Buy one 250K Solite item" do
  
  before :all do
    @t = RestClientUtil.new.buy_250k_solite
  end

  it "The transaction should be successufull" do
    @t[:item_status].should eq(true)
  end
  
  it "The item's display name should be still 250K Solite" do
    @t[:item_name].should eq("250K Solite")
  end
  
  it "The value for the item should be 250000" do
    @t[:item_value].should eq(250000)
  end

  it "The cost for the item should be 1" do
    @t[:item_cost].should eq(20)
  end

end