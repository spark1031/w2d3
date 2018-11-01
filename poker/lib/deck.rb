require_relative 'card'

class Deck
  attr_accessor :cards
  
  SUITS = [:clover, :heart, :diamond, :spade].freeze
  
  VALUES = {
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9,
    ten: 10,
    jack: 11,
    queen: 12,
    king: 13,
    ace: 14
  }.freeze
  
  def initialize
    @cards = []
    make_deck
  end
  
  def shuffle_cards!
    @cards.shuffle!
  end
  
  def draw(n)
    shuffle_cards!
    drawn_cards = []
    n.times { drawn_cards << @cards.pop }
    drawn_cards
  end
  
  
  
  private
  
  def make_deck
    SUITS.each do |suit|
      VALUES.each do |key, value|
        @cards << Card.new(suit, [key, value])
      end
    end      
  end
end