class PlayerController < ApplicationController

  def index
    @players = Player.all
    render json: @players
  end
  def show
    @players = Player.find_by(player_id: params[:player_id])
    render json: @players
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
