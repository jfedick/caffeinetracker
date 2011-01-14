class CupsController < ApplicationController
  def new
    @cups = Cups.new
  end
  
  def create
    @cups = Cups.new(params[:cups])
    if @cups.save
      flash[:success] = "Thanks!"
      redirect_to cups_path
    else
      flash.now[:error] = "Please try again"
      render :action => :new
    end
  end
  
  def index
    @cups = Cups.all
    @average = Cups.average('number')
  end

end
