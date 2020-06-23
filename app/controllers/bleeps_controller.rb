class BleepsController < ApplicationController
  def index
    @bleeps = Bleep.all
  end

  def new
    @bleep = Bleep.new
  end

  def edit
  end

  def show
  end
end
