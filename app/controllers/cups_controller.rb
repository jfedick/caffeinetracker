class CupsController < ApplicationController
  def new
    @cups = Cups.new
  end
  
  def create
    @cups = Cups.new(params[:cups])
    if @cups.save
      flash[:success] = "Wow"
      redirect_to cups_path
    else
      flash.now[:error] = "Please try again"
      render :action => :new
    end
  end
  
  def index
    @cups = Cups.all
  end

end
