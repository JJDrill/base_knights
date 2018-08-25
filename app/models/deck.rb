class Deck
  # attr_reader :deck

  def deal(deck_name)
    case deck_name
    when "bases_deck"
      deck = bases_deck
    when "knights_draw_deck"
      deck = ["Knight 1", "Knight 2", "Knight 3", "Knight 4", "Knight 5",\
         "Knight 6", "Knight 7", "Knight 8", "Knight 9", "Knight 10", "Knight 11"]
      shuffle_many(deck)

    when "knights_boss_deck"
      deck = ["Boss 1", "Boss 2", "Boss 3", "Boss 4", "Boss 5",\
         "Boss 6", "Boss 7", "Boss 8", "Boss 9", "Boss 10"]
      shuffle_many(deck)
      bigBosses = ["Big Boss 1", "Big Boss 2", "Big Boss 3"]
      shuffle_many(bigBosses)
      deck.push(*bigBosses)

    else
      return "Error: Deck not found."
    end

    deck
  end

  private

  def shuffle_many(some_array)
    3.times { some_array.shuffle! }
    some_array
  end

  def bases_deck
    deck = []
    for i in 1..10
      card = BaseCard.new("Base #{i}", "")
      deck.push(card)
    end
    shuffle_many(deck)
    deck
  end
end
