# models/base_card.rb
class Base_Card
  attr_reader :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end
end
