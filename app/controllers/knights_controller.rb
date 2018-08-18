class KnightsController < ActionController::Base

  def home
  end

  def game
    @game = Game.new
  end

end
