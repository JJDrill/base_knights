class Game
  attr_reader :user1_deck, :bases_deck, :boss_deck, :test

  def initialize
    @boss_deck = Deck.new("knights_boss_deck")
    @bases_deck = Deck.new("knights_bases")
    @user1_deck = Deck.new("knights_draw_deck")

    @test = @boss_deck.draw
  end

end
