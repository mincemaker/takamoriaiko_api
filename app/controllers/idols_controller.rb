class IdolsController < ApplicationController
  def index
    @idols = Idol.all.sort(_id: 1)
  end

  def show
    @idol = Idol.find(params[:id].to_i)
  end
end
