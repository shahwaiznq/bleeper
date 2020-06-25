class BleeptagsController < ApplicationController
  def index
    @bleeps = Bleeptag.all
  end

  def show
    @bleeptag = Bleeptag.find params[:id]
  end
end
