require_relative 'deck'

class Hand
  attr_reader :held_cards

  def initialize(deck)
    @deck = deck
    @held_cards = deck.draw(5)
  end

end