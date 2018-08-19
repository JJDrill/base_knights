class Base_Lane
  attr_reader :base, :knights

  def initialize
    @base = nil
    @knights = []
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
    @knights = []
  end

  def add_knight(new_knight, location)
    if new_knight.is_a?(Hero_Card)
      @knights[location] = new_knight
    else
      raise "Expecing a Hero_Card object."
    end
  end

  def remove_knight(location)
    removed_card = @knights[location]
    @knights[location] = nil
    return removed_card
  end

end
