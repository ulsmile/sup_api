class RegisterController < ApplicationController
  def show

    @player = Players.find_by(player_id: params[:player_id])
    h = @player
    h.delete(:gender)

    render :json => h
  end
  
  def create
  end

  def update
  end
end
