class Card
  attr_reader :suit, :value
  
  def initialize(suit, value)
    @suit, @value = suit, value
  end
  
  def inspect
    "[#{suit}, #{value[0]}]"
  end
  
end
