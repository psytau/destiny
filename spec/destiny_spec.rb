require 'destiny'

describe GameSelect do
  
  it "should ask if the player wants a new game and respond appropriately" do
    GameSelect.new("no").outcome.should eq "Loading an existing game. Please choose character to play:"
  end
  
  it "should ask if the player wants a new game and respond appropriately" do
    GameSelect.new("yes").outcome.should eq "Starting a new game, please answer the following questions:"
  end
  
end
