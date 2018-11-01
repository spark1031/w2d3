require 'hand'

RSpec.describe Hand do
    let(:my_hand) { Hand.new(my_deck) }
  
  describe "#initialize" do
    let(:my_deck) { double("my deck", draw: [1, 2, 3, 4, 5]) }
  
    it "calls #draw on the deck to populate hand" do
      expect(my_deck).to receive(:draw)
      Hand.new(my_deck)
    end
    
    
    it "holds five cards in @held_cards array" do
      expect(my_hand.held_cards.length).to eq(5)
      expect(my_hand.held_cards).to be_an_instance_of(Array)
    end    
  end
  
  describe "#calculate_score" do
    it "returns the score of the hand as an integer" 
    
  end
  
end