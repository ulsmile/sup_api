class PlayersController < ApplicationController

  def index
    @players = Players.all
    puts @players
    render :json => @players
  end
  def show
    @players = Players.find_by(player_id: params[:player_id])
    puts @players
    render :json => @players
  end
  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
