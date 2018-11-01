require 'deck'

RSpec.describe Deck do
  let(:new_deck) { Deck.new }
  
  describe "#initialize" do
    it "has 52 cards" do
      expect(new_deck.cards.length).to eq(52)
    end
    
    it "only contains the valid suits" do
      suits = []
      new_deck.cards.each { |card| suits << card.suit }
      all_suits = suits.uniq
      expect(all_suits.length).to eq(4)
    end
    
  end
  
  describe "#shuffle_cards!" do
    it "shuffles the cards" do
      before_shuffle = new_deck.cards.dup
      new_deck.shuffle_cards!
      after_shuffle = new_deck.cards
      expect(before_shuffle).to_not eq(after_shuffle)
    end
  end
  
  describe "#draw" do
  
    it "returns an array" do
      expect(new_deck.draw(1)).to be_an_instance_of(Array)
    end
    
    it "returns number of specified card objects" do
      expect(new_deck.draw(3).length).to eq(3)
    end
    
    it "decreases the size of the deck by n" do
      new_deck.draw(3)
      expect(new_deck.cards.length).to eq(49)
    end
  end
  
end