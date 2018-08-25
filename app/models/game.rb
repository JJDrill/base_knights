class Game
  attr_reader :current_boss, :user1_hand
  # debug
  attr_reader :bosses_deck, :bases_deck, :heros_deck

  def initialize
    deck = Deck.new

    @bases_deck = []
    @bases_deck.push(*deck.deal("bases_deck"))

    @heros_deck = []
    @heros_deck.push(*deck.deal("heros_deck"))
    @user1_hand = Player_Hand.new

    @bosses_deck = []
    @bosses_deck.push(*deck.deal("bosses_deck"))
    @current_boss = @bosses_deck.shift
  end

  def draw_base_card
    return @bases_pool.draw
  end

end
