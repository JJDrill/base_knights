class KnightsController < ApplicationController

  def home
  end

  def game
    @game = Game.new
  end

end
