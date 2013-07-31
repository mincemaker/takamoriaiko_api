class IdolsController < ApplicationController
  def index
    @idols = Idol.all.sort(_id: 1)

    respond_to do |format|
      format.html
      format.json {render :json => @idols}
    end
  end

  def show
    @idol = Idol.find(params[:id].to_i)

    respond_to do |format|
      format.html
      format.json {render :json => @idol}
    end
  end
end
