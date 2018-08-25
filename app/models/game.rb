class Game
  attr_reader :current_boss, :user1_hand
  # debug
  attr_reader :boss_pool, :bases_deck, :knights_pool

  def initialize
    deck = Deck.new
    @bases_deck = []
    @boss_pool = deck.deal("knights_boss_deck")
    @bases_deck.push(*deck.deal("bases_deck"))
    @knights_pool = deck.deal("knights_draw_deck")
    @user1_hand = Player_Hand.new
# byebug
    @current_boss = @boss_pool.shift
  end

  def draw_base_card
    return @bases_pool.draw
  end

end
