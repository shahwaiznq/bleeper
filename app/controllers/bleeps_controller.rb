class BleepsController < ApplicationController
  def index
    @bleeps = Bleep.all
  end

  def new
    @bleep = Bleep.new
  end

  def create
    bleep = Bleep.create bleep_params
    @current_user.bleeps << bleep
    redirect_to root_path
  end

  def edit
  end

  def show
  end

  private
  def bleep_params
    params.require(:bleep).permit(:content)
  end

end
