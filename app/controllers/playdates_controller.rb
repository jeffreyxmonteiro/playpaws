class PlaydatesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create] #remove after confirmation

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
    skip_authorization
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @playdate = Playdate.new(playdate_params)
    @playdate.user = current_user
    @playdate.dog = @dog
    if @playdate.save
      redirect_to playdate_path(@playdate)
    else
      render :new
    end
    skip_authorization
  end

  private

  def playdate_params
    params.require(:playdate).permit(:date, :payment)
  end
end
