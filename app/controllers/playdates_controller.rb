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
    authorize(@playdate)
    if @playdate.save
      # remove available dates, move this to confirmation page when complete
      @dog.available_dates.delete(@playdate.date)
      redirect_to profile_user_path
    else
      render :new
    end
  end

  def update
    @playdates = Playdate.find(params[:id])
    @playdates.completed = true
    redirect_to profile_user_path
  end

  def delete
    @playdates = Playdate.find(params[:id])
    @playdates.destroy
    redirect_to profile_user_path
  end

  private

  def playdate_params
    params.require(:playdate).permit(:date, :payment)
  end
end
