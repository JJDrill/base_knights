class Game
  attr_reader :current_boss, :user1_hand
  # debug
  attr_reader :boss_pool, :bases_pool, :knights_pool

  def initialize
    @boss_pool = Deck.new("knights_boss_deck")
    @bases_pool = Deck.new("knights_bases")
    @knights_pool = Deck.new("knights_draw_deck")
    @user1_hand = Player_Hand.new

    @current_boss = @boss_pool.draw
  end

  def draw_BaseCard
    return @bases_pool.draw
  end

end
