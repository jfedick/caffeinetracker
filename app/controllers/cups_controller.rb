class CupsController < ApplicationController

  def new
    @Cups = Cups.new
  end

end
