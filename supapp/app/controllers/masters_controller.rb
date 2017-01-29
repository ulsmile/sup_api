class MastersController < ApplicationController
  def index
    @masters = Masters.all

    render :json => @masters
  end

  def insert
  end
end
