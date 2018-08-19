class Player_Hand
  attr_reader :base_lanes, :drawn_cards, :discard_pile

  def initialize
    @base_lanes = []
    3.times { @base_lanes.push(Base_Lane.new) }
    @drawn_cards = []
    @discard_pile = []
  end

  def add_drawn_card(new_card)
    if new_card.is_a?(Base_Card) || new_card.is_a?(Hero_Card)
      drawn_cards.push(new_card)
    else
      raise "Expecting a Base_Card or Hero_Card object."
    end
  end

end
