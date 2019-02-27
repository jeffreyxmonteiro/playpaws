class OwnersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @owner = Owner.find(params[:id])
    skip_authorization
  end
end
