class UsersController < ApplicationController
  def new
  end

  def index
  end

  def show
    if user_signed_in?
      @user = User.find(params[:id])
    end
  end

  def edit
  end
end
