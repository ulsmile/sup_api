class MastersController < ApplicationController
  def index
#    @masters = Master.all
    personal = {'name' => 'YAmada','old' => 28}
    render json:  personal
  end

  def insert
  end
end
