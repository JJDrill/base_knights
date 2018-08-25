class Deck
  # attr_reader :deck

  def deal(deck_name)
    case deck_name
    when "bases_deck"
      deck = bases_deck
    when "heros_deck"
      deck = heros_deck
    when "bosses_deck"
      deck = bosses_deck
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
      card = Base_Card.new("Base #{i}", "")
      deck.push(card)
    end
    shuffle_many(deck)
    deck
  end

  def heros_deck
    deck = []
    for i in 1..20
      card = Hero_Card.new("Hero #{i}", "", 1, 1)
      deck.push(card)
    end
    shuffle_many(deck)
    deck
  end

  def bosses_deck
    deck = []
    for i in 1..10
      card = Hero_Card.new("Boss #{i}", "", 1, 1)
      deck.push(card)
    end
    shuffle_many(deck)

    big_bosses = []
    for i in 1..3
      card = Hero_Card.new("Big Boss #{i}", "", 1, 1)
      big_bosses.push(card)
    end
    shuffle_many(big_bosses)
    deck.push(*big_bosses)
    deck
  end

end
