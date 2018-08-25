class Player_Hand
  attr_reader :BaseLanes, :drawn_cards, :discard_pile

  def initialize
    @BaseLanes = []
    3.times { @BaseLanes.push(BaseLane.new) }
    @drawn_cards = []
    @discard_pile = []
  end

  def add_drawn_card(new_card)
    if new_card.is_a?(BaseCard) || new_card.is_a?(Hero_Card)
      drawn_cards.push(new_card)
    else
      raise "Expecting a BaseCard or Hero_Card object."
    end
  end

  def move_drawn_base_to_lane(drawn_card_id, lane_id)
    if @drawn_cards[drawn_card_id].nil?
      raise "No card to draw at location #{drawn_card_id}"
    end

    if @drawn_cards[drawn_card_id].is_a?(Hero_Card)
      raise "Expecting a BaseCard object."
    end

    card = @drawn_cards[drawn_card_id]

    if @BaseLanes[lane_id].base != nil
      card_to_discard = @BaseLanes[lane_id].remove_base
      @discard_pile.push(card_to_discard)
    end

    @BaseLanes[lane_id].add_base(card)
    @drawn_cards[drawn_card_id] = nil
  end

end
