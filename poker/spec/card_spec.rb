require 'card'

RSpec.describe Card do
  
  describe "#initialize" do
    let(:card) { Card.new(:clover, :A) }
    
    it "assigns the card a suit" do
      expect(card.suit).to eq(:clover)
    end
    
    it "assigns the card a value" do
      expect(card.value).to eq(:A)
    end
    
    # context "invalid suit given as argument" do
    #   let(:bad_card) { Card.new(:spear, :A) }
    #   it "raises an ArgumentError if invalid suit" do
    #     expect{Card.new(:spear, :A)}.to raise_error(ArgumentError)
    #   end
    # end
    
  end
end