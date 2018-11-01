require 'towers_of_hanoi'

RSpec.describe "Towers of Hanoi" do 
  let(:game) { TowersOfHanoi.new }
  describe "#initialize" do
    let(:towers) { [[3,2,1], [], []] }
    it "initializes a tower, which is an array of 3 array elements" do
      expect(game.towers.length).to eq(3)
    end
    
    
    
  end
  
end