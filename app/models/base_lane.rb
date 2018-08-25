class Base_Lane
  attr_reader :base, :heros

  def initialize
    @base = nil
    @heros = []
  end

  def add_base(new_base)
    if new_base.is_a?(BaseCard)
      @base = new_base
    else
      raise "Expecting a BaseCard object."
    end
  end

  def remove_base
    card = @base
    @base = nil
    @heros = []
    return card
  end

  def add_hero(new_hero, location)
    if new_hero.is_a?(Hero_Card)
      @heros[location] = new_hero
    else
      raise "Expecting a Hero_Card object."
    end
  end

  def remove_hero(location)
    removed_card = @heros[location]
    @heros[location] = nil
    return removed_card
  end

end
