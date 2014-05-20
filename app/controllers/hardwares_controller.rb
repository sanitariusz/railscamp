class HardwaresController < ApplicationController

  def index
    @hardwares = Hardware.all
  end

  def new
    @hardware = Hardware.new
    render :hard_form
  end

  def create
    @hardware = Hardware.new
    save_hardware
  end

  private

  def save_hardware
    if @hardware.save
      @hardwares = Hardware.all
      render :hard_hide_form
    else
      render :hard_form
    end
  end

  def hard_params
    params.require(:hardware).permit(:name)
  end

end
