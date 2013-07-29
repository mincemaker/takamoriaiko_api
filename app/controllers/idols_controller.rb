class IdolsController < ApplicationController
  def index
    @idols = Idol.all
  end

  def show
    @idol = Idol.find(params[:id].to_i)
  end
end
