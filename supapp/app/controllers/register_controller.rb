class RegisterController < ApplicationController
  def index
    @player = Players.all
    render json: @player
  end
  def show
    @player = Players.find_by(player_id: params[:player_id])
    render :json => @player
  end
  
  def new
    @player = Players.new
  end
  def edit
    @player = Players.find(player_id :params[:player_id])
  end
  def create
    @player = Players.new(params[:players])
    if @player.save
      redirect_to @player
    else
      render :action => 'new'
    end
  end

  def update
      @player = Players.find(params[:player_id])
      @player.attributes = params[:players]
      if @player.save
        redirect_to @player
      else
        render :action => 'edit'
      end
  end
  def destroy
    @player = Players.find(params[:player_id])
    @player.destroy
    redirect_to players_path
  end
end
