class Game
  attr_reader :current_boss, :user1_hand
  # debug
  attr_reader :boss_pool, :bases_deck, :heros_deck

  def initialize
    deck = Deck.new
    @boss_pool = deck.deal("knights_boss_deck")
    @bases_deck = []
    @bases_deck.push(*deck.deal("bases_deck"))
    @heros_deck = []
    @heros_deck.push(*deck.deal("heros_deck"))
    @user1_hand = Player_Hand.new

    @current_boss = @boss_pool.shift
  end

  def draw_base_card
    return @bases_pool.draw
  end

end
