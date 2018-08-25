# models/BaseLane.rb
class BaseLane
  attr_reader :base, :heros

  def initialize
    @base = nil
    @heros = []
  end

  def add_base(new_base)
    raise 'Expecting a Base_Card.' unless new_base.is_a?(Base_Card)
    @base = new_base
  end

  def remove_base
    card = @base
    @base = nil
    @heros = []
    card
  end

  def add_hero(new_hero, location)
    raise 'Expecting a HeroCard.' unless new_hero.is_a?(Hero_Card)
    @heros[location] = new_hero
  end

  def remove_hero(location)
    removed_card = @heros[location]
    @heros[location] = nil
    removed_card
  end
end
