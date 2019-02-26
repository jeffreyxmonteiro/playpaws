class DogsController < ApplicationController
  def index
    # @dogs = Dog.all
    @dogs = policy_scope(Dog)
  end

  def show
    @dog = Dog.find(params[:id])
     # DogPolicy.new(current_user, @dog).show?
  end

  def create
    authorize(@dog)
  end
end
