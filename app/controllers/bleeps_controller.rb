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
    str = bleep_params[:content]
    if str != []
      str.scan(/#\w+/).flatten.each do |tag|
        bleep_tag = Bleeptag.create :title => tag
        bleep_tag.bleeps << bleep
      end
    end
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
