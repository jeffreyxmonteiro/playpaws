class PlaydatesController < ApplicationController
  def index
    @current_user = current_user
    @playdates = @current_user.playdates
  end

  def show
    @playdates = Playdate.find(params[:id])
  end

  def new
    @dog = Dog.find(params[:dog_id])
    @playdate = Playdate.new
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @playdate = Playdate.new(playdate_params)
    @playdate.user = current_user
    @playdate.dog = @dog
    if playdate.save
      redirect_to playdate_path(@playdate)
    else
      render :new
    end
  end

  private

  def playdate_params
    params.require(:playdate).permit(:date, :payment, :completed)
  end
end
