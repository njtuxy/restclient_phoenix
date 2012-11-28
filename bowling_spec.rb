# require './bowling'
require_relative 'bowling'

describe Bowling, "#score"do
  it "should returns 0 for all gutter game" do
    bowling = Bowling.new
    20.times {bowling.hit(0)}
    bowling.score.should eq(1)
  end
    
end