class BleepsController < ApplicationController
  def index
    @bleeps = Bleep.all
  end

  def new
    @bleep = Bleep.new
  end

  def create
    bleep = Bleep.create bleep_params
    bleep.user_id = @current_user.id
    str = bleep_params[:content]
    if str != []
      str.scan(/#\w+/).flatten.each do |tag|
        if Bleeptag.find_by :title => tag
          bleep_tag = Bleeptag.find_by :title => tag
          bleep_tag.bleeps << bleep
        else
          bleep_tag = Bleeptag.create :title => tag
          bleep_tag.bleeps << bleep
        end
      end
    end
    @current_user.bleeps << bleep
    redirect_to root_path
  end

  def edit
    @bleep = Bleep.find params[:id]
  end

  def update
    bleep = Bleep.find params[:id]
    if bleep.user_id = @current_user.id
      bleep.update bleep_params
    end
    redirect_to root_path
  end

  def destroy
    bleep = Bleep.find params[:id]
    bleep.destroy
    redirect_to root_path
  end

  private
  def bleep_params
    params.require(:bleep).permit(:content)
  end

end
