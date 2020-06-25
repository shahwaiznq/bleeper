class BleeptagsController < ApplicationController
  def index
    @bleeptags = Bleeptag.all
  end

  def show
    @bleeptag = Bleeptag.find params[:id]
  end
end
