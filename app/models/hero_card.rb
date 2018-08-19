class Hero_Card
  attr_reader :name, :description, :attack, :defense

  def initialize(name, description, attack, defense)
    @name = name
    @description = description
    @attack = attack
    @defense = defense
  end
end
