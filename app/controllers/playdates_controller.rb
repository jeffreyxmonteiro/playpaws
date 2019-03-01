class PlaydatesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :update, :destroy] #remove after confirmation

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
      authorize(@dog)
      @dog.save
      redirect_to profile_user_path
    else
      render :new
    end
  end

  def update
    @playdate = Playdate.find(params[:id])
    @playdate.completed = true
    authorize(@playdate)
    @playdate.save
    redirect_to profile_user_path
  end

  def destroy
    @playdate = Playdate.find(params[:id])
    authorize(@playdate)
    @playdate.destroy
    redirect_to profile_user_path
  end

  private

  def playdate_params
    params.require(:playdate).permit(:date, :payment)
  end
end
