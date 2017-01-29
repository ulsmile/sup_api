class PlayersController < ApplicationController

  def index
    @players = Players.all
    puts @players
    render :json => @players
  end
end
