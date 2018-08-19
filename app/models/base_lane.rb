class Base_Lane
  attr_reader :base, :knights

  def initialize
    @base = nil
    @knights = []
  end

  def add_base(new_base)
    @base = new_base
  end

  def remove_base
    @base = nil
    @knights = []
  end

  def add_knight(new_knight, location)
    @knights[location] = new_knight
  end

  def remove_knight(location)
    removed_card = @knights[location]
    @knights[location] = nil
    return removed_card
  end

end
