class MastersController < ApplicationController
  def index
#    @masters = Masters.all

    sample_json = {"key":"value", "array": ["aa","aas"]}
    puts Masters
    puts Players

    render :json => Players.all
  end

  def insert
  end
end
