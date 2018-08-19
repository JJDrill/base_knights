class Deck
  attr_reader :deck

  def initialize(deck_name)
    case deck_name
    when "knights_bases"
      @deck = ["Base 1", "Base 2","Base 3","Base 4","Base 5","Base 6","Base 7","Base 8"].shuffle

    when "knights_draw_deck"
      @deck = ["Knight 1", "Knight 2", "Knight 3", "Knight 4", "Knight 5",\
         "Knight 6", "Knight 7", "Knight 8", "Knight 9", "Knight 10", "Knight 11"].shuffle

    when "knights_boss_deck"
      @deck = ["Boss 1", "Boss 2", "Boss 3", "Boss 4", "Boss 5",\
         "Boss 6", "Boss 7", "Boss 8", "Boss 9", "Boss 10"].shuffle
      @bigBosses = ["Big Boss 1", "Big Boss 2", "Big Boss 3"].shuffle
      @deck.push(*@bigBosses)

    else
      return "Error: Deck not found."
    end
  end

  def draw
    @deck.shift
  end

end
