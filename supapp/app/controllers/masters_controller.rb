class MastersController < ApplicationController
  def index
#    @masters = Masters.all

    sample_json = {"key":"value", "array": ["aa","aas"]}

    @players = Players.all
    puts @players
    render :json => @players
  end

  def insert
  end
end
