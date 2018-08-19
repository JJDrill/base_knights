class Base_Lane
  attr_reader :base, :heros

  def initialize
    @base = nil
    @heros = []
  end

  def add_base(new_base)
    if new_base.is_a?(Base_Card)
      @base = new_base
    else
      raise "Expecting a Base_Card object."
    end
  end

  def remove_base
    @base = nil
    @heros = []
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
