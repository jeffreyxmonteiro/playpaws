class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    # @dogs = Dog.all
    @dogs = policy_scope(Dog)
    skip_authorization
  end

  def show
    @dog = Dog.find(params[:id])
     # DogPolicy.new(current_user, @dog).show?
    skip_authorization
  end

  def create
    authorize(@dog)
  end

  def new
    @owner = Owner.find(params[:owner_id])
    @dog = Dog.new
  end

  def create
    @owner = Owner.find(params[:owner_id])
    @dog = Dog.new(dog_params)
    @dog.owner = @owner
    if @dog.save
      redirect_to dog_path(@dog)
    else
      render :new
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :description, :breed, :image_url, :available_dates)
  end
end
