class Hand
  attr_reader :base_lanes, :drawn_cards, :discard_pile

  def initialize
    @base_lanes = []
    3.times { @base_lanes.push(Base_Lane.new) }
    @drawn_cards = []
    @discard_pile = []
  end

end
